cls

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# -----------------------------
# Read Environment Variables
# -----------------------------

$baseUrl  = $env:baseEdFiURL
$tokenUrl = $env:tokenEdFi
$clientId = $env:key
$clientSecret = $env:secret
$ManifestPath = $env:manifestPath
$MaxRetriesRaw = $env:MaxRetries
$RetryDelayRaw = if ($env:RetryDelaySeconds) { $env:RetryDelaySeconds } else { $env:RetryDelay }
$LogBasePath = $env:LogBasePath
$ReadLimitRaw = if ($env:ReadLimit) { $env:ReadLimit } else { 1 }

if (-not $baseUrl)  { throw "Environment variable 'baseEdFiURL' not set." }
if (-not $tokenUrl) { throw "Environment variable 'tokenEdFi' not set." }
if (-not $clientId) { throw "Environment variable 'key' not set." }
if (-not $clientSecret) { throw "Environment variable 'secret' not set." }
if (-not $ManifestPath) { throw "Environment variable 'manifestPath' not set." }
if (-not $MaxRetriesRaw) { throw "Environment variable 'MaxRetries' not set." }
if (-not $RetryDelayRaw) { throw "Environment variable 'RetryDelay' not set." }
if (-not $LogBasePath) { throw "Environment variable 'LogBasePath' not set." }

[int]$MaxRetries = $MaxRetriesRaw
[int]$RetryDelaySeconds = $RetryDelayRaw
[int]$ReadLimit = $ReadLimitRaw

$baseUrl = $baseUrl.TrimEnd("/")

# -----------------------------
# Token Helper
# -----------------------------

function Get-EdFiToken {

    $body = @{
        grant_type    = "client_credentials"
        client_id     = $clientId
        client_secret = $clientSecret
    }

    $resp = Invoke-RestMethod -Uri $tokenUrl -Method POST -Body $body

    if (-not $resp.access_token) {
        throw "Token response did not include access_token."
    }

    return $resp.access_token
}

# -----------------------------
# Request Helpers
# -----------------------------

function Get-ExceptionStatusCode {
    param([Parameter(Mandatory=$true)] $ErrorRecord)

    $responseProperty = $ErrorRecord.Exception.PSObject.Properties["Response"]
    if ($null -eq $responseProperty -or $null -eq $responseProperty.Value) {
        return $null
    }

    $statusCodeProperty = $responseProperty.Value.PSObject.Properties["StatusCode"]
    if ($null -ne $statusCodeProperty -and $null -ne $statusCodeProperty.Value) {
        return [int]$statusCodeProperty.Value
    }

    return $null
}

function Invoke-EdFiRequest {
    param(
        [Parameter(Mandatory=$true)] [string]$Method,
        [Parameter(Mandatory=$true)] [string]$Url,
        [Parameter(Mandatory=$true)] [hashtable]$Headers
    )

    for ($attempt = 1; $attempt -le $MaxRetries; $attempt++) {

        try {
            return Invoke-WebRequest -Method $Method -Uri $Url -Headers $Headers
        }
        catch {

            $statusCode = Get-ExceptionStatusCode -ErrorRecord $_

            # Refresh token on 401.
            if ($statusCode -eq 401) {
                Write-Host "401 Unauthorized - refreshing token..."
                $newToken = Get-EdFiToken
                $Headers["Authorization"] = "Bearer $newToken"
                continue
            }

            # Retry transient failures.
            if ($attempt -lt $MaxRetries) {
                Write-Host "Request failed (status=$statusCode) attempt $attempt/$MaxRetries. Waiting $RetryDelaySeconds seconds..."
                Start-Sleep -Seconds $RetryDelaySeconds
                continue
            }

            throw "Request failed (status=$statusCode): $($_.Exception.Message)"
        }
    }

    throw "Exceeded maximum retry attempts."
}

function Add-QueryParameter {
    param(
        [Parameter(Mandatory=$true)] [string]$Url,
        [Parameter(Mandatory=$true)] [string]$Name,
        [Parameter(Mandatory=$true)] [string]$Value
    )

    $separator = if ($Url.Contains("?")) { "&" } else { "?" }
    $encodedValue = [uri]::EscapeDataString($Value)

    return "$Url$separator$Name=$encodedValue"
}

function Get-ResponseRowCount {
    param([AllowNull()][string]$Content)

    if ([string]::IsNullOrWhiteSpace($Content)) {
        return 0
    }

    $trimmed = $Content.Trim()

    try {
        if ($trimmed.StartsWith("[")) {
            if ($trimmed -eq "[]") {
                return 0
            }

            return @($trimmed | ConvertFrom-Json).Count
        }

        $obj = ConvertFrom-Json -InputObject $trimmed
        if ($null -eq $obj) {
            return 0
        }

        return 1
    }
    catch {
        return $null
    }
}

# -----------------------------
# Load Manifest
# -----------------------------

$manifestFull = (Resolve-Path $ManifestPath).Path
$manifest     = Get-Content $manifestFull -Raw | ConvertFrom-Json

if (-not $manifest.items -or $manifest.items.Count -eq 0) {
    throw "Manifest has no items."
}

# -----------------------------
# Logging Setup
# -----------------------------

if (-not (Test-Path $LogBasePath)) {
    New-Item -ItemType Directory -Path $LogBasePath -Force | Out-Null
}

$runStart = Get-Date
$logPath  = Join-Path $LogBasePath ($runStart.ToString("yyyyMMdd-HHmmss") + ".txt")

"Run started: $runStart" | Out-File $logPath
"Read limit: $ReadLimit" | Out-File $logPath -Append

# -----------------------------
# Get Initial Token
# -----------------------------

$accessToken = Get-EdFiToken

$headers = @{
    "Authorization" = "Bearer $accessToken"
    "Accept"        = "application/json"
}

$results = @()

# -----------------------------
# Process Items
# -----------------------------

foreach ($item in $manifest.items) {

    $name = $item.name
    $resourcePath = ([string]$item.resourcePath).Trim().TrimStart("/")
    $getUrl = "$baseUrl/$resourcePath"

    if ($ReadLimit -gt 0) {
        $getUrl = Add-QueryParameter -Url $getUrl -Name "limit" -Value ([string]$ReadLimit)
    }

    Write-Host "==========================================="
    Write-Host "ITEM: $name"
    Write-Host "GET: $getUrl"

    "-------------------------------------------" | Out-File $logPath -Append
    "ITEM: $name" | Out-File $logPath -Append
    "GET: $getUrl" | Out-File $logPath -Append

    $payloadFiles = @($item.payloadFiles)
    if ($payloadFiles.Count -eq 0) {
        $payloadFiles = @("")
    }

    foreach ($payloadRel in $payloadFiles) {

        try {

            $getResp = Invoke-EdFiRequest -Method "GET" -Url $getUrl -Headers $headers
            $getCode = [int]$getResp.StatusCode
            $readable = ($getCode -ge 200 -and $getCode -lt 300)
            $rowsRetrieved = Get-ResponseRowCount -Content $getResp.Content

            "GET Status: $getCode" | Out-File $logPath -Append
            "Rows retrieved: $rowsRetrieved" | Out-File $logPath -Append
            Write-Host "Rows retrieved: $rowsRetrieved"

            $verified = $readable
            $notes = if ($null -eq $rowsRetrieved) { "Could not determine row count from response content." } else { "" }

            $results += [pscustomobject]@{
                Item          = $name
                Resource      = $resourcePath
                Payload       = $payloadRel
                GetCode       = $getCode
                RowsRetrieved = $rowsRetrieved
                Readable      = $readable
                Verified      = $verified
                Notes         = $notes
            }
        }
        catch {
            $msg = $_.Exception.Message
            Write-Host "ERROR: $msg"
            "ERROR: $msg" | Out-File $logPath -Append

            $results += [pscustomobject]@{
                Item          = $name
                Resource      = $resourcePath
                Payload       = $payloadRel
                GetCode       = $null
                RowsRetrieved = $null
                Readable      = $false
                Verified      = $false
                Notes         = $msg
            }
        }
    }
}

$runEnd = Get-Date
$elapsed = New-TimeSpan -Start $runStart -End $runEnd

"Run finished: $runEnd" | Out-File $logPath -Append
"Duration: $($elapsed.ToString())" | Out-File $logPath -Append

Write-Host "==========================================="
Write-Host "DONE. Log: $logPath"
Write-Host "Duration: $elapsed"

$results | Out-File $logPath -Append
$results | Format-Table -AutoSize

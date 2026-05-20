
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
$MaxRetries = $env:MaxRetries
$RetryDelaySeconds = $env:RetryDelay
$LogBasePath =$env:LogBasePath

if (-not $baseUrl)  { throw "Environment variable 'baseEdFiURL' not set." }
if (-not $tokenUrl) { throw "Environment variable 'tokenEdFi' not set." }
if (-not $clientId) { throw "Environment variable 'key' not set." }
if (-not $clientSecret) { throw "Environment variable 'secret' not set." }
if (-not $ManifestPath) { throw "Environment variable 'ManifestPath' not set." }
if (-not $MaxRetries) { throw "Environment variable 'MaxRetries' not set." }
if (-not $RetryDelaySeconds) { throw "Environment variable 'RetryDelaySeconds' not set." }
if (-not $LogBasePath) { throw "Environment variable 'LogBasePath' not set." }

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
# Resilient Request Wrapper
# -----------------------------

function Invoke-EdFiRequest {
    param(
        [string]$Method,
        [string]$Url,
        [hashtable]$Headers,
        [string]$BodyJson = $null
    )

    for ($attempt = 1; $attempt -le $MaxRetries; $attempt++) {

        try {

            if ($BodyJson) {
                return Invoke-WebRequest -Method $Method -Uri $Url `
                    -Headers $Headers `
                    -ContentType "application/json" `
                    -Body $BodyJson
            }
            else {
                return Invoke-WebRequest -Method $Method -Uri $Url `
                    -Headers $Headers
            }
        }
        catch {

            $statusCode = $null
            if ($_.Exception.Response -and $_.Exception.Response.StatusCode) {
                $statusCode = [int]$_.Exception.Response.StatusCode
            }

            # Refresh token on 401
            if ($statusCode -eq 401) {
                Write-Host "401 Unauthorized — refreshing token..."
                $newToken = Get-EdFiToken
                $Headers["Authorization"] = "Bearer $newToken"
                continue
            }

            # Retry other transient failures
            if ($attempt -lt $MaxRetries) {
                Write-Host "Request failed (status=$statusCode) attempt $attempt/$MaxRetries. Waiting $RetryDelaySeconds seconds..."
                Start-Sleep -Seconds $RetryDelaySeconds
                continue
            }

            throw
        }
    }

    throw "Exceeded maximum retry attempts."
}

function Get-JsonPathValue {
    param(
        [Parameter(Mandatory=$true)] $Obj,
        [Parameter(Mandatory=$true)] [string] $Path
    )

    if ($null -eq $Obj) { return $null }
    if ([string]::IsNullOrWhiteSpace($Path)) { return $null }

    $current = $Obj
    foreach ($segment in $Path -split '\.') {
        if ($null -eq $current) { return $null }

        # If current is an array and the segment is an integer index, allow indexing
        if ($current -is [System.Collections.IEnumerable] -and -not ($current -is [string])) {
            if ($segment -match '^\d+$') {
                $idx = [int]$segment
                $arr = @($current)
                if ($idx -ge 0 -and $idx -lt $arr.Count) { $current = $arr[$idx] } else { return $null }
                continue
            }
        }

        # Normal property access
        if ($current.PSObject.Properties.Name -contains $segment) {
            $current = $current.$segment
        }
        else {
            return $null
        }
    }

    return $current
}


function Try-ParseJson {
    param([string]$Text)
    try { return ($Text | ConvertFrom-Json) } catch { return $null }
}

# -----------------------------
# Load Manifest
# -----------------------------

$manifestFull = (Resolve-Path $ManifestPath).Path
$manifestDir  = Split-Path $manifestFull -Parent
$manifest     = Get-Content $manifestFull -Raw | ConvertFrom-Json

if (-not $manifest.items -or $manifest.items.Count -eq 0) {
    throw "Manifest has no items."
}

# -----------------------------
# Logging Setup
# -----------------------------

$runStart = Get-Date
$logPath  = Join-Path $LogBasePath ($runStart.ToString("yyyyMMdd-HHmmss") + ".txt")

"Run started: $runStart" | Out-File $logPath

# -----------------------------
# Get Initial Token
# -----------------------------

$accessToken = Get-EdFiToken

$headers = @{
    "Authorization" = "Bearer $accessToken"
    "Accept"        = "application/json"
}

$results = @()
$getCode=0
$notes=""

# -----------------------------
# Process Items
# -----------------------------

foreach ($item in $manifest.items) {

    $name = $item.name
    $resourcePath = $item.resourcePath.TrimStart("/")
    $postUrl = "$baseUrl/$resourcePath"

    Write-Host "==========================================="
    Write-Host "ITEM: $name"
    Write-Host "POST: $postUrl"

    "-------------------------------------------" | Out-File $logPath -Append
    "ITEM: $name" | Out-File $logPath -Append
    "POST: $postUrl" | Out-File $logPath -Append

    foreach ($payloadRel in $item.payloadFiles) {

        $payloadPath = Join-Path $manifestDir $payloadRel
        if (-not (Test-Path $payloadPath)) {
            throw "Payload file not found: $payloadPath"
        }

        $payloadRaw = Get-Content $payloadPath -Raw

        $payloadObj = $payloadRaw | ConvertFrom-Json

        # If the file is a wrapper, extract .payload; otherwise treat it as the resource body
        if ($null -ne $payloadObj.PSObject.Properties["payload"]) {
            $bodyObj = $payloadObj.payload
        } else {
            $bodyObj = $payloadObj
        }


        # Convert back to JSON for POST
        $payloadJson = $bodyObj | ConvertTo-Json -Depth 50

       # Write-Host  $payloadJson.ToString()

        try {

            # POST
            $postResp = Invoke-EdFiRequest -Method "POST" -Url $postUrl -Headers $headers -BodyJson $payloadJson

            $status = [int]$postResp.StatusCode
            "POST Status: $status" | Out-File $logPath -Append

            $location = $postResp.Headers["Location"]
            if ($location -is [System.Array]) { $location = $location[0] }

            if (-not $location) {
                Write-Host "No Location header returned."
                continue
            }
           # "Location: $location" | Out-File $logPath -Append

            # GET
            if ($item.verify.enabled) #verifying
            {
                        $getResp = Invoke-EdFiRequest -Method "GET" -Url $location -Headers $headers
                $getCode = [int]$getResp.StatusCode

               # Write-Host $getResp

                $verified = $true
                $notes = ""

                if ($item.verify -and $item.verify.enabled -eq $true -and $item.verify.expect) {
                    $obj = Try-ParseJson -Text $getResp.Content

                    foreach ($prop in $item.verify.expect.PSObject.Properties) {
                        $k = $prop.Name
                        $expected = $prop.Value
                        $actual = Get-JsonPathValue -Obj $obj -Path $k


                        if ($null -eq $actual -or "$actual" -ne "$expected") {
                            $verified = $false
                            $notes += "Mismatch $k (expected=$expected actual=$actual); "
                        }
                    }    
                }
            }
            else #not validating
            {
                $verified="skipped"
            }
            Write-Host $notes

            $results += [pscustomobject]@{
                Item      = $name
                Resource  = $resourcePath
                Payload   = $payloadRel
                PostCode  = $status
                GetCode   = $getCode
                Verified  = $verified
                Notes     = $notes.Trim()
            }
        }
        catch {
            $msg = $_.Exception.Message
            Write-Host "ERROR: $msg"
            "ERROR: $msg" | Out-File $logPath -Append

            $results += [pscustomobject]@{
                Item      = $name
                Resource  = $resourcePath
                Payload   = $payloadRel
                PostCode  = $null
                GetCode   = $null
                Verified  = $false
                Notes     = $msg
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

#$results | Format-Table -AutoSize | Out-File $logPath -Append
$results  | Out-File $logPath -Append
$results | Format-Table -AutoSize
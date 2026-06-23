cls

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# -----------------------------
# Settings
# -----------------------------

$BaseEdFiUrl = "https://edfi.doe.k12.de.us/Delaware-api-2027/2027/data/v3/"
$TokenUrl = "https://edfi.doe.k12.de.us/Delaware-api-2027/2027/oauth/token"
$EndpointPath = "..\ed-fi\schools"
$LogBasePath = "D:\log"
$RequestLimit = 1
$KeySecretsPath = "D:\temp\ApiClientKeySecrets.ps1"

# Key/secret file format for D:\temp\ApiClientKeySecrets.ps1:
#
# $KeySecrets = @(
#     [pscustomobject]@{ Key = "DSC504Program"; Secret = "actual-secret" }
#     [pscustomobject]@{ Key = "DSCAttendance"; Secret = "actual-secret" }
# )

# -----------------------------
# Helpers
# -----------------------------

function Write-Log {
    param(
        [Parameter(Mandatory = $true)] [AllowEmptyString()] [string] $Message,
        [Parameter(Mandatory = $true)] [string] $Path
    )

    $Message | Out-File -FilePath $Path -Append
}

function Resolve-EdFiUrl {
    param(
        [Parameter(Mandatory = $true)] [string] $BaseUrl,
        [Parameter(Mandatory = $true)] [string] $Path
    )

    if ([uri]::IsWellFormedUriString($Path, [UriKind]::Absolute)) {
        return $Path
    }

    $normalizedBase = $BaseUrl.TrimEnd("/")
    $normalizedPath = $Path.Replace("\", "/").Trim()

    while ($normalizedPath.StartsWith("../")) {
        $normalizedPath = $normalizedPath.Substring(3)
    }

    while ($normalizedPath.StartsWith("./")) {
        $normalizedPath = $normalizedPath.Substring(2)
    }

    $normalizedPath = $normalizedPath.TrimStart("/")

    return "$normalizedBase/$normalizedPath"
}

function Add-QueryParameter {
    param(
        [Parameter(Mandatory = $true)] [string] $Url,
        [Parameter(Mandatory = $true)] [string] $Name,
        [Parameter(Mandatory = $true)] [string] $Value
    )

    $separator = if ($Url.Contains("?")) { "&" } else { "?" }
    $encodedValue = [uri]::EscapeDataString($Value)

    return "$Url$separator$Name=$encodedValue"
}

function Get-ExceptionStatusCode {
    param([Parameter(Mandatory = $true)] $ErrorRecord)

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

function Get-ExceptionResponseText {
    param([Parameter(Mandatory = $true)] $ErrorRecord)

    $responseProperty = $ErrorRecord.Exception.PSObject.Properties["Response"]
    if ($null -eq $responseProperty -or $null -eq $responseProperty.Value) {
        return ""
    }

    $response = $responseProperty.Value
    $contentProperty = $response.PSObject.Properties["Content"]

    if ($null -ne $contentProperty -and $null -ne $contentProperty.Value) {
        try {
            return $contentProperty.Value.ReadAsStringAsync().GetAwaiter().GetResult()
        }
        catch {
            return ""
        }
    }

    try {
        $stream = $response.GetResponseStream()
        if ($null -eq $stream) {
            return ""
        }

        $reader = New-Object System.IO.StreamReader($stream)
        return $reader.ReadToEnd()
    }
    catch {
        return ""
    }
}

function Get-ResponseRowCount {
    param([AllowNull()] [string] $Content)

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

function Get-EdFiToken {
    param(
        [Parameter(Mandatory = $true)] [string] $ClientId,
        [Parameter(Mandatory = $true)] [string] $ClientSecret
    )

    $body = @{
        grant_type = "client_credentials"
        client_id = $ClientId
        client_secret = $ClientSecret
    }

    $response = Invoke-RestMethod `
        -Uri $TokenUrl `
        -Method POST `
        -ContentType "application/x-www-form-urlencoded" `
        -Body $body

    if (-not $response.access_token) {
        throw "Token response did not include access_token."
    }

    return $response.access_token
}

# -----------------------------
# Load Key Secrets
# -----------------------------

if (-not (Test-Path -LiteralPath $KeySecretsPath)) {
    throw "Key/secret file not found: $KeySecretsPath. See the format comment near the top of this script."
}

$KeySecrets = $null
. $KeySecretsPath

if ($null -eq $KeySecrets -or @($KeySecrets).Count -eq 0) {
    throw "Key/secret file did not set a non-empty `$KeySecrets collection: $KeySecretsPath"
}

$KeySecrets = @($KeySecrets)

$keySecretIndex = 0
foreach ($keySecret in $KeySecrets) {
    $keySecretIndex++

    if ($null -eq $keySecret.PSObject.Properties["Key"] -or $null -eq $keySecret.PSObject.Properties["Secret"]) {
        throw "Key/secret entry $keySecretIndex must include Key and Secret properties."
    }
}

# -----------------------------
# Logging Setup
# -----------------------------

if (-not (Test-Path $LogBasePath)) {
    New-Item -ItemType Directory -Path $LogBasePath -Force | Out-Null
}

$runStart = Get-Date
$logPath = Join-Path $LogBasePath ("apiclient-tests-" + $runStart.ToString("yyyyMMdd-HHmmss") + ".log")
$schoolsUrl = Resolve-EdFiUrl -BaseUrl $BaseEdFiUrl -Path $EndpointPath

if ($RequestLimit -gt 0) {
    $schoolsUrl = Add-QueryParameter -Url $schoolsUrl -Name "limit" -Value ([string]$RequestLimit)
}

"API client tests started: $runStart" | Out-File -FilePath $logPath
Write-Log -Path $logPath -Message "Token URL: $TokenUrl"
Write-Log -Path $logPath -Message "GET URL: $schoolsUrl"
Write-Log -Path $logPath -Message ""

$results = @()

# -----------------------------
# Run Tests
# -----------------------------

foreach ($keySecret in $KeySecrets) {
    $key = [string]$keySecret.Key
    $secret = [string]$keySecret.Secret
    $name = $key
    $started = Get-Date

    Write-Host "Testing $name ($key)"
    Write-Log -Path $logPath -Message "-------------------------------------------"
    Write-Log -Path $logPath -Message "Client: $name"
    Write-Log -Path $logPath -Message "Key: $key"

    if ([string]::IsNullOrWhiteSpace($key) -or [string]::IsNullOrWhiteSpace($secret) -or $secret -eq "PASTE_SECRET_HERE") {
        $message = "Skipped: key or secret is blank or still set to a placeholder."
        Write-Host $message
        Write-Log -Path $logPath -Message $message

        $results += [pscustomobject]@{
            Client = $name
            Key = $key
            Authenticated = $false
            GetStatus = $null
            RowsRetrieved = $null
            Result = "Skipped"
            Notes = $message
        }

        continue
    }

    $authenticated = $false

    try {
        $token = Get-EdFiToken -ClientId $key -ClientSecret $secret
        $authenticated = $true
        Write-Host "Authentication: Success"
        Write-Log -Path $logPath -Message "Authentication: Success"

        $headers = @{
            Authorization = "Bearer $token"
            Accept = "application/json"
        }

        $response = Invoke-WebRequest -Uri $schoolsUrl -Method GET -Headers $headers
        $statusCode = [int]$response.StatusCode
        $rowsRetrieved = Get-ResponseRowCount -Content $response.Content
        $success = $statusCode -ge 200 -and $statusCode -lt 300
        $elapsed = New-TimeSpan -Start $started -End (Get-Date)

        Write-Log -Path $logPath -Message "GET Status: $statusCode"
        Write-Log -Path $logPath -Message "Rows retrieved: $rowsRetrieved"
        Write-Log -Path $logPath -Message "Duration: $($elapsed.ToString())"
        Write-Host "GET Status: $statusCode"

        $results += [pscustomobject]@{
            Client = $name
            Key = $key
            Authenticated = $true
            GetStatus = $statusCode
            RowsRetrieved = $rowsRetrieved
            Result = if ($success) { "Passed" } else { "Failed" }
            Notes = ""
        }
    }
    catch {
        $statusCode = Get-ExceptionStatusCode -ErrorRecord $_
        $responseText = Get-ExceptionResponseText -ErrorRecord $_
        $notes = $_.Exception.Message
        $authMessage = if ($authenticated) { "Authentication: Success" } else { "Authentication: Failed" }

        if (-not [string]::IsNullOrWhiteSpace($responseText)) {
            $notes = "$notes Response: $($responseText.Substring(0, [Math]::Min(500, $responseText.Length)))"
        }

        if ($authenticated) {
            $notes = "Authentication succeeded, but the GET request failed. $notes"
        }

        Write-Host $authMessage
        Write-Host "Failed: $notes"
        Write-Log -Path $logPath -Message $authMessage
        Write-Log -Path $logPath -Message "Failed: $notes"

        $results += [pscustomobject]@{
            Client = $name
            Key = $key
            Authenticated = $authenticated
            GetStatus = $statusCode
            RowsRetrieved = $null
            Result = "Failed"
            Notes = $notes
        }
    }
}

$runEnd = Get-Date
$duration = New-TimeSpan -Start $runStart -End $runEnd

Write-Log -Path $logPath -Message ""
Write-Log -Path $logPath -Message "API client tests finished: $runEnd"
Write-Log -Path $logPath -Message "Duration: $($duration.ToString())"
Write-Log -Path $logPath -Message ""
Write-Log -Path $logPath -Message "Summary:"
$results | Format-Table -AutoSize | Out-String | Out-File -FilePath $logPath -Append

Write-Host "==========================================="
Write-Host "DONE. Log: $logPath"
$results | Format-Table -AutoSize

$env:baseEdFiURL = "https://doesisedfiintne.doe.k12.de.us/Delaware-api-2027/2027/data/v3/"
$env:tokenEdFi   = "https://doesisedfiintne.doe.k12.de.us/Delaware-api-2027/2027/oauth/token"
$env:key         = Read-Host "Enter value for environment variable 'key'"
$env:secret      = Read-Host "Enter value for environment variable 'secret'"

$manifestName = Read-Host "Enter manifest file name"
if ([string]::IsNullOrWhiteSpace($manifestName)) {
    throw "Manifest file name is required."
}

if (-not [System.IO.Path]::HasExtension($manifestName)) {
    $manifestName = "$manifestName.json"
}

if ([System.IO.Path]::IsPathRooted($manifestName)) {
    $manifestPath = $manifestName
}
else {
    $manifestPath = Join-Path $PSScriptRoot "..\manifests\$manifestName"
}

$resolvedManifestPath = Resolve-Path $manifestPath -ErrorAction SilentlyContinue
if (-not $resolvedManifestPath) {
    throw "Manifest file not found: $manifestPath"
}

$env:manifestPath = $resolvedManifestPath.Path
$env:LogBasePath  = "D:\log\"
$env:MaxRetries   = 1
$env:RetryDelay   = 30

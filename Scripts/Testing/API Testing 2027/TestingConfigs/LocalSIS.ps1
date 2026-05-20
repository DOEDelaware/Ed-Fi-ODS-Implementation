$env:baseEdFiURL = "http://localhost:54746/data/v3/"
$env:tokenEdFi   = "http://localhost:54746/oauth/token"
$env:key         =  Read-Host "Enter value for environment variable 'key'"
$env:secret      =  Read-Host "Enter value for environment variable 'secret'"
$env:manifestPath= Join-Path $PSScriptRoot "..\manifests\edfi-test-manifest.json"
$env:LogBasePath= "D:\log\"
$env:MaxRetries  = 1
$env:RetryDelay  = 30

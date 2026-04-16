$env:baseEdFiURL = "https://edfisandbox.doe.k12.de.us/Delaware-api/data/v3/"
$env:tokenEdFi   = "https://edfisandbox.doe.k12.de.us/Delaware-api/oauth/token"
$env:key         =  Read-Host "Enter value for environment variable 'key'"
$env:secret      =  Read-Host "Enter value for environment variable 'secret'"
$env:manifestPath= "D:\EdFi\repos73\Ed-Fi-ODS-Implementation\Scripts\Testing\API Testing 2026\edfi-sIS-manifest.json"
$env:LogBasePath= "D:\log\"
$env:MaxRetries  = 1
$env:RetryDelay  = 30
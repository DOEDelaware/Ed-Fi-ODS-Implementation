
#This script tests the various endpoints for the Delaware eSchoolPlus Security Profile

#get bearer token

#$my_key = Read-Host -Prompt 'Key?'
#$my_secret= Read-Host -Prompt 'Secret?'
#$my_url = Read-Host -Prompt 'BaseURL?'


#Global Values
$my_key = "ardfzcx"
$my_secret= "02EA3863A38C"
$my_url = "https://doesisedfiint.doe.k12.de.us"
$schoolYear = "2023"

$my_auth_URL = $my_url + "/Delaware-Api/oauth/token"
$my_base_URL = $my_url + "/Delaware-api/data/v3"

$Log=""


#Get Bearer Token
$tokenResult = Invoke-RestMethod -Method Post -Uri $my_auth_URL -Headers @{ "Authorization" = ("Basic", [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(($my_key, $my_secret -join ":"))) -join " ") } -Body @{ "grant_type" = "client_credentials"; }

$bearerToken = "Bearer " +  $tokenResult.access_token

$TypeAccelerators = [psobject].Assembly.GetType('System.Management.Automation.TypeAccelerators')
$TypeAccelerators::Add('IDictionary', [System.Collections.IDictionary]) # Or just 'Dictionary'?

function Get-URL-Count ($endPoint) {

    $call = $my_base_URL + "/" +  $schoolYear + $endPoint #+ "?limit=500"

    $getResult  =Invoke-RestMethod -Method Get -Uri $call -Headers @{ "Authorization" = $bearerToken }

    $outPt = $getResult.Count

    return $outPt
}

function Post-URL ($ep, [IDictionary]$pl) {

    $call = $my_base_URL + "/" +  $schoolYear + $ep 

    $headers=@{ "Authorization"=$bearerToken;"Content-Type"= "application/json"  } 

    $mypl=(ConvertTo-Json $pl)
    $mypl

    Invoke-RestMethod -Method Post -Uri $call -Headers $headers -body $mypl

}


$endPoints= `
    "/ed-fi/addressTypeDescriptors", `
    "/ed-fi/localEducationAgencies", `
    "/ed-fi/schools", `
    "/ed-fi/programs"


foreach ($endPoint in $endPoints) {

$cnt = Get-URL-Count ($endPoint)
if ($cnt -lt 1)     {$Log = $Log + "No rows in  " + $endPoint + "`r" }
    
}

#CIP Code
$endPoint="/de/cipCourses"

$payLoad=@{
cipCode= 'string13' 
localEducationAgencyReference= @{ localEducationAgencyId= 33 }  
cluster= 0 
courseName= 'string'
fundingLevel= 0 
pathway= 0}

Post-URL -ep $endPoint -pl $payLoad


$cnt = Get-URL-Count ($endPoint + '?cipCode=string13')
if ($cnt -ne 1)     {$Log = $Log + "Error in " + $endPoint + "`r" }



#Courses


Write-Output "Errors------------------ "  $Log
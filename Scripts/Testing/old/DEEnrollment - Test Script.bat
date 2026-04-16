@echo off

set bearertoken=%1
set baseurl="https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/"


REM		data/v3/ed-fi/systemDescriptors
REM		data/v3/ed-fi/students
REM		data/v3/ed-fi/studentSchoolAssociations
REM		data/v3/ed-fi/schools
REM		data/v3/ed-fi/localEducationAgency

echo " systemDescriptors  "
curl.exe -i -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/systemDescriptors" -H "accept: application/json" -H "authorization: Bearer %bearertoken%"
pause

echo " schools  "
curl.exe -i -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/students" -H "accept: application/json" -H "authorization: Bearer %bearertoken%"
pause

echo " schools  "
curl.exe -i -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/studentSchoolAssociations" -H "accept: application/json" -H "authorization: Bearer %bearertoken%"
pause

echo " schools  "
curl.exe -i -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/schools?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer %bearertoken%"
pause

echo " localEducationAgencies "
curl.exe -i -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/localEducationAgencies" -H "accept: application/json" -H "authorization: Bearer %bearertoken%"
pause
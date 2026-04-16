echo " descriptor addressType "


curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/schools?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"



curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/courses?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"



curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/classPeriods?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"


curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/studentSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"

curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/courseOfferings?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"

curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/students?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"


 
curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/studentEducationOrganizationAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"




curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"


curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/studentParentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"


curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"


curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/studentSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"




curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/staffEducationOrganizationAssignmentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"


curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/staffs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"



curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/staffSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"


curl.exe -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/staffSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec"




rem Post should fail
curl.exe -X POST "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/locations" -H "accept: application/json" -H "authorization: Bearer 9a5cff3b91cb4eef8add2d1b52fbb8ec" -H "Content-Type: application/json" -d "{  \"classroomIdentificationCode\": \"test2\", \"schoolReference\": { \"schoolId\": 230761 }, \"maximumNumberOfSeats\": 10, \"optimalNumberOfSeats\": 5}"




echo " programEvaluations  "
curl.exe -i -X GET "http://localhost:54746/data/v3/de/programEvaluations?offset=0&limit=1&totalCount=false" -H "accept: application/json" -H "authorization: Bearer c50899522aa1439e9303a4a98c6a6c01"


echo " studentProgramEvaluations  "
curl.exe -i -X GET "http://localhost:54746/data/v3/de/studentProgramEvaluations?offset=0&limit=1&totalCount=false" -H "accept: application/json" -H "authorization: Bearer c50899522aa1439e9303a4a98c6a6c01"


echo " studentCTEProgramAssociations  "
curl.exe -i -X GET "http://localhost:54746/data/v3/ed-fi/studentCTEProgramAssociations?offset=0&limit=1&totalCount=false" -H "accept: application/json" -H "authorization: Bearer c50899522aa1439e9303a4a98c6a6c01"




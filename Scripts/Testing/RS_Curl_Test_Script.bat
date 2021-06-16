echo " descriptor addressType "
curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/addressTypeDescriptors?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/schools?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"



curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courses?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"



curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/classPeriods?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courseOfferings?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/students?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"


 
curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentEducationOrganizationAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"




curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentParentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f6d50f5e834548b28aaa712


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"




curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffEducationOrganizationAssignmentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"



curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 161e712344da48a1aea5888d97d6c5ba"




rem Post should fail
curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/locations" -H "accept: application/json" -H "authorization: Bearer a8b8f78f54254d6c9c078d8f0ffd7496" -H "Content-Type: application/json" -d "{  \"classroomIdentificationCode\": \"test2\", \"schoolReference\": { \"schoolId\": 310108 }, \"maximumNumberOfSeats\": 10, \"optimalNumberOfSeats\": 5}"



UAT:
"https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/locations" -H "accept: application/json" -H "authorization: Bearer 03af858f7cf74f6ea81740a4666ab8d5" -H "Content-Type: application/json" -d "{  \"classroomIdentificationCode\": \"test2\", \"schoolReference\": { \"schoolId\": 320242 }, \"maximumNumberOfSeats\": 10, \"optimalNumberOfSeats\": 5}"


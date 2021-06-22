echo " descriptor addressType "


curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/schools?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"



curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courses?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"



curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/classPeriods?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"


curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"

curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courseOfferings?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"

curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/students?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"


 
curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentEducationOrganizationAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"




curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"


curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentParentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"


curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"


curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"




curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffEducationOrganizationAssignmentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"


curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"



curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"


curl.exe -X GET "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb"




rem Post should fail
curl.exe -X POST "https://edfiuat.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/locations" -H "accept: application/json" -H "authorization: Bearer f1e5c0ce91a141c7ad271363c0aedcbb" -H "Content-Type: application/json" -d "{  \"classroomIdentificationCode\": \"test2\", \"schoolReference\": { \"schoolId\": 230761 }, \"maximumNumberOfSeats\": 10, \"optimalNumberOfSeats\": 5}"



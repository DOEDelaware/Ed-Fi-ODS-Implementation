echo " descriptor addressType "


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/schools?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"



curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courses?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"



curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/classPeriods?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courseOfferings?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/students?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"


 
curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentEducationOrganizationAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"




curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentParentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"




curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffEducationOrganizationAssignmentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"



curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692"




rem Post should fail
curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/locations" -H "accept: application/json" -H "authorization: Bearer 85aa954b871e4adf912d43cbf68be692" -H "Content-Type: application/json" -d "{  \"classroomIdentificationCode\": \"test2\", \"schoolReference\": { \"schoolId\": 230763 }, \"maximumNumberOfSeats\": 10, \"optimalNumberOfSeats\": 5}"



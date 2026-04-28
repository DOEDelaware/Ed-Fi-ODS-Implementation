
Scott Testing-


set bearertoken="179b9dd5986e441bbac2a90f8b7d7a67"


Testing:
	Descriptor permission on the new immunizationexemptionreason-- fixed in 2023 security script
	I think permissions on de need to ber granted-- fixed in 2023 security script with copy
	studentLanguageInstructionProgramAssociations year/descriptor namespace xx
	some of the descriptors moved to our namespace - need to fix in next run through
	todo- section attendance xx
	todo- discipline
	

echo"****************   Categories and Resources  *********************"

echo " descriptor addressType "
curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/addressTypeDescriptors?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo " localEducationAgency  "

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/localEducationAgencies?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo " schools  "

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/schools?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo " Program Catalog"


curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/programs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo "*************   Categories and Resources  *********************"
REM echo " cipCourses"  todo claims

REM curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/cipCourses" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"cipCode\": \"string\", \"localEducationAgencyReference\": { \"localEducationAgencyId\": 32 } }, \"cluster\": 0, \"courseName\": \"string\", \"fundingLevel\": 0, \"pathway\": 0}"


REM curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/cipCourses?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo " Courses"  

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/courses" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"courseCode\": \"cousecode 1\", \"educationOrganizationReference\": { \"educationOrganizationId\": \"320240\", }, \"identificationCodes\": [ { \"courseIdentificationSystemDescriptor\": \"uri://doe.k12.de.us/CourseIdentificationSystemDescriptor#School course code\", \"assigningOrganizationIdentificationCode\": \"320240\", \"identificationCode\": \"scourscode 1\" } ], \"courseTitle\": \"My Course 1\", \"numberOfParts\": 1, \"offeredGradeLevels\": [ { \"gradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\" } ], \"_ext\": { \"De\": { \"levelNumber\": 1, \"unitCountExceptionSchoolReference\": { \"schoolId\": 320240, } } }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/courses?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo " locations"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/locations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"classroomIdentificationCode\": \"string\", \"schoolReference\": { \"schoolId\": 320240 }, \"maximumNumberOfSeats\": 10, \"optimalNumberOfSeats\": 5}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/locations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo " class periods

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/classPeriods" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"classPeriodName\": \"period 1\", \"schoolReference\": { \"schoolId\": 320240 }, \"_ext\": { \"De\": { \"attendancePeriodOrder\": 1, \"description\": \"string\", \"cycles\": [ { \"cycleDescriptor\": \"uri://doe.k12.de.us/CycleDescriptor#STD\", \"timeslot\": 1 } ] } } }"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/classPeriods?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



REM echo " graduation plans"

REM curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/graduationPlans" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"graduationPlanTypeDescriptor\": \"uri://doe.k12.de.us/GraduationPlanTypeDescriptor#MS\", \"educationOrganizationReference\": { \"educationOrganizationId\": 32}, \"graduationSchoolYearTypeReference\": { \"schoolYear\": 2019 }, \"individualPlan\": true, \"totalRequiredCreditConversion\": 100, \"totalRequiredCredits\": 45}"

REM curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/graduationPlans?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo " calendars"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/calendars" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"calendarCode\": \"14\", \"schoolReference\": { \"schoolId\": 320240 }, \"schoolYearTypeReference\": { \"schoolYear\": 2022 }, \"calendarTypeDescriptor\": \"uri://doe.k12.de.us/CalendarTypeDescriptor#Z\",}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/calendars?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo " calendar dates"

curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/calendarDates" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"calendarEvents\": [ { \"calendarEventDescriptor\": \"uri://doe.k12.de.us/CalendarEventDescriptor#Take Attendance\" } ], \"date\": \"2021-04-14\", \"calendarReference\": { \"calendarCode\": \"14\", \"schoolId\": 320240, \"schoolYear\": 2022 }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/calendarDates?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"




echo " grading periods"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/gradingPeriods" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"gradingPeriodDescriptor\": \"uri://doe.k12.de.us/GradingPeriodDescriptor#E2\", \"periodSequence\": 1, \"schoolReference\": { \"schoolId\": 320240 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"beginDate\": \"01-JAN-2019\", \"endDate\": \"02-FEB-2019\", \"totalInstructionalDays\": 15, \"_ext\": { \"De\": { \"endWeek\": 1, \"startWeek\": 4 } }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/gradingPeriods?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"





echo " sessions"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/sessions" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"sessionName\": \"Fall\", \"schoolReference\": { \"schoolId\": 320240, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"schoolYearTypeReference\": { \"schoolYear\": 2019, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"beginDate\": \"2019-02-24\", \"endDate\": \"2019-02-25\", \"termDescriptor\": \"uri://doe.k12.de.us/TermDescriptor#Fall Semester\",}{ \"sessionName\": \"Fall\", \"schoolReference\": { \"schoolId\": 320240, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"schoolYearTypeReference\": { \"schoolYear\": 2019, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"beginDate\": \"2019-02-24\", \"endDate\": \"2019-02-25\", \"termDescriptor\": \"uri://doe.k12.de.us/TermDescriptor#Fall Semester\",}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/sessions?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"




echo " Course Offerings  "

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/courseOfferings" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"localCourseCode\": \"local course code 1\", \"courseReference\": { \"courseCode\": \"cousecode 1\", \"educationOrganizationId\": \"320240\", }, \"schoolReference\": { \"schoolId\": 320240 }, \"sessionReference\": { \"schoolId\": 320240, \"schoolYear\": 2019, \"sessionName\": \"Fall\" }, \"localCourseTitle\": \"local course 1\"}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/courseOfferings?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"





echo " sections"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/sections" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"sectionIdentifier\": \"section 1\", \"courseOfferingReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 320240, \"schoolYear\": 2019, \"sessionName\": \"Fall\" }, \"_ext\": { \"De\": { \"levelDetail\": 1, \"subjectAreas\": [ { \"academicSubjectDescriptor\": \"uri://doe.k12.de.us/AcademicSubjectDescriptor#3\", \"subjectAreaLastModifiedDate\": \"2019-02-25\", \"subjectOrder\": 0 } ] } } }"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/sections?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"







echo "**********   Students  *********************"

echo people
curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/people" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#SIS.Student\"}"


echo " students"

curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/students" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d " { \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#SIS.Student\" }, \"studentUniqueId\": \"123\", \"birthCity\": \"string\", \"birthDate\": \"2010-02-25\", \"birthInternationalProvince\": \"string\", \"dateEnteredUS\": \"2011-02-25\", \"firstName\": \"Mary\", \"generationCodeSuffix\": \"string\", \"lastSurname\": \"smith\", \"maidenName\": \"string\", \"middleName\": \"string\", \"multipleBirthStatus\": true }"




echo " studentSchoolAssociation"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSchoolAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"entryDate\": \"2019-02-25\", \"schoolReference\": { \"schoolId\": \"320240\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"entryGradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\", \"_ext\": { \"De\": { \"enrollmentTypeDescriptor\": \"uri://doe.k12.de.us/EnrollmentTypeDescriptor#C\" }}}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/students?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"





echo " studentEducationOrganizationAssociations"

 curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentEducationOrganizationAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"educationOrganizationReference\": { \"educationOrganizationId\": 32}, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"sexDescriptor\": \"uri://doe.k12.de.us/SexDescriptor#F\", \"_ext\": { \"De\": { \"ferpaAddress\": true, \"ferpaName\": true, \"ferpaPhone\": true, \"ferpaPhoto\": true } }}" 
 
curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentEducationOrganizationAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"







echo " parents"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/parents" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"parentUniqueId\": \"456\", \"addresses\": [ { \"addressTypeDescriptor\": \"uri://doe.k12.de.us/AddressTypeDescriptor#M\", \"stateAbbreviationDescriptor\": \"uri://doe.k12.de.us/StateAbbreviationDescriptor#DE\", \"apartmentRoomSuiteNumber\": \"string\", \"buildingSiteNumber\": \"string\", \"city\": \"string\", \"congressionalDistrict\": \"string\", \"doNotPublishIndicator\": true, \"latitude\": \"string\", \"longitude\": \"string\", \"nameOfCounty\": \"string\", \"postalCode\": \"string\", \"streetNumberName\": \"string\", \"periods\": [ { \"beginDate\": \"01-JAN-2019\", \"endDate\": \"01-JAN-2020\" } ], \"_ext\": { \"De\": { \"complex\": \"string\", \"development\": \"string\" } } } ], \"firstName\": \"string\", \"generationCodeSuffix\": \"string\", \"lastSurname\": \"string\", \"loginId\": \"string\", \"maidenName\": \"string\", \"middleName\": \"string\", \"personalTitlePrefix\": \"string\"}"




echo " studentParentAssociation"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentParentAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"parentReference\": { \"parentUniqueId\": \"456\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"contactPriority\": 1, \"emergencyContactStatus\": true, \"livesWith\": true, \"primaryContactStatus\": true, \"relationDescriptor\": \"uri://doe.k12.de.us/RelationDescriptor#A\", \"_ext\": { \"De\": { \"contactTypeDescriptor\": \"uri://doe.k12.de.us/ContactTypeDescriptor#C\" }}}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentParentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo " studentSectionAssociations"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSectionAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"sectionReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 320240, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"attemptStatusDescriptor\": \"uri://doe.k12.de.us/AttemptStatusDescriptor#A\", \"homeroomIndicator\": false}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo "************   Staff  *********************"

echo people
curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/people" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"personId\": \"111\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#SIS.Staff\"}"


echo " staff "

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffs" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"staffUniqueId\": \"111\", \"firstName\": \"string\", \"generationCodeSuffix\": \"string\", \"lastSurname\": \"string\", \"yearsOfPriorProfessionalExperience\": 1, \"yearsOfPriorTeachingExperience\": 2, \"personReference\": { \"personId\": \"111\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#SIS.Staff\" }}"



echo " staffEducationOrganizationAssignmentAssociations"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffEducationOrganizationAssignmentAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"beginDate\": \"01-JAN-2019\", \"staffClassificationDescriptor\": \"uri://doe.k12.de.us/StaffClassificationDescriptor#Assistant Principal\", \"educationOrganizationReference\": { \"educationOrganizationId\": 32}, \"staffReference\": { \"staffUniqueId\": \"111\" }, \"_ext\": { \"De\": { \"active\": true } }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffEducationOrganizationAssignmentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"




echo " staffSchoolAssignment"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffSchoolAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"programAssignmentDescriptor\": \"uri://doe.k12.de.us/ProgramAssignmentDescriptor#Regular Education\", \"calendarReference\": { \"calendarCode\": \"14\", \"schoolId\": 320240 }, \"schoolReference\": { \"schoolId\": 320240 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"staffReference\": { \"staffUniqueId\": \"111\" }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo " staffProgramAssociations"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"beginDate\": \"01-JAN-2019\", \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"CTE\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Career and Technical Education\" }, \"staffReference\": { \"staffUniqueId\": \"111\" }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"




echo " staffSectionAssociations"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffSectionAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"sectionReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 320240, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\" }, \"staffReference\": { \"staffUniqueId\": \"111\" }, \"beginDate\": \"01-JAN-2019\", \"classroomPositionDescriptor\": \"uri://doe.k12.de.us/ClassroomPositionDescriptor#Teacher of Record\", \"highlyQualifiedTeacher\": true}"


curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo "***********   Programs & Cohort Groups  *********************"
echo " Program"

curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/programs" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"programName\": \"Mon Tues In Person\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#HYB\", \"educationOrganizationReference\": { \"educationOrganizationId\": 33}, \"programId\": \"string\", \"_ext\": { \"EdFiXLearningModality\": { \"learningModalities\": [ { \"modalityTypeDescriptor\": \"uri://doe.k12.de.us/modalityTypeDescriptor#I\", \"modalityTimeTypeDescriptor\": \"uri://doe.k12.de.us/ModalityTimeTypeDescriptor#Percentage\", \"modalityTime\": 98 } ] } }}"




curl -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/programs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



REM echo " studentTransportation"

REM curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/studentTransportations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"travelDayOfWeekDescriptor\": \"uri://doe.k12.de.us/TravelDayOfWeekDescriptor#FRIDAY\", \"travelDirectionDescriptor\": \"uri://doe.k12.de.us/TravelDirectionDescriptor#T\", \"travelSegment\": 1, \"travelTrip\": 2, \"localEducationAgencyReference\": { \"localEducationAgencyId\": 33 }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

REM curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/studentTransportations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo " student504ProgramAssociation"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/student504ProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 320240 }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"504 Plan\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Section 504 Placement\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/student504ProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"




echo " studentCTEProgramAssociation"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentCTEProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 320240 }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"CTE\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Career and Technical Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentCTEProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo "studentHomelessProgramAssociations"

curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentHomelessProgramAssociations"  -H "accept: application/json"   -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"   -H "Content-Type: application/json"   -d  "{  \"beginDate\": \"2023-04-21\",  \"educationOrganizationReference\": {    \"educationOrganizationId\":320240  },  \"programReference\": {    \"educationOrganizationId\": 33,    \"programName\":\"Homeless\",    \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Homeless\"  }, \"studentReference\": {    \"studentUniqueId\": \"123\"  },  \"awaitingFosterCare\": true,  \"endDate\": \"2023-04-21\", \"homelessPrimaryNighttimeResidenceDescriptor\": \"uri://doe.k12.de.us/HomelessPrimaryNighttimeResidenceDescriptor#S\", \"homelessProgramServices\": [    {      \"homelessProgramServiceDescriptor\":\"uri://doe.k12.de.us/HomelessProgramServiceDescriptor#16\",      \"primaryIndicator\":true,      \"serviceBeginDate\": \"2023-04-21\",      \"serviceEndDate\": \"2023-04-21\"    }  ], \"homelessUnaccompaniedYouth\": true,  \"participationStatus\": {    \"participationStatusDescriptor\":\"uri://doe.k12.de.us/ParticipationStatusDescriptor#B\",    \"designatedBy\": \"string\",   \"statusBeginDate\": \"2023-04-21\",    \"statusEndDate\": \"2023-04-21\"  },  \"programParticipationStatuses\": [    {     \"participationStatusDescriptor\": \"uri://doe.k12.de.us/ParticipationStatusDescriptor#B\",      \"statusBeginDate\":\"2023-04-21\",      \"designatedBy\": \"string\",      \"statusEndDate\": \"2023-04-21\"    }  ]}\"
  
  
 curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentHomelessProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo " studentLanguageInstructionProgramAssociations"

curl -X POST 

echo " studentSpecialEduicationProgramAssociation"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSpecialEducationProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 320240, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"Special Education\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Special Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"specialEducationHoursPerWeek\": 1, \"_etag\": \"string\", \"_ext\": { \"De\": { \"diplomaCertificateCategoryDescriptor\": \"uri://doe.k12.de.us/DiplomaCertificateCategoryDescriptor#Diploma\", } }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSpecialEducationProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



curl.exe -X POST  "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentLanguageInstructionProgramAssociations" -H  "accept: application/json" -H  "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H  "Content-Type: application/json" -d "{  \"beginDate\": \"2022-04-19\",  \"educationOrganizationReference\": {    \"educationOrganizationId\": 320240  },  \"programReference\": {    \"educationOrganizationId\": 32,    \"programName\": \"Language Immersion\",    \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Language Immersion\"  },  \"studentReference\": {    \"studentUniqueId\": \"123\"  },  \"_ext\": {    \"De\": {      \"languageImmersions\": [        {          \"immersionLanguageDescriptor\": \"uri://doe.k12.de.us/LanguageDescriptor#ach\",                    \"comment\": \"string\"               }      ]    }  }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentLanguageInstructionProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"





echo " cohorts"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/cohorts" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"cohortIdentifier\": \"test\", \"educationOrganizationReference\": { \"educationOrganizationId\": 32}, \"academicSubjectDescriptor\": \"uri://doe.k12.de.us/AcademicSubjectDescriptor#CST\", \"cohortTypeDescriptor\": \"uri://doe.k12.de.us/CohortTypeDescriptor#ST\"}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/cohorts?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"





REM echo " studentCohortAssociation"

REM curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentCohortAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"cohortReference\": { \"cohortIdentifier\": \"test\", \"educationOrganizationId\": 32}, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

REM curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentCohortAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"




REM echo " staffCohortAssociation"

REM curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffCohortAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"cohortReference\": { \"cohortIdentifier\": \"test\", \"educationOrganizationId\": 32}, \"staffReference\": { \"staffUniqueId\": \"111\" }, \"studentRecordAccess\": true}"

REM curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/staffCohortAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"






echo "****************   Attendance & Grades  *********************"

echo " studentSchoolAttendanceEvents"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSchoolAttendanceEvents" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"attendanceEventCategoryDescriptor\": \"uri://doe.k12.de.us/AttendanceEventCategoryDescriptor#SGE\", \"eventDate\": \"01-JAN-2019\", \"schoolReference\": { \"schoolId\": 320240 }, \"sessionReference\": { \"schoolId\": 320240, \"schoolYear\": 2019, \"sessionName\": \"Fall\" }, \"studentReference\": { \"studentUniqueId\": \"123\" } }, \"attendanceEventReason\": \"test\", \"eventDuration\": 1, \"_etag\": \"string\", \"_ext\": { \"De\": { \"absentTime\": 10, \"scheduledTime\": 10 } }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSchoolAttendanceEvents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"




REM echo " studentSectionClassPeriodAttendanceEvents"

REM curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/studentSectionClassPeriodAttendanceEvents" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"attendanceEventCategoryDescriptor\": \"uri://doe.k12.de.us/AttendanceEventCategoryDescriptor#SGE\", \"eventDate\": \"01-JAN-2019\", \"classPeriodReference\": { \"classPeriodName\": \"period 1\", \"schoolId\": 320240 }, \"sectionReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 320240, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

REM curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/studentSectionClassPeriodAttendanceEvents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo 'studentSectionAttendanceEvents


curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSectionAttendanceEvents" -H  "accept: application/json" -H  "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H  "Content-Type: application/json" -d "{  \"attendanceEventCategoryDescriptor\": \"uri://doe.k12.de.us/AttendanceEventCategoryDescriptor#SGE\",  \"eventDate\": \"2022-04-19\",  \"sectionReference\": {    \"localCourseCode\": \"local course code 1\",    \"schoolId\":320240,    \"schoolYear\": 2019,    \"sectionIdentifier\": \"section 1\",    \"sessionName\": \"Fall\"  },  \"studentReference\": {    \"studentUniqueId\": \"123\"  },  \"classPeriods\": [    {      \"classPeriodReference\": {        \"classPeriodName\": \"period 1\",        \"schoolId\": 320240      }    }  ]}"


curl -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSectionAttendanceEvents?offset=0&limit=25&totalCount=false" -H  "accept: application/json" -H  "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo " grades"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/grades" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"gradeTypeDescriptor\": \"uri://doe.k12.de.us/GradeTypeDescriptor#FIN\", \"gradingPeriodReference\": { \"gradingPeriodDescriptor\": \"uri://doe.k12.de.us/GradingPeriodDescriptor#E2\", \"periodSequence\": 1, \"schoolId\": 320240, \"schoolYear\": 2019 }, \"studentSectionAssociationReference\": { \"beginDate\": \"01-JAN-2019\", \"localCourseCode\": \"local course code 1\", \"schoolId\": 320240, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\", \"studentUniqueId\": \"123\" }, \"letterGradeEarned\": \"A\", \"numericGradeEarned\": 0}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/grades?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


REM echo " gradeTypeDetails"

REM curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/gradeTypeDetails" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"gradeTypeDescriptor\": \"uri://doe.k12.de.us/GradeTypeDescriptor#MP1\", \"schoolReference\": { \"schoolId\": 320240 }, \"gradeTypeOrder\": 1, \"gradeTypeWhenTakenDescriptor\": \"uri://doe.k12.de.us/GradeTypeWhenTakenDescriptor#M\"}"

REM curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/gradeTypeDetails?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

REM echo " levelDetails"

REM curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/levelDetails" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"levelNumber\": 1, \"mark\": \"12\", \"schoolReference\": { \"schoolId\": 320240 },} }, \"levelDescription\": \"string\", \"passingMark\": true, \"pointValue\": 1, \"reportCardPrintValue\": \"string\", \"transcriptPrintValue\": \"string\"}"

REM curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/levelDetails?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo " studentAcademicRecords "

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentAcademicRecords" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"termDescriptor\": \"uri://doe.k12.de.us/TermDescriptor#Other\", \"educationOrganizationReference\": { \"educationOrganizationId\": 32}, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"classRanking\": { \"classRank\": 1, \"classRankingDate\": \"01-JAN-2019\", \"percentageRanking\": 0, \"totalNumberInClass\": 123 }, \"cumulativeAttemptedCreditConversion\": 0, \"cumulativeAttemptedCredits\": 0, \"cumulativeAttemptedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"cumulativeEarnedCreditConversion\": 0, \"cumulativeEarnedCredits\": 0, \"cumulativeEarnedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"cumulativeGradePointAverage\": 4, \"cumulativeGradePointsEarned\": 4, \"projectedGraduationDate\": \"01-JUN-2019\"}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentAcademicRecords?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo " courseTranscripts"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/courseTranscripts" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"courseAttemptResultDescriptor\": \"uri://doe.k12.de.us/CourseAttemptResultDescriptor#Pass\", \"courseReference\": { \"courseCode\": \"cousecode 1\", \"educationOrganizationId\": 320240 }, \"externalEducationOrganizationReference\": { \"educationOrganizationId\": 320240 }, \"studentAcademicRecordReference\": { \"educationOrganizationId\": 32, \"schoolYear\": 2019, \"studentUniqueId\": \"123\", \"termDescriptor\": \"uri://doe.k12.de.us/TermDescriptor#Other\" }, \"alternativeCourseCode\": \"cousecode 1\", \"alternativeCourseTitle\": \"string\", \"attemptedCreditConversion\": 1, \"attemptedCredits\": 1, \"attemptedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"courseTitle\": \"My Course 1\", \"earnedCreditConversion\": 1, \"earnedCredits\": 1, \"earnedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"finalLetterGradeEarned\": \"A\", \"finalNumericGradeEarned\": 99}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/courseTranscripts?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

REM echo " postSecondaryDetails"

REM curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/postSecondaryDetails" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"postSecondaryEventCategoryDescriptor\": \"uri://doe.k12.de.us/PostSecondaryEventCategoryDescriptor#FAFSA Application\", \"schoolReference\": { \"schoolId\": 320240 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"institutions\": [ { \"acceptanceStatusDescriptor\": \"uri://ed-fi.org/AcceptanceStatusDescriptor#Accepted\", \"dateTranscriptMailed\": \"01-JAN-2019\", \"plansToAttend\": true, \"postSecondaryInstitutionReference\": { \"postSecondaryInstitutionId\": 2000000001 } }]}"

REM curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/postSecondaryDetails?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo "****************   Other  *********************"
REM Sayee:
REM DisciplineIncident
REM StudentDisciplineIncidentAssociation
REM StudentDisciplineIncidentBehaviorAssociation
REM DisciplinAction


echo " disciplineIncident"


REM {
     REM "schoolreference": {
       REM "schoolid": 320240
     REM },
     REM "incidentidentifier": "di2",
     REM "incidentdate": "2019-02-25",
     REM "incidentdescription": "string",
     REM "behaviors": [],
     REM "externalparticipants": [],
     REM "weapons": []
REM }

curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/disciplineIncidents" -H  "accept: application/json" -H  "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H  "Content-Type: application/json" -d "  {    \"schoolReference\": {      \"schoolId\": 320240,      \"link\": {        \"rel\": \"School\",        \"href\": \"/ed-fi/schools/af6cb051f773432faabcb70df6b602f7\"      }    },    \"incidentIdentifier\": \"string\",    \"incidentDate\": \"2019-02-25\",    \"incidentDescription\": \"string\",    \"behaviors\": [],  \"externalParticipants\": [    {      \"disciplineIncidentParticipationCodeDescriptor\": \"uri://doe.k12.de.us/DisciplineIncidentParticipationCodeDescriptor#W\",      \"firstName\": \"Fred\",      \"lastSurname\": \"Witness\"    }]}"
curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/disciplineIncidents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo "StudentDisciplineIncidentAssociation"

REM {
  REM "disciplineIncidentReference": {
    REM "incidentIdentifier": "string",
    REM "schoolId": 320240,
    REM "link": {
      REM "rel": "string",
      REM "href": "string"
    REM }
  REM },
  REM "studentReference": {
    REM "studentUniqueId": "123",
    REM "link": {
      REM "rel": "string",
      REM "href": "string"
    REM }
  REM },
  REM "behaviors": [
    REM {
      REM "behaviorDescriptor": "uri://doe.k12.de.us/BehaviorDescriptor#C0104",
      REM "behaviorDetailedDescription": "string"
    REM }
  REM ],
  REM "studentParticipationCodeDescriptor": "uri://doe.k12.de.us/StudentParticipationCodeDescriptor#O"
REM }

REM curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentDisciplineIncidentAssociations" -H  "accept: application/json" -H  "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H  "Content-Type: application/json" -d "{  \"disciplineIncidentReference\": {    \"incidentIdentifier\": \"string\",    \"schoolId\": 320240,    \"link\": {      \"rel\": \"string\",      \"href\": \"string\"    }  },  \"studentReference\": {    \"studentUniqueId\": \"123\",    \"link\": {      \"rel\": \"string\",      \"href\": \"string\"    }  },  \"behaviors\": [    {      \"behaviorDescriptor\": \"uri://doe.k12.de.us/BehaviorDescriptor#C0104\",      \"behaviorDetailedDescription\": \"string\"    }  ],  \"studentParticipationCodeDescriptor\": \"uri://doe.k12.de.us/StudentParticipationCodeDescriptor#O\"}"

echo "studentDisciplineIncidentBehaviorAssociation "

REM {
  REM "behaviorDescriptor": "uri://doe.k12.de.us/BehaviorDescriptor#C0104",
  REM "disciplineIncidentReference": {
    REM "incidentIdentifier": "string",
    REM "schoolId": 320240
  REM },
  REM "studentReference": {
    REM "studentUniqueId": "123",
    REM "link": {
      REM "rel": "string",
      REM "href": "string"
    REM }
  REM },
  REM "behaviorDetailedDescription": "test",
  REM "disciplineIncidentParticipationCodes": [
    REM {
      REM "disciplineIncidentParticipationCodeDescriptor": "uri://doe.k12.de.us/DisciplineIncidentParticipationCodeDescriptor#O"
    REM }
  REM ]
REM }





curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentDisciplineIncidentBehaviorAssociations" -H  "accept: application/json" -H  "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H  "Content-Type: application/json" -d "{  \"behaviorDescriptor\": \"uri://doe.k12.de.us/BehaviorDescriptor#C0102\",  \"disciplineIncidentReference\": {    \"incidentIdentifier\": \"string\",    \"schoolId\": 320240  },  \"studentReference\": {    \"studentUniqueId\": \"123\",    \"link\": {      \"rel\": \"string\",      \"href\": \"string\"    }  },  \"behaviorDetailedDescription\": \"test\",  \"disciplineIncidentParticipationCodes\": [    {      \"disciplineIncidentParticipationCodeDescriptor\": \"uri://doe.k12.de.us/DisciplineIncidentParticipationCodeDescriptor#O\"    }  ]}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentDisciplineIncidentBehaviorAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo "StudentDisciplineNonOffendor
REM {

  REM "studentReference": {
    REM "studentUniqueId": "123"
  REM },
  REM "disciplineIncidentReference": {
    REM "incidentIdentifier": "string",
    REM "schoolId": 320240
  REM },
  REM "disciplineIncidentParticipationCodes": [
    REM {
      REM "disciplineIncidentParticipationCodeDescriptor": "uri://doe.k12.de.us/DisciplineIncidentParticipationCodeDescriptor#W"	  
    REM }
  REM ]
REM }

REM curl -X POST "https://edfiuat.doe.k12.de.us:443/Delaware-api/data/v3/2024/ed-fi/studentDisciplineIncidentNonOffenderAssociations" -H  "accept: application/json" -H  "Content-Type: application/json" -d "{  \"id\": \"string\",  \"disciplineIncidentReference\": {    \"incidentIdentifier\": \"string\",    \"schoolId\": 0,    \"link\": {      \"rel\": \"string\",      \"href\": \"string\"    }  },  \"studentReference\": {    \"studentUniqueId\": \"string\",    \"link\": {      \"rel\": \"string\",      \"href\": \"string\"    }  },  \"disciplineIncidentParticipationCodes\": [    {      \"disciplineIncidentParticipationCodeDescriptor\": \"string\"    }  ],  \"_etag\": \"string\"}"

curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentDisciplineIncidentNonOffenderAssociations" -H  "accept: application/json" -H  "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H  "Content-Type: application/json" -d "{  \"disciplineIncidentReference\": {    \"incidentIdentifier\": \"string\",    \"schoolId\": 320240,    \"link\": {      \"rel\": \"string\",      \"href\": \"string\"    }  },  \"studentReference\": {    \"studentUniqueId\": \"123\",    \"link\": {      \"rel\": \"string\",      \"href\": \"string\"    }  },  \"disciplineIncidentParticipationCodes\": [    {      \"disciplineIncidentParticipationCodeDescriptor\": \"uri://doe.k12.de.us/DisciplineIncidentParticipationCodeDescriptor#W\",      \"disciplineIncidentParticipationCodeDescriptor\": \"uri://doe.k12.de.us/DisciplineIncidentParticipationCodeDescriptor#V\"     }  ]}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentDisciplineIncidentNonOffenderAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo "DisciplineAction"

REM {
  REM "disciplineActionIdentifier": "dai",
  REM "disciplineDate": "2022-04-21",
  REM "disciplines": [
    REM {
      REM "disciplineDescriptor": "uri://doe.k12.de.us/DisciplineDescriptor#04"
    REM }
  REM ],
  REM "studentDisciplineIncidentAssociations": [
    REM {
      REM "studentDisciplineIncidentAssociationReference": {
        REM "incidentIdentifier": "string",
        REM "schoolId": 320240,
        REM "studentUniqueId": "123",
        REM "link": {
          REM "rel": "string",
          REM "href": "string"
        REM }
      REM }
    REM }
  REM ],
  REM "assignmentSchoolReference": {
    REM "schoolId": 320240,
    REM "link": {
      REM "rel": "string",
      REM "href": "string"
    REM }
  REM },
  REM "responsibilitySchoolReference": {
    REM "schoolId": 320240,
    REM "link": {
      REM "rel": "string",
      REM "href": "string"
    REM }
  REM },
  REM "studentReference": {
    REM "studentUniqueId": "123",
    REM "link": {
      REM "rel": "string",
      REM "href": "string"
    REM }
  REM }

REM }


curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/disciplineActions" -H  "accept: application/json" -H  "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H  "Content-Type: application/json" -d "{  \"disciplineActionIdentifier\": \"dai\",  \"disciplineDate\": \"2022-04-21\",  \"disciplines\": [    {      \"disciplineDescriptor\": \"uri://doe.k12.de.us/DisciplineDescriptor#04\"    }  ], \"assignmentSchoolReference\": {    \"schoolId\": 320240,    \"link\": {      \"rel\": \"string\",      \"href\": \"string\"    }  },  \"responsibilitySchoolReference\": {    \"schoolId\": 320240,    \"link\": {      \"rel\": \"string\",      \"href\": \"string\"    }  },  \"studentReference\": {    \"studentUniqueId\": \"123\",    \"link\": {      \"rel\": \"string\",      \"href\": \"string\"    }  }}"


curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/disciplineActions" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo " RestraintSeclusions"
curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/restraintSeclusions" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"eventDate\": \"2021-04-12\", \"eventTime\": \"10:00:01\", \"restraintEventCategoryDescriptor\": \"uri://doe.k12.de.us/RestraintEventCategoryDescriptor#Seclusion\", \"restraintEventReasonDescriptor\": \"uri://doe.k12.de.us/RestraintEventReasonDescriptor#Imminent risk of bodily harm to others.\", \"staffProvidingRestraints\": [ { \"staffOrdinal\": 1, \"trainedActionTechnique\": true } ], \"schoolReference\": { \"schoolId\": 320240 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"additionalDetail\": \"string\", \"behaviorDuringRestraintDetail\": \"string\", \"supportPlanChangeDescriptor\": \"uri://doe.k12.de.us/SupportPlanChangeDescriptor#NONE\", \"changeDescription\": \"string\", \"consecutiveRestraintCount\": 0, \"deescalationTechniqueDescriptor\": \"uri://doe.k12.de.us/DeescalationTechniqueDescriptor#01\", \"incidentLocationDescriptor\": \"uri://doe.k12.de.us/IncidentLocationDescriptor#01\", \"nonViolentTechniqueDescriptor\": \"uri://doe.k12.de.us/NonViolentTechniqueDescriptor#11\", \"notificationMethodDescriptor\": \"uri://doe.k12.de.us/NotificationMethodDescriptor#Email\", \"parentGuardianNotified\": true, \"parentGuardianNotifiedDate\": \"2021-04-12\", \"parentGuardianNotifiedTime\": \"10:00:01\", \"policyChangeDetail\": \"string\", \"priorToEventDetail\": \"string\", \"restraintDuration\": \"string\", \"restraintReportDate\": \"2021-04-12\"}"


curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/restraintSeclusions" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"eventDate\": \"2021-04-12\", \"eventTime\": \"10:00:01\", \"restraintEventCategoryDescriptor\": \"uri://doe.k12.de.us/RestraintEventCategoryDescriptor#Seclusion\", \"restraintEventReasonDescriptor\": \"uri://doe.k12.de.us/RestraintEventReasonDescriptor#Imminent risk of bodily harm to others.\", \"staffProvidingRestraints\": [ { \"staffOrdinal\": 1, \"trainedActionTechnique\": true } ], \"schoolReference\": { \"schoolId\": 320240 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"additionalDetail\": \"string\", \"behaviorDuringRestraintDetail\": \"string\", \"supportPlanChangeDescriptor\": \"uri://doe.k12.de.us/SupportPlanChangeDescriptor#NONE\", \"changeDescription\": \"string\", \"consecutiveRestraintCount\": 0, \"deescalationTechniqueDescriptor\": \"uri://doe.k12.de.us/DeescalationTechniqueDescriptor#01\", \"incidentLocationDescriptor\": \"uri://doe.k12.de.us/IncidentLocationDescriptor#01\", \"nonViolentTechniqueDescriptor\": \"uri://doe.k12.de.us/NonViolentTechniqueDescriptor#11\", \"notificationMethodDescriptor\": \"uri://doe.k12.de.us/NotificationMethodDescriptor#Email\", \"parentGuardianNotified\": true, \"policyChangeDetail\": \"string\", \"priorToEventDetail\": \"string\", \"restraintDuration\": \"string\", \"restraintReportDate\": \"2021-04-12\"}"



curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/restraintSeclusions?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo " allegedBullyingVictims"


REM {
  REM "studentReference": {
    REM "studentUniqueId": "123"
  REM },
  REM "schoolReference": {
    REM "schoolId": "320240"
  REM },
  REM "allegedIncidentDate": "2021-09-28",
  REM "reasonIncidentRelatedToDescriptor": "uri://doe.k12.de.us/IncidentRelatedToDescriptor#Rac",
  REM "reportDate": "2021-09-28",
  REM "followupComment": "School counselors and administration are currently investigating.",
  REM "incidentDescription": "Mother reported that both boys have made different comments about Indiyah's hair and forehead; and this has caused her to change her hairstyle and attempt to look more white.",
  REM "incidentLocationDescriptor": "uri://doe.k12.de.us/IncidentLocationDescriptor#09",
  REM "multiplePriorEvent": true,
  REM "reportedBy": "Denise Ortiz, Indyiyah's mothe",
  REM "bullyingCategories": [
    REM {
      REM "bullyingCategoryDescriptor": "uri://doe.k12.de.us/BullyingCategoryDescriptor#Verbal"
    REM }
  REM ]
REM }

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/allegedBullyingVictims" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"allegedIncidentDate\": \"01-JAN-2019\", \"schoolReference\": { \"schoolId\": 320240 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"bullyingCategories\": [ { \"bullyingCategoryDescriptor\": \"uri://doe.k12.de.us/BullyingCategoryDescriptor#Physical\" } ], \"followupComment\": \"string\", \"incidentDescription\": \"string\", \"incidentLocationDescriptor\": \"uri://doe.k12.de.us/IncidentLocationDescriptor#01\", \"multiplePriorEvent\": true, \"reasonIncidentRelatedToDescriptor\": \"uri://doe.k12.de.us/IncidentRelatedToDescriptor#Crd\", \"reportDate\": \"01-JAN-2019\", \"reportedBy\": \"string\"}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/allegedBullyingVictims?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"






REM  Medical


REM echo " medicationAlerts"

REM curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/medicalAlerts" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"medicalAlertCategoryDescriptor\": \"uri://doe.k12.de.us/MedicalAlertCategoryDescriptor#ALL\", \"sensitive\": true}"

REM curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/medicalAlerts" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" 

echo " PersonmedicationAlerts"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/personMedicalAlerts" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"startDate\": \"2021-04-13\", \"medicalAlertReference\": { \"medicalAlertCategoryDescriptor\": \"uri://doe.k12.de.us/MedicalAlertCategoryDescriptor#ALL\" }, \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#SIS.Student\" }, \"endDate\": \"2022-04-13\"}"



curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/personMedicalAlerts?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo " medicationBoxes"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/medicationBoxes" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"medicationBoxId\": 1, \"localEducationAgencyReference\": { \"localEducationAgencyId\": 32 }, \"medicationCode\": \"string\", \"medicationDescription\": \"string\"}"





curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/medicationBoxes?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo " personMedicationBoxAssociations"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/personMedicationBoxAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"medicationBoxReference\": { \"localEducationAgencyId\": 32, \"medicationBoxId\": 1 },\"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#SIS.Student\" }, \"issues\": [ { \"issueDate\": \"2019-03-21\" } ], \"medicationRequired\": true}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/personMedicationBoxAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo " medicalScreenings"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/medicalScreenings" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"medicalTestCategoryDescriptor\": \"uri://doe.k12.de.us/MedicalTestCategoryDescriptor#SCREENBP\", \"testDate\": \"2021-04-14\", \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#SIS.Student\" }, \"schoolOfServiceSchoolReference\": { \"schoolId\": 320240 }, \"screeningEducationOrganizationReference\": { \"educationOrganizationId\": 33 }, \"athleticStatus\": true, \"screeningLocationDescriptor\": \"uri://doe.k12.de.us/LocationDescriptor#N\"}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/medicalScreenings?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo " personImmunizations"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/personImmunizations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"immunizationDescriptor\": \"uri://DHSS.Delaware.gov/ImmunizationDescriptor#ANT-D\", \"immunizationDate\": \"01-JAN-2019\", \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#SIS.Student\" }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/personImmunizations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo " medicalOfficeVisits"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/medicalOfficeVisits" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"officeInDate\": \"2019-04-09T13:52:08.013Z\", \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#SIS.Student\" }, \"schoolOfServiceSchoolReference\": { \"schoolId\": 320240 }, \"contactTypes\": [ { \"contactTypeDescriptor\": \"uri://doe.k12.de.us/ContactTypeDescriptor#PG\" } ], \"medicalDispositions\": [ { \"medicalDispositionDescriptor\": \"uri://doe.k12.de.us/MedicalDispositionDescriptor#EVAL\" } ], \"medicalTreatmentCodes\": [ { \"medicalTreatmentCodeDescriptor\": \"uri://doe.k12.de.us/MedicalTreatmentCodeDescriptor#ABUSE\" } ], \"medicalVisitReasons\": [ { \"medicalVisitReasonDescriptor\": \"uri://doe.k12.de.us/MedicalVisitReasonDescriptor#BLIS\" } ], \"officeOutDate\": \"2019-04-09T13:52:08.013Z\"}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/medicalOfficeVisits?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo " medicalReferralFollowUps"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/medicalReferralFollowUps" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"followupCategoryDescriptor\": \"uri://doe.k12.de.us/FollowupCategoryDescriptor#NOTREAT\", \"medicalTestCategoryDescriptor\": \"uri://doe.k12.de.us/MedicalTestCategoryDescriptor#504\", \"testDate\": \"2019-04-09T13:54:18.124Z\", \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#SIS.Student\" }}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/medicalReferralFollowUps?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"





echo " EL StudentEarlyChildhoodProgramAssociation"
curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/studentEarlyChildhoodProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"studentReference\": { \"studentUniqueId\": \"123\" }, \"beginDate\": \"01-JAN-2020\", \"educationOrganizationReference\": { \"educationOrganizationId\": 320240 }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"ECAP\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Early Education\" }, \"districtNotificationDate\": \"01-JAN-2020\", \"iepImplementationDate\": \"01-JAN-2020\", \"iepMeetingDate\": \"01-JAN-2020\", \"reasonExitedDescriptor\": \"uri://doe.k12.de.us/ReasonExitedDescriptor#EC_5\", \"reasonForLateIEPDescriptor\": \"uri://doe.k12.de.us/ReasonForLateIEPDescriptor#01\", \"regulation619DeterminedEligible\": true, \"regulation619PartCReferralDate\": \"01-JAN-2020\", \"regulation619ReferralDate\": \"01-JAN-2020\", \"servedOutsideOfRegularSession\": true}"

curl -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/studentEarlyChildhoodProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo " studentEarlyChildhoodProgramAssociation"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/studentEarlyChildhoodProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"beginDate\": \"2019-02-25\", \"educationOrganizationReference\": { \"educationOrganizationId\": 33}, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"ECAP\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Early Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"programCharacteristicDescriptor\": \"uri://doe.k12.de.us/ProgramCharacteristicDescriptor#1\"}"

curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/studentEarlyChildhoodProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"






echo "StudentAssessmentAdministration"

curl -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi-xassessment-roster/assessmentAdministrations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi-xassessment-roster/studentAssessmentRegistrations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"assessmentAdministrationReference\": { \"administrationIdentifier\": \"60\", \"assessmentIdentifier\": \"60\", \"assigningEducationOrganizationId\": 95, \"namespace\": \"uri://doe.k12.de.us/AssessmentRoster\" }, \"studentEducationOrganizationAssociationReference\": { \"educationOrganizationId\": 32, \"studentUniqueId\": \"123\" }}"

curl -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi-xassessment-roster/studentAssessmentRegistrations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67


REM echo "Student EdOrg Responsibility"

REM curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentEducationOrganizationResponsibilityAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"beginDate\": \"2021-04-19\", \"responsibilityDescriptor\": \"uri://doe.k12.de.us/ResponsibilityDescriptor#Resident\", \"educationOrganizationReference\": { \"educationOrganizationId\": 29 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"endDate\": \"2021-04-20\", \"_etag\": \"string\", \"_ext\": { \"De\": { \"transfers\": [ { \"externalEducationOrganizationName\": \"test\", \"gradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\" } ] } }}"

REM curl -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentEducationOrganizationResponsibilityAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo "StudentSchoolAssociationExtensions"

curl -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSchoolAssociations"  -H "accept: application/json"  -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"  -H "Content-Type: application/json"  -d "{    \"schoolReference\": {\"schoolId\": 320240 },    \"studentReference\": { \"studentUniqueId\": \"123\"    },    \"entryDate\": \"2019-02-25\",    \"entryGradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\",    \"_ext\": {     \"de\": {        \"enrollmentTypeDescriptor\": \"uri://doe.k12.de.us/EnrollmentTypeDescriptor#C\",        \"nextYearGradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#02\",        \"nextYearSchoolReference\": {          \"schoolId\": 330330 }      }    }  }"

curl.exe -X GET  "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentSchoolAssociations?offset=0&limit=25&totalCount=false"   -H "accept: application/json"   -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"

echo "studentCTEProgramAssociationExtensions"

curl.exe -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentCTEProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 320240 }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"CTE\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Career and Technical Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" } ,  \"ctePrograms\": [ { \"careerPathwayDescriptor\": \"uri://doe.k12.de.us/CareerPathwayDescriptor#01.02607\", \"cteProgramCompletionIndicator\": false, \"primaryCTEProgramIndicator\": false, \"_ext\": {\"De\": { \"certificationDescriptor\": \"uri://doe.k12.de.us/certificationDescriptor#01.00000002\", \"localArticulation\": true,   \"pathwayConcentrator\": false }  }  } ] }  \"
  
curl.exe -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/studentCTEProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


REM {
    REM "schoolReference": {
      REM "schoolId": 320240
    REM },
    REM "studentReference": {
      REM "studentUniqueId": "123"
    REM },
    REM "entryDate": "2019-02-25",
    REM "entryGradeLevelDescriptor": "uri://doe.k12.de.us/GradeLevelDescriptor#01",
    REM "_ext": {
      REM "de": {

        REM "enrollmentTypeDescriptor": "uri://doe.k12.de.us/EnrollmentTypeDescriptor#C",
        REM "nextYearGradeLevelDescriptor": "uri://doe.k12.de.us/GradeLevelDescriptor#02",
        REM "nextYearSchoolReference": {
          REM "schoolId": 320240
          REM }

      REM }
    REM }
  REM }

echo " programEvaluations  "

curl.exe -i -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/ProgramEvaluations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{ \"programEvaluationPeriodDescriptor\": \"uri://doe.k12.de.us/ProgramEvaluationPeriodDescriptor#CUR\",   \"programEvaluationTitle\": \"Test\",  \"programEvaluationTypeDescriptor\": \"uri://doe.k12.de.us/ProgramEvaluationTypeDescriptor#EL\", \"programReference\": { \"educationOrganizationId\": 32, \"programName\": \"Early Child Spec Ed\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Early Education\" } }"

curl.exe -i -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/programEvaluations?offset=0&limit=1&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"


echo " studentProgramEvaluations  "
curl.exe -i -X POST "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/studentProgramEvaluations" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67" -H "Content-Type: application/json" -d "{  \"evaluationDate\": \"01-JAN-2025\", \"educationOrganizationReference\": { \"educationOrganizationId\": 32 }, \"programEvaluationReference\": { \"programEducationOrganizationId\": 32, \"programEvaluationPeriodDescriptor\": \"uri://doe.k12.de.us/ProgramEvaluationPeriodDescriptor#CUR\", \"programEvaluationTitle\": \"Test\",  \"programEvaluationTypeDescriptor\": \"uri://doe.k12.de.us/ProgramEvaluationTypeDescriptor#EL\", \"programName\": \"Early Child Spec Ed\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Early Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" } }"

curl.exe -i -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/de/studentProgramEvaluations?offset=0&limit=1&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"



echo "competencyObjectives"

curl -i -X POST  "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/competencyObjectives"   -H "accept: application/json"   -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"   -H "Content-Type: application/json"   -d "{  \"objective\": \"string\",  \"objectiveGradeLevelDescriptor\":\"uri://doe.k12.de.us/GradeLevelDescriptor#05\", \"educationOrganizationReference\": {    \"educationOrganizationId\": 330330  },  \"competencyObjectiveId\":\"string\",  \"description\": \"string\",  \"successCriteria\": \"stringxxx\"}"

curl -i -X GET   -i -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/competencyObjectives"   -H "accept: application/json"   -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"  




echo "Bell Schedule"

curl -i -X POST  "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/bellSchedules"   -H "accept: application/json"   -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"   -H "Content-Type: application/json" -d "{  \"bellScheduleName\": \"string\",  \"classPeriods\": [    {      \"classPeriodReference\":{        \"classPeriodName\": \"period 1\",        \"schoolId\": 320240      }    }  ], \"schoolReference\": {    \"schoolId\": 320240  }}"

curl -i -X GET   -i -X GET "https://edfisandbox.doe.k12.de.us:443/EdFiAPI_EDFI_Sandbox/Delaware-api-62/data/v3/ed-fi/bellSchedules"   -H "accept: application/json"   -H "authorization: Bearer 179b9dd5986e441bbac2a90f8b7d7a67"  
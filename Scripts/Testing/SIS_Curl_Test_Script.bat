

set bearertoken="b9962b13c1844e5ba5aa34fcdcd71fe2"


echo"****************   Categories and Resources  *********************"

echo " descriptor addressType "
curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/addressTypeDescriptors?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer b9962b13c1844e5ba5aa34fcdcd71fe2"


echo " localEducationAgency  "

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/localEducationAgencies?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer b9962b13c1844e5ba5aa34fcdcd71fe2"


echo " schools  "

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/schools?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer b9962b13c1844e5ba5aa34fcdcd71fe2"



echo " Program Catalog"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/programs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"




echo "*************   Categories and Resources  *********************"
echo " cipCourses"  todo claims

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/cipCourses" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"cipCode\": \"string\", \"localEducationAgencyReference\": { \"localEducationAgencyId\": 33 } }, \"cluster\": 0, \"courseName\": \"string\", \"fundingLevel\": 0, \"pathway\": 0}"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/cipCourses?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"

echo " Courses"  

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courses" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"courseCode\": \"cousecode 1\", \"educationOrganizationReference\": { \"educationOrganizationId\": \"230759\", }, \"identificationCodes\": [ { \"courseIdentificationSystemDescriptor\": \"uri://ed-fi.org/CourseIdentificationSystemDescriptor#School course code\", \"assigningOrganizationIdentificationCode\": \"230759\", \"identificationCode\": \"scourscode 1\" } ], \"courseTitle\": \"My Course 1\", \"numberOfParts\": 1, \"offeredGradeLevels\": [ { \"gradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\" } ], \"_ext\": { \"De\": { \"levelNumber\": 1, \"unitCountExceptionSchoolReference\": { \"schoolId\": 230759, } } }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courses?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"



echo " locations"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/locations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"classroomIdentificationCode\": \"string\", \"schoolReference\": { \"schoolId\": 230760 }, \"maximumNumberOfSeats\": 10, \"optimalNumberOfSeats\": 5}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/locations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"



echo " class periods

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/classPeriods" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"classPeriodName\": \"period 1\", \"schoolReference\": { \"schoolId\": 230759 }, \"_ext\": { \"De\": { \"attendancePeriodOrder\": 1, \"description\": \"string\", \"cycles\": [ { \"cycleDescriptor\": \"uri://doe.k12.de.us/CycleDescriptor#STD\", \"timeslot\": 1 } ] } } }"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/classPeriods?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"



echo " graduation plans"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/graduationPlans" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"graduationPlanTypeDescriptor\": \"uri://doe.k12.de.us/GraduationPlanTypeDescriptor#MS\", \"educationOrganizationReference\": { \"educationOrganizationId\": 23 }, \"graduationSchoolYearTypeReference\": { \"schoolYear\": 2019 }, \"individualPlan\": true, \"totalRequiredCreditConversion\": 100, \"totalRequiredCredits\": 45}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/graduationPlans?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"



echo " calendars"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/calendars" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"calendarCode\": \"14\", \"schoolReference\": { \"schoolId\": 230760 }, \"schoolYearTypeReference\": { \"schoolYear\": 2022 }, \"calendarTypeDescriptor\": \"uri://doe.k12.de.us/CalendarTypeDescriptor#Z\",}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/calendars?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"



echo " calendar dates"

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/calendarDates" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"calendarEvents\": [ { \"calendarEventDescriptor\": \"uri://doe.k12.de.us/CalendarEventDescriptor#Take Attendance\" } ], \"date\": \"2021-04-14\", \"calendarReference\": { \"calendarCode\": \"14\", \"schoolId\": 230760, \"schoolYear\": 2022 }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/calendarDates?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer c023c1bf1a14417892a7a30b60e3afc3"




echo " grading periods"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/gradingPeriods" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"gradingPeriodDescriptor\": \"uri://doe.k12.de.us/GradingPeriodDescriptor#E2\", \"periodSequence\": 1, \"schoolReference\": { \"schoolId\": 230759 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"beginDate\": \"01-JAN-2019\", \"endDate\": \"02-FEB-2019\", \"totalInstructionalDays\": 15, \"_ext\": { \"De\": { \"endWeek\": 1, \"startWeek\": 4 } }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/gradingPeriods?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"





echo " sessions"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/sessions" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"sessionName\": \"Fall\", \"schoolReference\": { \"schoolId\": 230759, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"schoolYearTypeReference\": { \"schoolYear\": 2019, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"beginDate\": \"2019-02-24\", \"endDate\": \"2019-02-25\", \"termDescriptor\": \"uri://ed-fi.org/TermDescriptor#Fall Semester\",}{ \"sessionName\": \"Fall\", \"schoolReference\": { \"schoolId\": 230760, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"schoolYearTypeReference\": { \"schoolYear\": 2019, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"beginDate\": \"2019-02-24\", \"endDate\": \"2019-02-25\", \"termDescriptor\": \"uri://ed-fi.org/TermDescriptor#Fall Semester\",}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/sessions?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"




echo " Course Offerings  "

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courseOfferings" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"localCourseCode\": \"local course code 1\", \"courseReference\": { \"courseCode\": \"cousecode 1\", \"educationOrganizationId\": \"230759\", }, \"schoolReference\": { \"schoolId\": 230759 }, \"sessionReference\": { \"schoolId\": 230759, \"schoolYear\": 2019, \"sessionName\": \"Fall\" }, \"localCourseTitle\": \"local course 1\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courseOfferings?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"





echo " sections"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/sections" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"sectionIdentifier\": \"section 1\", \"courseOfferingReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 230759, \"schoolYear\": 2019, \"sessionName\": \"Fall\" }, \"_ext\": { \"De\": { \"levelDetail\": 1, \"subjectAreas\": [ { \"academicSubjectDescriptor\": \"uri://doe.k12.de.us/AcademicSubjectDescriptor#3\", \"subjectAreaLastModifiedDate\": \"2019-02-25\", \"subjectOrder\": 0 } ] } } }"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/sections?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"







echo "**********   Students  *********************"

echo people
curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/people" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Student\"}"


echo " students"

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/students" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d " { \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Student\" }, \"studentUniqueId\": \"123\", \"birthCity\": \"string\", \"birthDate\": \"2010-02-25\", \"birthInternationalProvince\": \"string\", \"dateEnteredUS\": \"2011-02-25\", \"firstName\": \"Mary\", \"generationCodeSuffix\": \"string\", \"lastSurname\": \"smith\", \"maidenName\": \"string\", \"middleName\": \"string\", \"multipleBirthStatus\": true }"




echo " studentSchoolAssociation"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSchoolAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"entryDate\": \"2019-02-25\", \"schoolReference\": { \"schoolId\": \"230759\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"entryGradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\", \"_ext\": { \"De\": { \"enrollmentTypeDescriptor\": \"uri://doe.k12.de.us/EnrollmentTypeDescriptor#C\" }}}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"



curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/students?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"





echo " studentEducationOrganizationAssociations"

 curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentEducationOrganizationAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"educationOrganizationReference\": { \"educationOrganizationId\": 23 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"sexDescriptor\": \"uri://doe.k12.de.us/SexDescriptor#F\", \"_ext\": { \"De\": { \"ferpaAddress\": true, \"ferpaName\": true, \"ferpaPhone\": true, \"ferpaPhoto\": true } }}" 
 
curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentEducationOrganizationAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"







echo " parents"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/parents" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"parentUniqueId\": \"456\", \"addresses\": [ { \"addressTypeDescriptor\": \"uri://ed-fi.org/AddressTypeDescriptor#M\", \"stateAbbreviationDescriptor\": \"uri://ed-fi.org/StateAbbreviationDescriptor#DE\", \"apartmentRoomSuiteNumber\": \"string\", \"buildingSiteNumber\": \"string\", \"city\": \"string\", \"congressionalDistrict\": \"string\", \"doNotPublishIndicator\": true, \"latitude\": \"string\", \"longitude\": \"string\", \"nameOfCounty\": \"string\", \"postalCode\": \"string\", \"streetNumberName\": \"string\", \"periods\": [ { \"beginDate\": \"01-JAN-2019\", \"endDate\": \"01-JAN-2020\" } ], \"_ext\": { \"De\": { \"complex\": \"string\", \"development\": \"string\" } } } ], \"firstName\": \"string\", \"generationCodeSuffix\": \"string\", \"lastSurname\": \"string\", \"loginId\": \"string\", \"maidenName\": \"string\", \"middleName\": \"string\", \"personalTitlePrefix\": \"string\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"



echo " studentParentAssociation"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentParentAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"parentReference\": { \"parentUniqueId\": \"456\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"contactPriority\": 1, \"emergencyContactStatus\": true, \"livesWith\": true, \"primaryContactStatus\": true, \"relationDescriptor\": \"uri://doe.k12.de.us/RelationDescriptor#A\", \"_ext\": { \"De\": { \"contactTypeDescriptor\": \"uri://doe.k12.de.us/ContactTypeDescriptor#C\" }}}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentParentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"


echo " studentSectionAssociations"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSectionAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"sectionReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 230759, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"attemptStatusDescriptor\": \"uri://doe.k12.de.us/AttemptStatusDescriptor#A\", \"homeroomIndicator\": false}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"


echo "************   Staff  *********************"

echo people
curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/people" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"personId\": \"111\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Staff\"}"


echo " staff "

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffs" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"staffUniqueId\": \"111\", \"firstName\": \"string\", \"generationCodeSuffix\": \"string\", \"lastSurname\": \"string\", \"yearsOfPriorProfessionalExperience\": 1, \"yearsOfPriorTeachingExperience\": 2, \"personReference\": { \"personId\": \"111\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Staff\" }}"



echo " staffEducationOrganizationAssignmentAssociations"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffEducationOrganizationAssignmentAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"beginDate\": \"01-JAN-2019\", \"staffClassificationDescriptor\": \"uri://ed-fi.org/StaffClassificationDescriptor#Assistant Principal\", \"educationOrganizationReference\": { \"educationOrganizationId\": 23 }, \"staffReference\": { \"staffUniqueId\": \"111\" }, \"_ext\": { \"De\": { \"active\": true } }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffEducationOrganizationAssignmentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"




echo " staffSchoolAssignment"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffSchoolAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"programAssignmentDescriptor\": \"uri://ed-fi.org/ProgramAssignmentDescriptor#Regular Education\", \"calendarReference\": { \"calendarCode\": \"14\", \"schoolId\": 230759 }, \"schoolReference\": { \"schoolId\": 230759 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"staffReference\": { \"staffUniqueId\": \"111\" }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"



echo " staffProgramAssociations"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"beginDate\": \"01-JAN-2019\", \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"CTE\", \"programTypeDescriptor\": \"uri://ed-fi.org/ProgramTypeDescriptor#Career and Technical Education\" }, \"staffReference\": { \"staffUniqueId\": \"111\" }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"




echo " staffSectionAssociations"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffSectionAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"sectionReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 230759, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\" }, \"staffReference\": { \"staffUniqueId\": \"111\" }, \"beginDate\": \"01-JAN-2019\", \"classroomPositionDescriptor\": \"uri://ed-fi.org/ClassroomPositionDescriptor#Teacher of Record\", \"highlyQualifiedTeacher\": true}"


curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"


echo "***********   Programs & Cohort Groups  *********************"
echo " Program"

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/programs" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{ \"programName\": \"Mon Tues In Person\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#HYB\", \"educationOrganizationReference\": { \"educationOrganizationId\": 23 }, \"programId\": \"string\", \"_ext\": { \"EdFiXLearningModality\": { \"learningModalities\": [ { \"modalityTypeDescriptor\": \"uri://doe.k12.de.us/modalityTypeDescriptor#I\", \"modalityTimeTypeDescriptor\": \"uri://doe.k12.de.us/ModalityTimeTypeDescriptor#Percentage\", \"modalityTime\": 98 } ] } }}"




curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/programs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"
check 


echo " studentTransportation"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/studentTransportations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"travelDayOfWeekDescriptor\": \"uri://doe.k12.de.us/TravelDayOfWeekDescriptor#FRIDAY\", \"travelDirectionDescriptor\": \"uri://doe.k12.de.us/TravelDirectionDescriptor#T\", \"travelSegment\": 1, \"travelTrip\": 2, \"localEducationAgencyReference\": { \"localEducationAgencyId\": 10 }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/studentTransportations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"



echo " student504ProgramAssociation"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/student504ProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 230759 }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"504 Plan\", \"programTypeDescriptor\": \"uri://ed-fi.org/ProgramTypeDescriptor#Section 504 Placement\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/student504ProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"




echo " studentCTEProgramAssociation"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentCTEProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 230759 }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"CTE\", \"programTypeDescriptor\": \"uri://ed-fi.org/ProgramTypeDescriptor#Career and Technical Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentCTEProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"





echo " studentLanguageInstructionProgramAssociations"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentLanguageInstructionProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 230759 }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"Language Immersion\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Language Immersion\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"_ext\": { \"De\": { \"languageImmersions\": [ { \"immersionLanguageDescriptor\": \"uri://ed-fi.org/LanguageDescriptor#aar\", \"gradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\", \"comment\": \"string\", \"schoolYearTypeReference\": { \"schoolYear\": 2019 } } ] } }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentLanguageInstructionProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"





echo " studentSpecialEduicationProgramAssociation"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSpecialEducationProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 230759, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"Special Education\", \"programTypeDescriptor\": \"uri://ed-fi.org/ProgramTypeDescriptor#Special Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"specialEducationHoursPerWeek\": 1, \"_etag\": \"string\", \"_ext\": { \"De\": { \"diplomaCertificateCategoryDescriptor\": \"uri://doe.k12.de.us/DiplomaCertificateCategoryDescriptor#Certificate\", } }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSpecialEducationProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"





echo " cohorts"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/cohorts" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"cohortIdentifier\": \"test\", \"educationOrganizationReference\": { \"educationOrganizationId\": 23 }, \"academicSubjectDescriptor\": \"uri://doe.k12.de.us/AcademicSubjectDescriptor#CST\", \"cohortTypeDescriptor\": \"uri://doe.k12.de.us/CohortTypeDescriptor#ACT\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/cohorts?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"





echo " studentCohortAssociation"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentCohortAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"cohortReference\": { \"cohortIdentifier\": \"test\", \"educationOrganizationId\": 23 }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentCohortAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"




echo " staffCohortAssociation"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffCohortAssociations" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48" -H "Content-Type: application/json" -d "{  \"beginDate\": \"01-JAN-2019\", \"cohortReference\": { \"cohortIdentifier\": \"test\", \"educationOrganizationId\": 23 }, \"staffReference\": { \"staffUniqueId\": \"111\" }, \"studentRecordAccess\": true}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/staffCohortAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 1520522da6af400f9c8343fa47012c48"






echo "****************   Attendance & Grades  *********************"

echo " studentSchoolAttendanceEvents"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSchoolAttendanceEvents" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"attendanceEventCategoryDescriptor\": \"uri://doe.k12.de.us/AttendanceEventCategoryDescriptor#SGE\", \"eventDate\": \"01-JAN-2019\", \"schoolReference\": { \"schoolId\": 230759 }, \"sessionReference\": { \"schoolId\": 230759, \"schoolYear\": 2019, \"sessionName\": \"Fall\" }, \"studentReference\": { \"studentUniqueId\": \"123\" } }, \"attendanceEventReason\": \"test\", \"eventDuration\": 1, \"_etag\": \"string\", \"_ext\": { \"De\": { \"absentTime\": 10, \"scheduledTime\": 10 } }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentSchoolAttendanceEvents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"




echo " studentSectionClassPeriodAttendanceEvents"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/studentSectionClassPeriodAttendanceEvents" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"attendanceEventCategoryDescriptor\": \"uri://doe.k12.de.us/AttendanceEventCategoryDescriptor#SGE\", \"eventDate\": \"01-JAN-2019\", \"classPeriodReference\": { \"classPeriodName\": \"period 1\", \"schoolId\": 230759 }, \"sectionReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 230759, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/studentSectionClassPeriodAttendanceEvents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " grades"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/grades" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"gradeTypeDescriptor\": \"uri://doe.k12.de.us/GradeTypeDescriptor#FIN\", \"gradingPeriodReference\": { \"gradingPeriodDescriptor\": \"uri://doe.k12.de.us/GradingPeriodDescriptor#E2\", \"periodSequence\": 1, \"schoolId\": 230759, \"schoolYear\": 2019 }, \"studentSectionAssociationReference\": { \"beginDate\": \"01-JAN-2019\", \"localCourseCode\": \"local course code 1\", \"schoolId\": 230759, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\", \"studentUniqueId\": \"123\" }, \"letterGradeEarned\": \"A\", \"numericGradeEarned\": 0}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/grades?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " gradeTypeDetails"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/gradeTypeDetails" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"gradeTypeDescriptor\": \"uri://doe.k12.de.us/GradeTypeDescriptor#MP1\", \"schoolReference\": { \"schoolId\": 230759 }, \"gradeTypeOrder\": 1, \"gradeTypeWhenTakenDescriptor\": \"uri://doe.k12.de.us/GradeTypeWhenTakenDescriptor#M\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/gradeTypeDetails?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " levelDetails"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/levelDetails" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"levelNumber\": 1, \"mark\": \"12\", \"schoolReference\": { \"schoolId\": 230759 },} }, \"levelDescription\": \"string\", \"passingMark\": true, \"pointValue\": 1, \"reportCardPrintValue\": \"string\", \"transcriptPrintValue\": \"string\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/levelDetails?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " studentAcademicRecords "

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentAcademicRecords" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"termDescriptor\": \"uri://ed-fi.org/TermDescriptor#Other\", \"educationOrganizationReference\": { \"educationOrganizationId\": 23 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"classRanking\": { \"classRank\": 1, \"classRankingDate\": \"01-JAN-2019\", \"percentageRanking\": 0, \"totalNumberInClass\": 123 }, \"cumulativeAttemptedCreditConversion\": 0, \"cumulativeAttemptedCredits\": 0, \"cumulativeAttemptedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"cumulativeEarnedCreditConversion\": 0, \"cumulativeEarnedCredits\": 0, \"cumulativeEarnedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"cumulativeGradePointAverage\": 4, \"cumulativeGradePointsEarned\": 4, \"projectedGraduationDate\": \"01-JUN-2019\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentAcademicRecords?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " courseTranscripts"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courseTranscripts" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"courseAttemptResultDescriptor\": \"uri://ed-fi.org/CourseAttemptResultDescriptor#Pass\", \"courseReference\": { \"courseCode\": \"cousecode 1\", \"educationOrganizationId\": 230759 }, \"externalEducationOrganizationReference\": { \"educationOrganizationId\": 230760 }, \"studentAcademicRecordReference\": { \"educationOrganizationId\": 23, \"schoolYear\": 2019, \"studentUniqueId\": \"123\", \"termDescriptor\": \"uri://ed-fi.org/TermDescriptor#Other\" }, \"alternativeCourseCode\": \"cousecode 1\", \"alternativeCourseTitle\": \"string\", \"attemptedCreditConversion\": 1, \"attemptedCredits\": 1, \"attemptedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"courseTitle\": \"My Course 1\", \"earnedCreditConversion\": 1, \"earnedCredits\": 1, \"earnedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"finalLetterGradeEarned\": \"A\", \"finalNumericGradeEarned\": 99}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/courseTranscripts?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " postSecondaryDetails"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/postSecondaryDetails" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"postSecondaryEventCategoryDescriptor\": \"uri://ed-fi.org/PostSecondaryEventCategoryDescriptor#FAFSA Application\", \"schoolReference\": { \"schoolId\": 230759 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"institutions\": [ { \"acceptanceStatusDescriptor\": \"uri://doe.k12.de.us/AcceptanceStatusDescriptor#Accepted\", \"dateTranscriptMailed\": \"01-JAN-2019\", \"plansToAttend\": true, \"postSecondaryInstitutionReference\": { \"postSecondaryInstitutionId\": 2000000001 } }]}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/postSecondaryDetails?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"


echo "****************   Other  *********************"


echo " disciplineIncident"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/disciplineIncidents" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"incidentIdentifier\": \"string\", \"schoolReference\": { \"schoolId\": \"230759\" }, \"incidentDate\": \"2019-02-25\", \"incidentDescription\": \"string\", }, \"caseNumber\": \"case1\", \"_ext\": { \"De\": { \"disciplineIncidentChangeUID\": \"Scott K\", \"disciplineIncidentCreationUID\": \"Scott K\", \"disciplineIncidentLastModifiedDate\": \"2019-02-25\", \"lawEnforcementBadgeNumber\": \"string\", \"lawEnforcementDepartment\": \"string\", \"lawEnforcementNotifyDate\": \"2019-02-25\", \"lawEnforcementOfficerName\": \"string\", \"reasons\": [ { \"incidentRelatedToDescriptor\": \"uri://doe.k12.de.us/IncidentRelatedToDescriptor#Age\", \"incidentRelatedToChangeUID\": \"Scott K\", \"incidentRelatedToLastModifiedDate\": \"2019-02-25\" } ] } }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/disciplineIncidents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " nonStudents"

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/people" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"personId\": \"897\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.NonStudent\"}"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/nonStudents" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"nonStudentLocalId\": \"string\", \"localEducationAgencyReference\": { \"localEducationAgencyId\": 10 }, \"schoolReference\": { \"schoolId\": 230759 }, \"firstName\": \"test\", \"lastSurname\": \"string\", \"sexDescriptor\": \"uri://doe.k12.de.us/SexDescriptor#F\", \"personReference\": { \"personId\": \"897\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.NonStudent\" }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/nonStudents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"


echo " personDisciplineIncidentAssociations"


curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/personDisciplineIncidentAssociations" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"participantNumber\": 1, \"participationCodeDescriptor\": \"uri://doe.k12.de.us/ParticipationCodeDescriptor#O\", \"disciplineIncidentReference\": { \"incidentIdentifier\": \"string\", \"schoolId\": 230759 }, \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Student\" }, \"offenderBehaviors\": [ { \"behaviorDescriptor\": \"uri://doe.k12.de.us/BehaviorDescriptor#C0101\", \"behaviorDetailDescription\": \"string\", \"offenseNumber\": 1 } ]}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/personDisciplineIncidentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"





echo " personDisciplineActions"

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/personDisciplineActions" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"actionIdentifier\": 2, \"actionStartDate\": \"2021-04-12\", \"disciplines\": [ { \"disciplineDescriptor\": \"uri://doe.k12.de.us/DisciplineDescriptor#03\" } ], \"disciplineIncidentReference\": { \"incidentIdentifier\": \"string\", \"schoolId\": 230759 }, \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Student\" }, \"schoolReference\": { \"schoolId\": 230759 }, \"actionEndDate\": \"2021-04-12\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/personDisciplineActions?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"







echo " RestraintSeclusions"
curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/restraintSeclusions" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"eventDate\": \"2021-04-12\", \"eventTime\": \"10:00:01\", \"restraintEventCategoryDescriptor\": \"uri://doe.k12.de.us/RestraintEventCategoryDescriptor#Seclusion\", \"restraintEventReasonDescriptor\": \"uri://doe.k12.de.us/RestraintEventReasonDescriptor#Imminent risk of bodily harm to others.\", \"staffProvidingRestraints\": [ { \"staffOrdinal\": 1, \"trainedActionTechnique\": true } ], \"schoolReference\": { \"schoolId\": 230759 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"additionalDetail\": \"string\", \"behaviorDuringRestraintDetail\": \"string\", \"supportPlanChangeDescriptor\": \"uri://doe.k12.de.us/SupportPlanChangeDescriptor#NONE\", \"changeDescription\": \"string\", \"consecutiveRestraintCount\": 0, \"deescalationTechniqueDescriptor\": \"uri://doe.k12.de.us/DeescalationTechniqueDescriptor#01\", \"incidentLocationDescriptor\": \"uri://doe.k12.de.us/IncidentLocationDescriptor#01\", \"nonViolentTechniqueDescriptor\": \"uri://doe.k12.de.us/NonViolentTechniqueDescriptor#11\", \"notificationMethodDescriptor\": \"uri://doe.k12.de.us/NotificationMethodDescriptor#Email\", \"parentGuardianNotified\": true, \"parentGuardianNotifiedDate\": \"2021-04-12\", \"parentGuardianNotifiedTime\": \"10:00:01\", \"policyChangeDetail\": \"string\", \"priorToEventDetail\": \"string\", \"restraintDuration\": \"string\", \"restraintReportDate\": \"2021-04-12\"}"



curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/restraintSeclusions?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " allegedBullyingVictims"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/allegedBullyingVictims" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"allegedIncidentDate\": \"01-JAN-2019\", \"schoolReference\": { \"schoolId\": 230759 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"bullyingCategories\": [ { \"bullyingCategoryDescriptor\": \"uri://doe.k12.de.us/BullyingCategoryDescriptor#Physical\" } ], \"followupComment\": \"string\", \"incidentDescription\": \"string\", \"incidentLocationDescriptor\": \"uri://doe.k12.de.us/IncidentLocationDescriptor#01\", \"multiplePriorEvent\": true, \"reasonIncidentRelatedToDescriptor\": \"uri://doe.k12.de.us/IncidentRelatedToDescriptor#Crd\", \"reportDate\": \"01-JAN-2019\", \"reportedBy\": \"string\", \"_etag\": \"string\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/allegedBullyingVictims?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " medicationAlerts"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/medicalAlerts" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"medicalAlertCategoryDescriptor\": \"uri://doe.k12.de.us/MedicalAlertCategoryDescriptor#ALL\", \"sensitive\": true}"



echo " PersonmedicationAlerts"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/personMedicalAlerts" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"startDate\": \"2021-04-13\", \"medicalAlertReference\": { \"medicalAlertCategoryDescriptor\": \"uri://doe.k12.de.us/MedicalAlertCategoryDescriptor#ALL\" }, \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Student\" }, \"endDate\": \"2022-04-13\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/medicalAlerts?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/personMedicalAlerts?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"



echo " medicationBoxes"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/medicationBoxes" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"medicationBoxId\": 1, \"localEducationAgencyReference\": { \"localEducationAgencyId\": 10 }, \"medicationCode\": \"string\", \"medicationDescription\": \"string\"}"





curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/medicationBoxes?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " personMedicationBoxAssociations"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/personMedicationBoxAssociations" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"medicationBoxReference\": { \"localEducationAgencyId\": 10, \"medicationBoxId\": 1 },\"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Student\" }, \"issues\": [ { \"issueDate\": \"2019-03-21\" } ], \"medicationRequired\": true}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/personMedicationBoxAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " medicalScreenings"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/medicalScreenings" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"medicalTestCategoryDescriptor\": \"uri://doe.k12.de.us/MedicalTestCategoryDescriptor#SCREENBP\", \"testDate\": \"2021-04-14\", \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Student\" }, \"schoolOfServiceSchoolReference\": { \"schoolId\": 230759 }, \"screeningEducationOrganizationReference\": { \"educationOrganizationId\": 33 }, \"athleticStatus\": true, \"screeningLocationDescriptor\": \"uri://doe.k12.de.us/LocationDescriptor#N\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/medicalScreenings?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " personImmunizations"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/personImmunizations" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"immunizationCodeDescriptor\": \"uri://doe.k12.de.us/ImmunizationCodeDescriptor#ADEN4\", \"immunizationDate\": \"01-JAN-2019\", \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Student\" }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/personImmunizations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " medicalOfficeVisits"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/medicalOfficeVisits" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"officeInDate\": \"2019-04-09T13:52:08.013Z\", \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Student\" }, \"schoolOfServiceSchoolReference\": { \"schoolId\": 230759 }, \"contactTypes\": [ { \"contactTypeDescriptor\": \"uri://doe.k12.de.us/ContactTypeDescriptor/MedicalContact#PG\" } ], \"medicalDispositions\": [ { \"medicalDispositionDescriptor\": \"uri://doe.k12.de.us/MedicalDispositionDescriptor#EVAL\" } ], \"medicalTreatmentCodes\": [ { \"medicalTreatmentCodeDescriptor\": \"uri://doe.k12.de.us/MedicalTreatmentCodeDescriptor#ABUSE\" } ], \"medicalVisitReasons\": [ { \"medicalVisitReasonDescriptor\": \"uri://doe.k12.de.us/MedicalVisitReasonDescriptor#BLIS\" } ], \"officeOutDate\": \"2019-04-09T13:52:08.013Z\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/medicalOfficeVisits?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " medicalReferralFollowUps"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/medicalReferralFollowUps" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{  \"followupCategoryDescriptor\": \"uri://doe.k12.de.us/FollowupCategoryDescriptor#NOTREAT\", \"medicalTestCategoryDescriptor\": \"uri://doe.k12.de.us/MedicalTestCategoryDescriptor#504\", \"testDate\": \"2019-04-09T13:54:18.124Z\", \"personReference\": { \"personId\": \"123\", \"sourceSystemDescriptor\": \"uri://doe.k12.de.us/SourceSystemDescriptor#eSchoolPlus.Student\" }}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/medicalReferralFollowUps?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"





echo " EL StudentEarlyChildhoodProgramAssociation"
curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/studentEarlyChildhoodProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"studentReference\": { \"studentUniqueId\": \"123\" }, \"beginDate\": \"01-JAN-2020\", \"educationOrganizationReference\": { \"educationOrganizationId\": 230759 }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"ECAP\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Early Education\" }, \"districtNotificationDate\": \"01-JAN-2020\", \"iepImplementationDate\": \"01-JAN-2020\", \"iepMeetingDate\": \"01-JAN-2020\", \"reasonExitedDescriptor\": \"uri://doe.k12.de.us/ReasonExitedDescriptor#E\", \"reasonForLateIEPDescriptor\": \"uri://doe.k12.de.us/ReasonForLateIEPDescriptor#01\", \"regulation619DeterminedEligible\": true, \"regulation619PartCReferralDate\": \"01-JAN-2020\", \"regulation619ReferralDate\": \"01-JAN-2020\", \"servedOutsideOfRegularSession\": true}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/studentEarlyChildhoodProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

echo " studentEarlyChildhoodProgramAssociation"

curl.exe -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/studentEarlyChildhoodProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"beginDate\": \"2019-02-25\", \"educationOrganizationReference\": { \"educationOrganizationId\": 23 }, \"programReference\": { \"educationOrganizationId\": 23, \"programName\": \"ECAP\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Early Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"programCharacteristicDescriptor\": \"uri://doe.k12.de.us/ProgramCharacteristicDescriptor#1\"}"

curl.exe -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/de/studentEarlyChildhoodProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"


echo "StudentAssessmentAdministration"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi-xassessment-roster/assessmentAdministrations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"


curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi-xassessment-roster/studentAssessmentRegistrations" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"assessmentAdministrationReference\": { \"administrationIdentifier\": \"100\", \"assessmentIdentifier\": \"100\", \"assigningEducationOrganizationId\": 95, \"namespace\": \"uri://doe.k12.de.us/AsessmentRoster\" }, \"studentEducationOrganizationAssociationReference\": { \"educationOrganizationId\": 23, \"studentUniqueId\": \"123\" }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi-xassessment-roster/studentAssessmentRegistrations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222


echo "Student EdOrg Responsibility"

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentEducationOrganizationResponsibilityAssociations" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222" -H "Content-Type: application/json" -d "{ \"beginDate\": \"2021-04-19\", \"responsibilityDescriptor\": \"uri://doe.k12.de.us/ResponsibilityDescriptor#Resident\", \"educationOrganizationReference\": { \"educationOrganizationId\": 29 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"endDate\": \"2021-04-20\", \"_etag\": \"string\", \"_ext\": { \"De\": { \"transfers\": [ { \"externalEducationOrganizationName\": \"test\", \"gradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\" } ] } }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-api/data/v3/2022/ed-fi/studentEducationOrganizationResponsibilityAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 0d601d82b3aa4d1c9757fce53f0d6222"

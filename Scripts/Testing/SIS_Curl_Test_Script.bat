****************   Categories and Resources  *********************

--descriptor addressType - read only (get/getbyid) --todo all?
curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/addressTypeDescriptors?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


--localEducationAgency  - read only (get/getbyid)

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/localEducationAgencies?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


--schools  - read only (get/getbyid)

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/schools?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"



--Program Catalog

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/programs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


****************   Categories and Resources  *********************
--cipCourses

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/cipCourses" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"cipCode\": \"string\", \"localEducationAgencyReference\": { \"localEducationAgencyId\": 33 } }, \"cluster\": 0, \"courseName\": \"string\", \"fundingLevel\": 0, \"pathway\": 0}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/cipCourses?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--Coursesn

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/courses" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"course 1\", \"courseCode\": \"cousecode 1\", \"educationOrganizationReference\": { \"educationOrganizationId\": \"100610\", }, \"identificationCodes\": [ { \"courseIdentificationSystemDescriptor\": \"uri://ed-fi.org/CourseIdentificationSystemDescriptor#School course code\", \"assigningOrganizationIdentificationCode\": \"100610\", \"identificationCode\": \"scourscode 1\" } ], \"courseTitle\": \"My Course 1\", \"numberOfParts\": 1, \"offeredGradeLevels\": [ { \"gradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\" } ], \"_ext\": { \"De\": { \"levelNumber\": 1, \"unitCountExceptionSchoolReference\": { \"schoolId\": 100610, } } }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/courses?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--locations

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/locations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"classroomIdentificationCode\": \"string\", \"schoolReference\": { \"schoolId\": 330330 }, \"maximumNumberOfSeats\": 10, \"optimalNumberOfSeats\": 5}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/locations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--class periods

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/classPeriods" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"classPeriodName\": \"period 1\", \"schoolReference\": { \"schoolId\": 100610 }, \"_ext\": { \"De\": { \"attendancePeriodOrder\": 1, \"description\": \"string\", \"cycles\": [ { \"cycleDescriptor\": \"uri://doe.k12.de.us/CycleDescriptor#STD\", \"timeslot\": 1 } ] } } }"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/classPeriods?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--graduation plans

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/graduationPlans" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"graduationPlanTypeDescriptor\": \"uri://doe.k12.de.us/GraduationPlanTypeDescriptor#MS\", \"educationOrganizationReference\": { \"educationOrganizationId\": 10 }, \"graduationSchoolYearTypeReference\": { \"schoolYear\": 2019 }, \"individualPlan\": true, \"totalRequiredCreditConversion\": 100, \"totalRequiredCredits\": 45}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/graduationPlans?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--calendars

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/calendars" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"1\", \"calendarCode\": \"14\", \"schoolReference\": { \"schoolId\": 330330 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"calendarTypeDescriptor\": \"uri://doe.k12.de.us/CalendarTypeDescriptor#Z\",}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/calendars?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--calendar dates

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/calendarDates" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"1\", \"calendarEvents\": [ { \"calendarEventDescriptor\": \"uri://doe.k12.de.us/CalendarEventDescriptor#I\" } ], \"date\": \"01-JAN-2019\", \"calendarReference\": { \"calendarCode\": \"14\", \"schoolId\": 330330, \"schoolYear\": 2019 }, \"_ext\": { \"De\": { \"cycleDescriptor\": \"uri://doe.k12.de.us/CycleDescriptor#STD\", \"membershipDayValue\": 0 } }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/calendarDates?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--grading periods

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/gradingPeriods" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string1\", \"gradingPeriodDescriptor\": \"uri://doe.k12.de.us/GradingPeriodDescriptor#E2\", \"periodSequence\": 1, \"schoolReference\": { \"schoolId\": 100610 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"beginDate\": \"01-JAN-2019\", \"endDate\": \"02-FEB-2019\", \"totalInstructionalDays\": 15, \"_ext\": { \"De\": { \"endWeek\": 1, \"startWeek\": 4 } }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/gradingPeriods?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--sessions

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/sessions" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"sessionName\": \"Fall\", \"schoolReference\": { \"schoolId\": 100610, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"schoolYearTypeReference\": { \"schoolYear\": 2019, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"beginDate\": \"2019-02-24\", \"endDate\": \"2019-02-25\", \"termDescriptor\": \"uri://ed-fi.org/TermDescriptor#Fall Semester\",}{ \"sessionName\": \"Fall\", \"schoolReference\": { \"schoolId\": 330330, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"schoolYearTypeReference\": { \"schoolYear\": 2019, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"beginDate\": \"2019-02-24\", \"endDate\": \"2019-02-25\", \"termDescriptor\": \"uri://ed-fi.org/TermDescriptor#Fall Semester\",}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/sessions?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--Course Offerings  

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/courseOfferings" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"localCourseCode\": \"local course code 1\", \"courseReference\": { \"courseCode\": \"cousecode 1\", \"educationOrganizationId\": \"100610\", }, \"schoolReference\": { \"schoolId\": 100610 }, \"sessionReference\": { \"schoolId\": 100610, \"schoolYear\": 2019, \"sessionName\": \"Fall\" }, \"localCourseTitle\": \"local course 1\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/courseOfferings?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--sections

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/sections" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"sectionIdentifier\": \"section 1\", \"courseOfferingReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 100610, \"schoolYear\": 2019, \"sessionName\": \"Fall\" }, \"_ext\": { \"De\": { \"levelDetail\": 1, \"subjectAreas\": [ { \"academicSubjectDescriptor\": \"uri://doe.k12.de.us/AcademicSubjectDescriptor#3\", \"subjectAreaLastModifiedDate\": \"2019-02-25\", \"subjectOrder\": 0 } ] } } }"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/sections?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"



****************   Students  *********************

--students

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/students" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"studentUniqueId\": \"123\", \"birthCity\": \"string\", \"birthCountryDescriptor\": \"\", \"birthDate\": \"2010-02-25\", \"birthInternationalProvince\": \"string\", \"birthSexDescriptor\": \"\", \"birthStateAbbreviationDescriptor\": \"\", \"citizenshipStatusDescriptor\": \"\", \"dateEnteredUS\": \"2011-02-25\", \"firstName\": \"Mary\", \"generationCodeSuffix\": \"string\", \"lastSurname\": \"smith\", \"maidenName\": \"string\", \"middleName\": \"string\", \"multipleBirthStatus\": true}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/students?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--studentSchoolAssociation

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentSchoolAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"entryDate\": \"2019-02-25\", \"schoolReference\": { \"schoolId\": \"100610\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"entryGradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\", \"_ext\": { \"De\": { \"enrollmentTypeDescriptor\": \"uri://doe.k12.de.us/EnrollmentTypeDescriptor#C\" }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--studentEducationOrganizationAssociations

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentEducationOrganizationAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"educationOrganizationReference\": { \"educationOrganizationId\": 10 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"sexDescriptor\": \"uri://doe.k12.de.us/SexDescriptor#F\", \"_ext\": { \"De\": { \"ferpaAddress\": true, \"ferpaName\": true, \"ferpaPhone\": true, \"ferpaPhoto\": true, } }, \"addresses\": [ { \"addressTypeDescriptor\": \"uri://ed-fi.org/AddressTypeDescriptor#M\", \"stateAbbreviationDescriptor\": \"uri://ed-fi.org/StateAbbreviationDescriptor#DE\", \"city\": \"string\", \"doNotPublishIndicator\": true, \"postalCode\": \"19713\", \"streetNumberName\": \"string\", \"_ext\": { \"De\": { \"complex\": \"string\", \"development\": \"string\", \"schoolYearTypeReference\": {\"schoolYear\": /"2021/" } } } } ],        }"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentEducationOrganizationAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--parents

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/parents" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"parentUniqueId\": \"456\", \"addresses\": [ { \"addressTypeDescriptor\": \"uri://ed-fi.org/AddressTypeDescriptor#M\", \"stateAbbreviationDescriptor\": \"uri://ed-fi.org/StateAbbreviationDescriptor#DE\", \"apartmentRoomSuiteNumber\": \"string\", \"buildingSiteNumber\": \"string\", \"city\": \"string\", \"congressionalDistrict\": \"string\", \"doNotPublishIndicator\": true, \"latitude\": \"string\", \"longitude\": \"string\", \"nameOfCounty\": \"string\", \"postalCode\": \"string\", \"streetNumberName\": \"string\", \"periods\": [ { \"beginDate\": \"01-JAN-2019\", \"endDate\": \"01-JAN-2020\" } ], \"_ext\": { \"De\": { \"complex\": \"string\", \"development\": \"string\" } } } ], \"firstName\": \"string\", \"generationCodeSuffix\": \"string\", \"lastSurname\": \"string\", \"loginId\": \"string\", \"maidenName\": \"string\", \"middleName\": \"string\", \"personalTitlePrefix\": \"string\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/parents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--studentParentAssociation

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentParentAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"parentReference\": { \"parentUniqueId\": \"456\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"contactPriority\": 1, \"emergencyContactStatus\": true, \"livesWith\": true, \"primaryContactStatus\": true, \"relationDescriptor\": \"uri://doe.k12.de.us/RelationDescriptor#A\", \"_ext\": { \"De\": { \"contactTypeDescriptor\": \"uri://doe.k12.de.us/ContactTypeDescriptor#C\" }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentParentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--studentSectionAssociations

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentSectionAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"beginDate\": \"01-JAN-2019\", \"sectionReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 100610, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"attemptStatusDescriptor\": \"uri://doe.k12.de.us/AttemptStatusDescriptor#A\", \"homeroomIndicator\": false}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


****************   Staff  *********************

--staff 

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffs" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"staffUniqueId\": \"111\", \"firstName\": \"string\", \"generationCodeSuffix\": \"string\", \"lastSurname\": \"string\", \"yearsOfPriorProfessionalExperience\": 1, \"yearsOfPriorTeachingExperience\": 2,}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffs?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--staffEducationOrganizationAssignmentAssociations

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffEducationOrganizationAssignmentAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"beginDate\": \"01-JAN-2019\", \"staffClassificationDescriptor\": \"uri://ed-fi.org/StaffClassificationDescriptor#Assistant Principal\", \"educationOrganizationReference\": { \"educationOrganizationId\": 10 }, \"staffReference\": { \"staffUniqueId\": \"111\" }, \"_ext\": { \"De\": { \"active\": true } }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffEducationOrganizationAssignmentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--staffSchoolAssignment

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffSchoolAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"programAssignmentDescriptor\": \"uri://ed-fi.org/ProgramAssignmentDescriptor#Regular Education\", \"calendarReference\": { \"calendarCode\": \"14\", \"schoolId\": 100610 }, \"schoolReference\": { \"schoolId\": 100610 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"staffReference\": { \"staffUniqueId\": \"111\" }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffSchoolAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--staffProgramAssociations

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"beginDate\": \"01-JAN-2019\", \"programReference\": { \"educationOrganizationId\": 10, \"programName\": \"CTE\", \"programTypeDescriptor\": \"uri://ed-fi.org/ProgramTypeDescriptor#Career and Technical Education\" }, \"staffReference\": { \"staffUniqueId\": \"111\" }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


--staffSectionAssociations

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffSectionAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"sectionReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 100610, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\" }, \"staffReference\": { \"staffUniqueId\": \"111\" }, \"beginDate\": \"01-JAN-2019\", \"classroomPositionDescriptor\": \"uri://ed-fi.org/ClassroomPositionDescriptor#Teacher of Record\", \"highlyQualifiedTeacher\": true}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffSectionAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


****************   Programs & Cohort Groups  *********************

--studentTransportation

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/studentTransportations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"travelDayOfWeekDescriptor\": \"uri://doe.k12.de.us/TravelDayOfWeekDescriptor#FRIDAY\", \"travelDirectionDescriptor\": \"uri://doe.k12.de.us/TravelDirectionDescriptor#T\", \"travelSegment\": 1, \"travelTrip\": 2, \"localEducationAgencyReference\": { \"localEducationAgencyId\": 10 }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/studentTransportations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--student504ProgramAssociation

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/student504ProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 100610 }, \"programReference\": { \"educationOrganizationId\": 10, \"programName\": \"504 Plan\", \"programTypeDescriptor\": \"uri://ed-fi.org/ProgramTypeDescriptor#Section 504 Placement\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/student504ProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--studentCTEProgramAssociation

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentCTEProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 100610 }, \"programReference\": { \"educationOrganizationId\": 10, \"programName\": \"CTE\", \"programTypeDescriptor\": \"uri://ed-fi.org/ProgramTypeDescriptor#Career and Technical Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentCTEProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--studentLanguageInstructionProgramAssociations

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentLanguageInstructionProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 100610 }, \"programReference\": { \"educationOrganizationId\": 10, \"programName\": \"Language Immersion\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Language Immersion\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"_ext\": { \"De\": { \"languageImmersions\": [ { \"immersionLanguageDescriptor\": \"uri://ed-fi.org/LanguageDescriptor#aar\", \"gradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#01\", \"comment\": \"string\", \"schoolYearTypeReference\": { \"schoolYear\": 2019 } } ] } }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentLanguageInstructionProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--studentSpecialEduicationProgramAssociation

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentSpecialEducationProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"beginDate\": \"01-JAN-2019\", \"educationOrganizationReference\": { \"educationOrganizationId\": 100610, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"programReference\": { \"educationOrganizationId\": 10, \"programName\": \"Special Education\", \"programTypeDescriptor\": \"uri://ed-fi.org/ProgramTypeDescriptor#Special Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"specialEducationHoursPerWeek\": 1, \"_etag\": \"string\", \"_ext\": { \"De\": { \"diplomaCertificateCategoryDescriptor\": \"uri://doe.k12.de.us/DiplomaCertificateCategoryDescriptor#Certificate\", } }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentSpecialEducationProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--cohorts

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/cohorts" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"cohortIdentifier\": \"string\", \"educationOrganizationReference\": { \"educationOrganizationId\": 10 }, \"academicSubjectDescriptor\": \"uri://doe.k12.de.us/AcademicSubjectDescriptor#CST\", \"cohortTypeDescriptor\": \"uri://doe.k12.de.us/CohortTypeDescriptor#ART\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/cohorts?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--studentCohortAssociation

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentCohortAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"beginDate\": \"01-JAN-2019\", \"cohortReference\": { \"cohortIdentifier\": \"string\", \"educationOrganizationId\": 10 }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentCohortAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--staffCohortAssociation

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffCohortAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"beginDate\": \"01-JAN-2019\", \"cohortReference\": { \"cohortIdentifier\": \"string\", \"educationOrganizationId\": 10 }, \"staffReference\": { \"staffUniqueId\": \"111\" }, \"studentRecordAccess\": true}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/staffCohortAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


****************   Attendance & Grades  *********************

--studentSchoolAttendanceEvents

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentSchoolAttendanceEvents" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"attendanceEventCategoryDescriptor\": \"uri://doe.k12.de.us/AttendanceEventCategoryDescriptor#SGE\", \"eventDate\": \"01-JAN-2019\", \"schoolReference\": { \"schoolId\": 100610 }, \"sessionReference\": { \"schoolId\": 100610, \"schoolYear\": 2019, \"sessionName\": \"FAll\" }, \"studentReference\": { \"studentUniqueId\": \"123\" } }, \"attendanceEventReason\": \"test\", \"eventDuration\": 1, \"_etag\": \"string\", \"_ext\": { \"De\": { \"absentTime\": 10, \"scheduledTime\": 10 } }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentSchoolAttendanceEvents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--studentSectionClassPeriodAttendanceEvents

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/studentSectionClassPeriodAttendanceEvents" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"attendanceEventCategoryDescriptor\": \"uri://doe.k12.de.us/AttendanceEventCategoryDescriptor#SGE\", \"eventDate\": \"01-JAN-2019\", \"classPeriodReference\": { \"classPeriodName\": \"period 1\", \"schoolId\": 100610 }, \"sectionReference\": { \"localCourseCode\": \"local course code 1\", \"schoolId\": 100610, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/studentSectionClassPeriodAttendanceEvents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--grades

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/grades" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"gradeTypeDescriptor\": \"uri://doe.k12.de.us/GradeTypeDescriptor#FIN\", \"gradingPeriodReference\": { \"gradingPeriodDescriptor\": \"uri://doe.k12.de.us/GradingPeriodDescriptor#E2\", \"periodSequence\": 1, \"schoolId\": 100610, \"schoolYear\": 2019 }, \"studentSectionAssociationReference\": { \"beginDate\": \"01-JAN-2019\", \"localCourseCode\": \"local course code 1\", \"schoolId\": 100610, \"schoolYear\": 2019, \"sectionIdentifier\": \"section 1\", \"sessionName\": \"Fall\", \"studentUniqueId\": \"123\" }, \"letterGradeEarned\": \"A\", \"numericGradeEarned\": 0}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/grades?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--gradeTypeDetails

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/gradeTypeDetails" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"gradeTypeDescriptor\": \"uri://doe.k12.de.us/GradeTypeDescriptor#MP1\", \"schoolReference\": { \"schoolId\": 100610 }, \"gradeTypeOrder\": 1, \"gradeTypeWhenTakenDescriptor\": \"uri://doe.k12.de.us/GradeTypeWhenTakenDescriptor#M\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/gradeTypeDetails?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--levelDetails

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/levelDetails" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"levelNumber\": 1, \"mark\": \"12\", \"schoolReference\": { \"schoolId\": 100610 },} }, \"levelDescription\": \"string\", \"passingMark\": true, \"pointValue\": 1, \"reportCardPrintValue\": \"string\", \"transcriptPrintValue\": \"string\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/levelDetails?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--studentAcademicRecords 

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentAcademicRecords" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"termDescriptor\": \"uri://ed-fi.org/TermDescriptor#Other\", \"educationOrganizationReference\": { \"educationOrganizationId\": 10 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"classRanking\": { \"classRank\": 1, \"classRankingDate\": \"01-JAN-2019\", \"percentageRanking\": 0, \"totalNumberInClass\": 123 }, \"cumulativeAttemptedCreditConversion\": 0, \"cumulativeAttemptedCredits\": 0, \"cumulativeAttemptedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"cumulativeEarnedCreditConversion\": 0, \"cumulativeEarnedCredits\": 0, \"cumulativeEarnedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"cumulativeGradePointAverage\": 4, \"cumulativeGradePointsEarned\": 4, \"projectedGraduationDate\": \"01-JUN-2019\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/studentAcademicRecords?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--courseTranscripts

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/courseTranscripts" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"courseAttemptResultDescriptor\": \"uri://ed-fi.org/CourseAttemptResultDescriptor#Pass\", \"courseReference\": { \"courseCode\": \"cousecode 1\", \"educationOrganizationId\": 100610 }, \"externalEducationOrganizationReference\": { \"educationOrganizationId\": 330330 }, \"studentAcademicRecordReference\": { \"educationOrganizationId\": 10, \"schoolYear\": 2019, \"studentUniqueId\": \"123\", \"termDescriptor\": \"uri://ed-fi.org/TermDescriptor#Other\" }, \"alternativeCourseCode\": \"cousecode 1\", \"alternativeCourseTitle\": \"string\", \"attemptedCreditConversion\": 1, \"attemptedCredits\": 1, \"attemptedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"courseTitle\": \"My Course 1\", \"earnedCreditConversion\": 1, \"earnedCredits\": 1, \"earnedCreditTypeDescriptor\": \"uri://doe.k12.de.us/CreditTypeDescriptor#B\", \"finalLetterGradeEarned\": \"A\", \"finalNumericGradeEarned\": 99}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/courseTranscripts?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--postSecondaryDetails

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/postSecondaryDetails" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"postSecondaryEventCategoryDescriptor\": \"uri://ed-fi.org/PostSecondaryEventCategoryDescriptor#FAFSA Application\", \"schoolReference\": { \"schoolId\": 100610 }, \"schoolYearTypeReference\": { \"schoolYear\": 2019 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"institutions\": [ { \"acceptanceStatusDescriptor\": \"uri://doe.k12.de.us/AcceptanceStatusDescriptor#Accepted\", \"dateTranscriptMailed\": \"01-JAN-2019\", \"plansToAttend\": true, \"postSecondaryInstitutionReference\": { \"postSecondaryInstitutionId\": 2000000001 } }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/postSecondaryDetails?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

****************   Other  *********************


--disciplineIncident

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/disciplineIncidents" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"incidentIdentifier\": \"string\", \"schoolReference\": { \"schoolId\": \"100610\" }, \"incidentDate\": \"2019-02-25\", \"incidentDescription\": \"string\", }, \"caseNumber\": \"case1\", \"_ext\": { \"De\": { \"disciplineIncidentChangeUID\": \"Scott K\", \"disciplineIncidentCreationUID\": \"Scott K\", \"disciplineIncidentLastModifiedDate\": \"2019-02-25\", \"lawEnforcementBadgeNumber\": \"string\", \"lawEnforcementDepartment\": \"string\", \"lawEnforcementNotifyDate\": \"2019-02-25\", \"lawEnforcementOfficerName\": \"string\", \"reasons\": [ { \"incidentRelatedToDescriptor\": \"uri://doe.k12.de.us/IncidentRelatedToDescriptor#Age\", \"incidentRelatedToChangeUID\": \"Scott K\", \"incidentRelatedToLastModifiedDate\": \"2019-02-25\" } ] } }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/ed-fi/disciplineIncidents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--nonStudents

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/nonStudents" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"nonStudentLocalId\": \"string\", \"localEducationAgencyReference\": { \"localEducationAgencyId\": 10 }, \"schoolReference\": { \"schoolId\": 100610 }, \"firstName\": \"test\", \"lastSurname\": \"string\", \"sexDescriptor\": \"uri://doe.k12.de.us/SexDescriptor#F\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/nonStudents?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


--personDisciplineIncidentAssociations

curl -X POST "https://doesisedfisb.doe.k12.de.us:443/sandboxdelaware-api/data/v3/de/personDisciplineIncidentAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"participantNumber\": 1, \"participationCodeDescriptor\": \"uri://doe.k12.de.us/ParticipationCodeDescriptor#O\", \"disciplineIncidentReference\": { \"incidentIdentifier\": \"string\", \"schoolId\": 100610, \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"personReference\": { \"personCategoryDescriptor\": \"uri://doe.k12.de.us/PersonCategoryDescriptor#Student\", \"personId\": \"123\", \"link\": { \"rel\": \"string\", \"href\": \"string\" } }, \"offenderBehaviors\": [ { \"behaviorDescriptor\": \"uri://doe.k12.de.us/BehaviorDescriptor#C0101\", \"behaviorDetailDescription\": \"string\", \"offenseNumber\": 1 } ]}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/personDisciplineIncidentAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


--personDisciplineActions

curl -X POST "https://doesisedfisb.doe.k12.de.us:443/sandboxdelaware-api/data/v3/2021/de/personDisciplineActions" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"actionIdentifier\": 2, \"actionStartDate\": \"01-JAN-2019\", \"disciplines\": [ { \"disciplineDescriptor\": \"uri://doe.k12.de.us/DisciplineDescriptor#03\" } ], \"disciplineIncidentReference\": { \"incidentIdentifier\": \"string\", \"schoolId\": 100610 }, \"personReference\": { \"personCategoryDescriptor\": \"uri://doe.k12.de.us/PersonCategoryDescriptor#Student\", \"personId\": \"123\" } }, \"schoolReference\": { \"schoolId\": 1001610 }, \"actionEndDate\": \"string\", \"actualActionDuration\": 0, \"disciplineActionLengthDifferenceReasonDescriptor\": \"string\", \"disciplineDispositions\": [ { \"disciplineDispositionDescriptor\": \"uri://doe.k12.de.us/DisciplineDispositionDescriptor#01\" } ]}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/personDisciplineActions?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--RestraintSeclusions
curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/de/" -H "accept: application/json" -H "authorization: Bearer 61efc1c17e1f4c229bddd6d83f8739a6" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"eventDate\": \"01-JAN-2019\", \"eventTime\": \"00:00:00\", \"restraintEventCategoryDescriptor\": \"uri://doe.k12.de.us/RestraintEventCategoryDescriptor#Seclusion\", \"restraintEventReasonDescriptor\": \"uri://doe.k12.de.us/RestraintEventReasonDescriptor#Imminent risk of bodily harm to others.\", \"staffProvidingRestraints\": [ { \"staffOrdinal\": 1, \"trainedActionTechnique\": true } ], \"schoolReference\": { \"schoolId\": 100610, }, \"studentReference\": { \"studentUniqueId\": \"123\", }, \"additionalDetail\": \"string\", \"behaviorDuringRestraintDetail\": \"string\", \"changeDescription\": \"string\", \"consecutiveRestraintCount\": 0, \"deescalationTechniqueDescriptor\": \"uri://doe.k12.de.us/DeescalationTechniqueDescriptor#01\", \"nonViolentTechniqueDescriptor\": \"uri://doe.k12.de.us/NonViolentTechniqueDescriptor#01\", \"notificationMethodDescriptor\": \"uri://doe.k12.de.us/NotificationMethodDescriptor#Email\", \"parentGuardianNotified\": true, \"parentGuardianNotifiedDate\": \"01-JAN-2019\", \"parentGuardianNotifiedTime\": \"00:00:00\", \"policyChangeDetail\": \"string\", \"priorToEventDetail\": \"string\", \"restraintDuration\": \"string\", \"restraintReportDate\": \"01-JAN-2019\", \"staffInjured\": true, \"staffTrainingDetail\": \"string\", \"studentInjured\": true, \"studentInterviewDetail\": \"string\", \"supportPlanChangeDescriptor\": \"uri://doe.k12.de.us/SupportPlanChangeDescriptor#NONE\", \"usedCrisisResponseTeam\": true, \"witnessInterviewDetail\": \"string\"}"


{
  "eventDate": "01-JAN-2020",
  "eventTime": "00:00:00",
  "restraintEventCategoryDescriptor": "uri://doe.k12.de.us/RestraintEventCategoryDescriptor#Seclusion",
  "restraintEventReasonDescriptor": "uri://doe.k12.de.us/RestraintEventReasonDescriptor#Imminent risk of bodily harm to others.",
  "staffProvidingRestraints": [
    {
      "staffOrdinal": 1,
      "trainedActionTechnique": true
    }
  ],
  "schoolReference": {   "schoolId": 100610  },
  "studentReference": {    "studentUniqueId": "123"  },
  "additionalDetail": "string",
  "behaviorDuringRestraintDetail": "string",
  "changeDescription": "string",
  "consecutiveRestraintCount": 1,
  "deescalationTechniqueDescriptor": "uri://doe.k12.de.us/DeescalationTechniqueDescriptor#01",
  "nonViolentTechniqueDescriptor": "uri://doe.k12.de.us/NonViolentTechnique#01",
  "parentGuardianNotified": true,
  "parentGuardianNotifiedDate": "01-JAN-2020",
  "parentGuardianNotifiedTime": "00:00:00",
    "notificationMethodDescriptor": "uri://doe.k12.de.us/NotificationMethodDescriptor#Phone",
  "policyChangeDetail": "string",
  "priorToEventDetail": "string",
  "restraintDuration": "3",
  "restraintReportDate": "01-JAN-2020",
  "staffInjured": true,
  "staffTrainingDetail": "string",
  "studentInjured": true,
  "studentInterviewDetail": "string",
  "supportPlanChangeDescriptor": "uri://doe.k12.de.us/SupportPlanChangeDescriptor#NONE",
  "usedCrisisResponseTeam": true,
  "witnessInterviewDetail": "string"
}


curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/restraintSeclusions?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--allegedBullyingVictims

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/allegedBullyingVictims" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"allegedIncidentDate\": \"01-JAN-2019\", \"schoolReference\": { \"schoolId\": 100610 }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"bullyingCategories\": [ { \"bullyingCategoryDescriptor\": \"uri://doe.k12.de.us/BullyingCategoryDescriptor#Physical\" } ], \"followupComment\": \"string\", \"incidentDescription\": \"string\", \"incidentLocationDescriptor\": \"uri://doe.k12.de.us/IncidentLocationDescriptor#01\", \"multiplePriorEvent\": true, \"reasonIncidentRelatedToDescriptor\": \"uri://doe.k12.de.us/IncidentRelatedToDescriptor#Crd\", \"reportDate\": \"01-JAN-2019\", \"reportedBy\": \"string\", \"_etag\": \"string\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/allegedBullyingVictims?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


--medicationBoxes

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/medicationBoxes" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"medicationBoxId\": 1, \"localEducationAgencyReference\": { \"localEducationAgencyId\": 10 }, \"medicationCode\": \"string\", \"medicationDescription\": \"string\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/medicationBoxes?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--personMedicationBoxAssociations

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/personMedicationBoxAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"medicationBoxReference\": { \"localEducationAgencyId\": 10, \"medicationBoxId\": 1 }, \"personReference\": { \"personCategoryDescriptor\": \"uri://doe.k12.de.us/PersonCategoryDescriptor#Student\", \"personId\": \"123\" }, \"issues\": [ { \"issueDate\": \"2019-03-21\" } ], \"medicationRequired\": true}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/personMedicationBoxAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--medicalScreenings

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/medicalScreenings" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"medicalTestCategoryDescriptor\": \"uri://doe.k12.de.us/MedicalTestCategoryDescriptor#SPI_GROWTH\", \"testDate\": \"2019-04-09\", \"personReference\": { \"personCategoryDescriptor\": \"uri://doe.k12.de.us/PersonCategoryDescriptor#Student\", \"personId\": \"123\", } }, \"schoolOfServiceSchoolReference\": { \"schoolId\": 100610 }, \"athleticStatus\": true, \"gradeLevelDescriptor\": \"uri://doe.k12.de.us/GradeLevelDescriptor#04\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/medicalScreenings?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--personImmunizations

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/personImmunizations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"immunizationCodeDescriptor\": \"uri://doe.k12.de.us/ImmunizationCodeDescriptor#ADEN4\", \"immunizationDate\": \"01-JAN-2019\", \"personReference\": { \"personCategoryDescriptor\": \"uri://doe.k12.de.us/PersonCategoryDescriptor#Student\", \"personId\": \"123\", }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/personImmunizations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--medicalOfficeVisits

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/medicalOfficeVisits" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"officeInDate\": \"2019-04-09T13:52:08.013Z\", \"personReference\": { \"personCategoryDescriptor\": \"uri://doe.k12.de.us/PersonCategoryDescriptor#Student\", \"personId\": \"123\", }, \"schoolOfServiceSchoolReference\": { \"schoolId\": 100610 }, \"contactTypes\": [ { \"contactTypeDescriptor\": \"uri://doe.k12.de.us/ContactTypeDescriptor/MedicalContact#PG\" } ], \"medicalDispositions\": [ { \"medicalDispositionDescriptor\": \"uri://doe.k12.de.us/MedicalDispositionDescriptor#EVAL\" } ], \"medicalTreatmentCodes\": [ { \"medicalTreatmentCodeDescriptor\": \"uri://doe.k12.de.us/MedicalTreatmentCodeDescriptor#ABUSE\" } ], \"medicalVisitReasons\": [ { \"medicalVisitReasonDescriptor\": \"uri://doe.k12.de.us/MedicalVisitReasonDescriptor#BLIS\" } ], \"officeOutDate\": \"2019-04-09T13:52:08.013Z\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/medicalOfficeVisits?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"

--medicalReferralFollowUps

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/medicalReferralFollowUps" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"id\": \"string\", \"followupCategoryDescriptor\": \"uri://doe.k12.de.us/FollowupCategoryDescriptor#NOTREAT\", \"medicalTestCategoryDescriptor\": \"uri://doe.k12.de.us/MedicalTestCategoryDescriptor#504\", \"testDate\": \"2019-04-09T13:54:18.124Z\", \"personReference\": { \"personCategoryDescriptor\": \"uri://doe.k12.de.us/PersonCategoryDescriptor#Student\", \"personId\": \"123\", }}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/medicalReferralFollowUps?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"



--2021 changes:
--EL StudentEducationOrganizationAssociation for KN registration

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://doe.k12.de.us/ProviderStatusDescriptor', 'xx', 'test', 'test2')

INSERT INTO edfi.Descriptor (Namespace, CodeValue, ShortDescription, Description)
VALUES ('uri://doe.k12.de.us/ProviderCategoryDescriptor', 'xy', 'test', 'test2')

insert into edfi.ProviderStatusDescriptor select descriptorid from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProviderStatusDescriptor'
insert into edfi.ProviderCategoryDescriptor select descriptorid from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProviderCategoryDescriptor'

insert into edfi.EducationOrganization (EducationOrganizationId,NameOfInstitution,ShortNameOfInstitution,OperationalStatusDescriptorId,Discriminator,CreateDate,LastModifiedDate)
values (123456,'test EL Org','telo',2938,'edfi.CommunityOrganization','23-APR-2020','23-APR-2020')
go
insert into edfi.EducationOrganization (EducationOrganizationId,NameOfInstitution,ShortNameOfInstitution,OperationalStatusDescriptorId,Discriminator,CreateDate,LastModifiedDate)
values (123777,'test EL Provider','telp',2938,'edfi.CommunityOrganization','23-APR-2020','23-APR-2020')
go

insert into edfi.CommunityOrganization values (123456)
insert into edfi.CommunityProvider (CommunityOrganizationId, CommunityProviderId, ProviderCategoryDescriptorId,ProviderStatusDescriptorId)
select 123456,123777, (select min(descriptorid) from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProviderCategoryDescriptor'), (select min(descriptorid) from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProviderStatusDescriptor')


{
  "id": "string",
  "educationOrganizationReference": {
    "educationOrganizationId": "123777"
  },
  "studentReference": {
    "studentUniqueId": "123"
  },

  "sexDescriptor": "uri://doe.k12.de.us/SexDescriptor#M",
  "_ext": {
    "De": {
        "schoolYearTypeReference": {    "schoolYear": 2019     },
    }
  }
}
https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/2021/de/studentEarlyChildhoodProgramAssociations

--EL StudentEarlyChildhoodProgramAssociation:
{
  "studentReference": {
    "studentUniqueId": "123"
  },
  "beginDate": "01-JAN-2020",
  "educationOrganizationReference": {
    "educationOrganizationId": 100610,
  },
  "programReference": {
    "educationOrganizationId": 10,
    "programName": "ECAP",
    "programTypeDescriptor": "uri://doe.k12.de.us/ProgramTypeDescriptor#Early Education"
    }
  },
  "districtNotificationDate": "string",
  "iepImplementationDate": "01-JAN-2020",
  "iepMeetingDate": "01-JAN-2020",
  "reasonExitedDescriptor": "uri://doe.k12.de.us/ReasonExitedDescriptor#E",
  "reasonForLateIEPDescriptor": "uri://doe.k12.de.us/ReasonForLateIEPDescriptor#01",
  "regulation619DeterminedEligible": true,
  "regulation619PartCReferralDate": "01-JAN-2020",
  "regulation619ReferralDate": "01-JAN-2020",
  "servedOutsideOfRegularSession": true
}

--studentEarlyChildhoodProgramAssociation

curl -X POST "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/studentEarlyChildhoodProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5" -H "Content-Type: application/json" -d "{ \"beginDate\": \"2019-02-25\", \"educationOrganizationReference\": { \"educationOrganizationId\": 10 }, \"programReference\": { \"educationOrganizationId\": 10, \"programName\": \"ECAP\", \"programTypeDescriptor\": \"uri://doe.k12.de.us/ProgramTypeDescriptor#Early Education\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"programCharacteristicDescriptor\": \"uri://doe.k12.de.us/ProgramCharacteristicDescriptor#1\"}"

curl -X GET "https://doesisedfiint.doe.k12.de.us/Delaware-Api/data/v3/de/studentEarlyChildhoodProgramAssociations?offset=0&limit=25&totalCount=false" -H "accept: application/json" -H "authorization: Bearer 7bd18d2dc33742f19326bc202ad190d5"


--roster
{
  "id": "string",
  "assessmentAdministrationReference": {
    "administrationIdentifier": "1",
    "assessmentIdentifier": "1",
    "assigningEducationOrganizationId": 95,
    "namespace": "uri://doe.k12.de.us/AsessmentRoster"
  },
  "reportingEducationOrganizationReference": {
    "educationOrganizationId": 0,
    "link": {
      "rel": "string",
      "href": "string"
    }
  },
  "studentEducationOrganizationAssociationReference": {
    "educationOrganizationId": 10,
    "studentUniqueId": "123",
  }
}

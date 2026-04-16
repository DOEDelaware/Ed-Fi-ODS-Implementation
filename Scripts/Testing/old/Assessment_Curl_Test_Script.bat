rem Assumptions: security for uri://Pearson.com

rem  Assessment  *******************************

curl -X POST "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/Assessments" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4" -H "Content-Type: application/json" -d "{ \"assessmentIdentifier\": \"TestAssessmentIdentifier\", \"namespace\": \"uri://Pearson.com\", \"assessmentTitle\": \"test title1\", \"academicSubjects\": [ { \"academicSubjectDescriptor\": \"uri://doe.k12.de.us/AcademicSubjectDescriptor#MAT\" } ] }"

curl -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/Assessments" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4"


rem  Descriptors  *******************************

curl -X POST "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/accommodationDescriptors" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4" -H "Content-Type: application/json" -d "{ \"codeValue\": \"test\", \"description\": \"test\", \"effectiveBeginDate\": \"2022-01-10\", \"effectiveEndDate\": \"2022-01-12\", \"namespace\": \"uri://Pearson.com/accommodationDescriptor\", \"shortDescription\": \"short desc\"}"


curl -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/accommodationDescriptors" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4"


curl -X POST "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/AssessmentReportingMethodDescriptors" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4" -H "Content-Type: application/json" -d "{ \"codeValue\": \"test\", \"description\": \"test\", \"effectiveBeginDate\": \"2022-01-10\", \"effectiveEndDate\": \"2022-01-12\", \"namespace\": \"uri://Pearson.com/AssessmentReportingMethodDescriptor\", \"shortDescription\": \"short desc\"}"


curl -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/AssessmentReportingMethodDescriptors" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4"

rem StudentAssessments *********************

curl -X POST "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/StudentAssessments" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4" -H "Content-Type: application/json" -d "{ \"studentAssessmentIdentifier\": \"TestStudentAssessment1\", \"assessmentReference\": { \"assessmentIdentifier\": \"TestAssessmentIdentifier\", \"namespace\": \"uri://Pearson.com\" }, \"schoolYearTypeReference\": { \"schoolYear\": \"2022\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"administrationDate\": \"2022-01-11T18:42:56.413Z\"}"

curl -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/StudentAssessments" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4"

rem StudentAssessment Registration
rem insert into edfixassessmentroster.AssessmentAdministration (AdministrationIdentifier, AssessmentIdentifier,Namespace, AssigningEducationOrganizationId) values ('TestAdministration','','uri://Pearson.com',95)
rem insert into edfixassessmentroster.StudentAssessmentRegistration (AdministrationIdentifier,AssessmentIdentifier,Namespace,AssigningEducationOrganizationId,EducationOrganizationId,StudentUSI) values ('TestAdministration','TestAssessmentIdentifier','uri://Pearson.com',95,33,1)
rem insert into edfixassessmentroster.StudentAssessmentRegistration (AdministrationIdentifier,AssessmentIdentifier,Namespace,AssigningEducationOrganizationId,EducationOrganizationId,StudentUSI) values ('90','90','uri://doe.k12.de.us/AsessmentRoster',95,33,1)

curl -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi-xassessment-roster/AssessmentAdministrations" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4"

curl -X POST "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/StudentAssessments" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4" -H "Content-Type: application/json" -d "{ \"studentAssessmentIdentifier\": \"TestStudentAssessment1\", \"assessmentReference\": { \"assessmentIdentifier\": \"TestAssessmentIdentifier\", \"namespace\": \"uri://Pearson.com\" }, \"schoolYearTypeReference\": { \"schoolYear\": \"2022\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"administrationDate\": \"2022-01-11T18:42:56.413Z\"}"

curl -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi-xassessment-roster/studentAssessmentRegistrations" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4"
rem should only show pearson namespaced




rem negative test cases- write roster, write wrong namespace
curl -X POST "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/StudentAssessments" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4" -H "Content-Type: application/json" -d "{ \"studentAssessmentIdentifier\": \"badtest\", \"assessmentReference\": { \"assessmentIdentifier\": \"90\", \"namespace\": \"uri://doe.k12.de.us/AsessmentRoster\" }, \"schoolYearTypeReference\": { \"schoolYear\": \"2022\" }, \"studentReference\": { \"studentUniqueId\": \"123\" }, \"administrationDate\": \"2022-01-11T18:42:56.413Z\"}"

curl -X POST "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/Assessments" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4" -H "Content-Type: application/json" -d "{ \"assessmentIdentifier\": \"badtest\", \"namespace\": \"uri://doe.k12.de.us/AsessmentRoster\", \"assessmentTitle\": \"test title1\", \"academicSubjects\": [ { \"academicSubjectDescriptor\": \"uri://doe.k12.de.us/AcademicSubjectDescriptor#MAT\" } ] }"



rem Gets on student, demographic, etc

curl -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/students" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4"


curl -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/studentschoolassociations" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4"


curl -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/ed-fi/studenteducationorganizationassociations" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4"

curl -X GET "https://doesisedfiintne.doe.k12.de.us/Delaware-Api/data/v3/2024/de/Student504ProgramAssociations" -H "accept: application/json" -H "authorization: Bearer 268bf9c04f014980a0db86eec5bd8df4"

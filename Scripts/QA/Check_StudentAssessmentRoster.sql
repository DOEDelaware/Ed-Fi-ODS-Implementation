create procedure Check_StudentAssessmentRoster (@Student_Id int) as
select 
s.StudentUniqueId, 
s.FirstName,
s.LastSurname,
sc.SchoolId,
School.NameOfInstitution,
ssa.CalendarCode,
EntryDate,
ExitWithdrawDate,
assessment.AssessmentIdentifier,
AssessmentTitle

from [EdFi_Delaware_Ods_2023].edfi.student s 
	join [EdFi_Delaware_Ods_2023].edfixassessmentroster.StudentAssessmentRegistration roster on s.StudentUSI=roster.StudentUSI
	join [EdFi_Delaware_Ods_2023].edfi.studentSchoolAssociation ssa on s.StudentUSI=ssa.StudentUSI
	join [EdFi_Delaware_Ods_2023].edfi.School sc on ssa.schoolid=sc.schoolid 
	join [EdFi_Delaware_Ods_2023].edfi.studentEducationOrganizationAssociation seoa on s.StudentUSI=seoa.StudentUSI and sc.LocalEducationAgencyId=seoa.EducationOrganizationId
	join [EdFi_Delaware_Ods_2023].edfi.EducationOrganization School on sc.SchoolId=School.EducationOrganizationId
	left outer join [EdFi_Delaware_Ods_2023].edfi.Descriptor Grd on Grd.DescriptorId=ssa.EntryGradeLevelDescriptorId
	join [EdFi_Delaware_Ods_2023].edfi.Assessment assessment on roster.AssessmentIdentifier=assessment.AssessmentIdentifier
where StudentUniqueId=@Student_Id
go
exec Check_StudentAssessmentRoster 231419



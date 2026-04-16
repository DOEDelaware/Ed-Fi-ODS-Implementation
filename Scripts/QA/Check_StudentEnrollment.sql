create procedure Check_StudentRegistration (@Student_Id int) as
select 
s.StudentUniqueId, 
s.FirstName,
s.LastSurname,
sc.SchoolId,
School.NameOfInstitution,
ssa.CalendarCode,
EntryCd.CodeValue EntryCode,
EntryDate,
ExitCd.CodeValue ExitCode,
ExitWithdrawDate,
LocalEducationAgencyId
from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.student s 
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.studentSchoolAssociation ssa on s.StudentUSI=ssa.StudentUSI
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.School sc on ssa.schoolid=sc.schoolid 
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.EducationOrganization School on sc.SchoolId=School.EducationOrganizationId
	left outer join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.Descriptor EntryCd on EntryCd.DescriptorId=ssa.EntryTypeDescriptorId
	left outer join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.Descriptor ExitCd on ExitCd.DescriptorId=ssa.ExitWithdrawTypeDescriptorId
	left outer join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.Descriptor Grd on Grd.DescriptorId=ssa.EntryGradeLevelDescriptorId
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.studentEducationOrganizationAssociation seoa on s.StudentUSI=seoa.StudentUSI and sc.LocalEducationAgencyId=seoa.EducationOrganizationId
where StudentUniqueId=@Student_Id
go
exec Check_StudentRegistration 550565

select  top 100
s.StudentUniqueId, 
s.FirstName,
s.LastSurname,
sc.SchoolId,
School.NameOfInstitution,
ssa.CalendarCode,
EntryCd.CodeValue EntryCode,
EntryDate,
ExitCd.CodeValue ExitCode,
ExitWithdrawDate,
LocalEducationAgencyId
from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.student s 
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.studentSchoolAssociation ssa on s.StudentUSI=ssa.StudentUSI
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.School sc on ssa.schoolid=sc.schoolid 
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.EducationOrganization School on sc.SchoolId=School.EducationOrganizationId
	left outer join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.Descriptor EntryCd on EntryCd.DescriptorId=ssa.EntryTypeDescriptorId
	left outer join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.Descriptor ExitCd on ExitCd.DescriptorId=ssa.ExitWithdrawTypeDescriptorId
	left outer join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.Descriptor Grd on Grd.DescriptorId=ssa.EntryGradeLevelDescriptorId
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.studentEducationOrganizationAssociation seoa on s.StudentUSI=seoa.StudentUSI and sc.LocalEducationAgencyId=seoa.EducationOrganizationId
where ExitWithdrawDate is not null

550565
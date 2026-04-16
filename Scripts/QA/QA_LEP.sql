USE [QA]
GO


--CREATE procedure [dbo].[QA_LEP] as



drop table #LEP
select * into #LEP from [DOESISDB\DB1S].eSchoolMaster.dbo.REG_USER  where screen_number=404 and field_number=20 and FIELD_VALUE in ('Y','P') and student_id in
(select student_id from [DOESISDB\DB1S].eSchoolMaster.dbo.REG_ENTRY_WITH  where SCHOOL_YEAR=2022 and WITHDRAWAL_CODE is not null)

drop table #edfistu
select s.StudentUniqueId, ssa.SchoolId,LocalEducationAgencyId, seoa.LimitedEnglishProficiencyDescriptorId, LEPCode.CodeValue LEPCode into #edfiStu 
from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.student s 
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.studentSchoolAssociation ssa on s.StudentUSI=ssa.StudentUSI
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.School sc on ssa.schoolid=sc.schoolid
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.studentEducationOrganizationAssociation seoa on s.StudentUSI=seoa.StudentUSI and seoa.EducationOrganizationId=sc.LocalEducationAgencyId
	left outer join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.Descriptor LEPCode on seoa.LimitedEnglishProficiencyDescriptorId=LEPCode.DescriptorId


--kids marked LEP in  eSchool but not edfi
select LocalEducationAgencyId, studentUniqueId, LimitedEnglishProficiencyDescriptorId, FIELD_VALUE esmLEP from #LEP esmLEP 
join #edfistu edfistu on esmLEP.DISTRICT=edfistu.LocalEducationAgencyId and esmLEP.Student_id=edfistu.StudentUniqueId and esmLEP.FIELD_VALUE is not null 
where edfistu.LimitedEnglishProficiencyDescriptorId is null



--kids marked LEP in  eSchool but not edfi
select studentUniqueId, LimitedEnglishProficiencyDescriptorId, FIELD_VALUE esmLEP from #LEP esmLEP 
join #edfistu edfistu on esmLEP.DISTRICT=edfistu.LocalEducationAgencyId and esmLEP.Student_id=edfistu.StudentUniqueId and  edfistu.LimitedEnglishProficiencyDescriptorId is not null 
where esmLEP.FIELD_VALUE is null

--Compare Codes
select studentUniqueId, LimitedEnglishProficiencyDescriptorId, FIELD_VALUE esmLEP from #LEP esmLEP 
join #edfistu edfistu on esmLEP.DISTRICT=edfistu.LocalEducationAgencyId and esmLEP.Student_id=edfistu.StudentUniqueId
where esmLEP.FIELD_VALUE<>edfistu.LEPCode

GO

select * from #LEP where student_id in (325171,
253932,
523756,
220307,
777417,
229297,
089488,
370349)

--rep
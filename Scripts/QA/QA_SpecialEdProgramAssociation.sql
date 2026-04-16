USE [QA]
GO

--drop procedure [QA_SpecialEdProgramAssociation]
--go

--CREATE procedure [dbo].[QA_SpecialEdProgramAssociation] as


--Single program record published for each student with Special Eduation date where:
-- - ru.screen_number = 400, DOE Special Education
-- - student has primary exceptionality (ru.field_number 2 is not null)
-- - student currently enrolled (rew, rb)
-- - program exit date null or on/after start of current school year
--Note: only one record allowed, ru.list_sequence = 1 all cases
		--screen_number 400 field_number 2, 3 (primary & secondary)
		--screen_number 400 field_number 15, Special Ed Exit Date
		--screen_number 400 field_number 9, IEP Initiation Date
		--screen_number 400 field_number 11, IEP End Date


--determine current year
declare @CurrentSchoolYear int
select @CurrentSchoolYear=SchoolYear from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.SchoolYearType where CurrentSchoolYear=1
--set @CurrentSchoolYear=2022

declare @FirstDayOfSchoolYear datetime
set @FirstDayOfSchoolYear=convert(datetime,('30-JUL-' + convert(varchar(4),@CurrentSchoolYear-1)))
--select @FirstDayOfSchoolYear

declare @LastDayOfSchoolYear datetime
set @LastDayOfSchoolYear=convert(datetime,('30-JUL-' + convert(varchar(4),@CurrentSchoolYear)))
--select @LastDayOfSchoolYear



--Get 504 info from eSchoolPlus
drop table #RU2
drop table #RU15
--valid start and end dates
select * into #RU2  from  [DOESISDB\DB1S].eSchoolMaster.dbo.REG_USER where SCREEN_NUMBER=400 and FIELD_NUMBER=2 and FIELD_VALUE is not null and rtrim(FIELD_VALUE)<>''  --primary exceptionality code
select * into #RU15 from  [DOESISDB\DB1S].eSchoolMaster.dbo.REG_USER where SCREEN_NUMBER=400 and FIELD_NUMBER=15 and (isdate(FIELD_VALUE)=1 or FIELD_VALUE is null) and LIST_SEQUENCE=1 --exit date


drop table #esmSpecEd
select distinct ru2.district, ru2.student_id into #esmSpecEd from #RU2 ru2 join #RU15 ru15 on ru15.DISTRICT=ru2.DISTRICT and ru15.STUDENT_ID=ru2.STUDENT_ID and ru15.SCREEN_NUMBER=ru2.SCREEN_NUMBER 
where (convert(datetime, ru15.FIELD_VALUE)>@FirstDayOfSchoolYear or ru15.FIELD_VALUE is null) 


--drop table #edfistu
select s.StudentUniqueId, ssa.*,LocalEducationAgencyId into #edfiStu from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.student s 
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.studentSchoolAssociation ssa on s.StudentUSI=ssa.StudentUSI
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.School sc on ssa.schoolid=sc.schoolid
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.studentEducationOrganizationAssociation seoa on s.StudentUSI=seoa.StudentUSI and seoa.EducationOrganizationId=sc.LocalEducationAgencyId


--Missing kids enrolled in Ed-Fi
--drop table ##MissingProgramEdFiEnrolled
select * into #MissingProgramEdFiEnrolled from #edfiStu edfiStu join #esmSpecEd esm on edfistu.StudentUniqueId=esm.student_id and edfiStu.LocalEducationAgencyId=esm.district
and StudentUSI not in
(select StudentUSI from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.StudentSpecialEducationProgramAssociation edfi where edfi.EducationOrganizationId=esm.district)

--Valid edfi students with information in screen 402 for the current year
select * from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.Student where StudentUniqueId in (select Student_id from #MissingProgramEdFiEnrolled )

--GO
--[QA_SpecialEdProgramAssociation]
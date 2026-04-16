USE [QA]
GO

drop procedure [QA_504ProgramAssociation]
go

CREATE procedure [dbo].[QA_504ProgramAssociation] as

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
--drop table #RU1
--drop table #RU4
--valid start and end dates
select * into #RU1  from  [DOESISDB\DB1S].eSchoolMaster.dbo.REG_USER where SCREEN_NUMBER=402 and FIELD_NUMBER=1 and isdate(FIELD_VALUE)=1 and LIST_SEQUENCE=1
select * into #RU4  from  [DOESISDB\DB1S].eSchoolMaster.dbo.REG_USER where SCREEN_NUMBER=402 and FIELD_NUMBER=4 and (isdate(FIELD_VALUE)=1 or FIELD_VALUE is null) and LIST_SEQUENCE=1

--drop table #esm504
select distinct ru1.district, ru1.student_id into #esm504 from #RU4 ru4 join #RU1 ru1 on ru1.DISTRICT=ru4.DISTRICT and ru1.STUDENT_ID=ru4.STUDENT_ID and ru1.SCREEN_NUMBER=ru4.SCREEN_NUMBER 
where convert(datetime, ru1.FIELD_VALUE)<@LastDayOfSchoolYear and convert(datetime,ru4.FIELD_VALUE)>@FirstDayOfSchoolYear or ru4.FIELD_VALUE is null


--field 1- entry date
--field 4- exit date
--list_sequence=1


--drop table #edfistu
select s.StudentUniqueId, ssa.*,LocalEducationAgencyId into #edfiStu from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.student s 
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.studentSchoolAssociation ssa on s.StudentUSI=ssa.StudentUSI
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.School sc on ssa.schoolid=sc.schoolid
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].edfi.studentEducationOrganizationAssociation seoa on s.StudentUSI=seoa.StudentUSI and seoa.EducationOrganizationId=sc.LocalEducationAgencyId


--Missing kids enrolled in Ed-Fi
--drop table #Missing504ProgramEDFiEnrolled
select * into #Missing504ProgramEDFiEnrolled from #edfiStu edfiStu join #esm504 esm504 on edfistu.StudentUniqueId=esm504.student_id and edfiStu.LocalEducationAgencyId=esm504.district
and StudentUSI not in
(select StudentUSI from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2022].de.Student504ProgramAssociation edfi504 where edfi504.EducationOrganizationId=esm504.district)

--Valid edfi students with information in screen 402 for the current year
select StudentUniqueId,EntryDate,SchoolId, getdate()  from #Missing504ProgramEDFiEnrolled
GO
[QA_504ProgramAssociation]


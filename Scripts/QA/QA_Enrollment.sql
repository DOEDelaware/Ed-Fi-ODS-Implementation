USE [QA]
GO

/****** Object:  StoredProcedure [dbo].[QA_Enrollment]    Script Date: 11/3/2021 1:38:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--Current enrollment
/*

drop table MissingStudentRegistration
create table MissingStudentRegistration (
District int, 
BUILDING int, 
SchoolName varchar(255),
StudentID int, 
LastName varchar(255), 
EntryCode varchar(25), 
EntryDate datetime,
ExitCode varchar(25),
ExitDate datetime,
grade varchar(5), 
Calendar varchar(5), 
FirstSeenDate datetime, 
Note varchar(max))

drop table MissingStudentRegistrationErrors

create table MissingStudentRegistrationErrors (
District int, 
StudentID int, 
EntryDate datetime,
ErrorMsg varchar(max),
ErrorType char(10))











*/

alter procedure [dbo].[QA_Enrollment] as

--determine current year
declare @CurrentSchoolYear int
select @CurrentSchoolYear=SchoolYear from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.SchoolYearType where CurrentSchoolYear=1
--temp tables **************************************************************************************************************************************
--drop table #esmStu
select  rew.district, rew.STUDENT_ID, rew.ENTRY_WD_TYPE, rew.SCHOOL_YEAR, CAST(rew.ENTRY_DATE as DATE) ENTRY_DATE, rew.ENTRY_CODE, rew.BUILDING, rew.GRADE, rew.CALENDAR, CAST(rew.WITHDRAWAL_DATE as DATE) WITHDRAWAL_DATE, rew.WITHDRAWAL_CODE, rew.eschool_BUILDING 
into #esmStu
from CodeLibrarySource.eSchoolMaster.dbo.REG r join CodeLibrarySource.eSchoolMaster.dbo.REG_ENTRY_WITH rew on rew.district=r.district and rew.student_id=r.student_id
where SCHOOL_YEAR=@CurrentSchoolYear --and ENTRY_WD_TYPE<>'S'

--require all 3 table to count as enrolled in Ed-Fi
--drop table #edfistu
select s.StudentUniqueId, ssa.*,LocalEducationAgencyId into #edfiStu from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.student s 
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.studentSchoolAssociation ssa on s.StudentUSI=ssa.StudentUSI
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.School sc on ssa.schoolid=sc.schoolid 
	join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.studentEducationOrganizationAssociation seoa on s.StudentUSI=seoa.StudentUSI and sc.LocalEducationAgencyId=seoa.EducationOrganizationId

--drop table #missingESM
select distinct esm.* into #missingESM from #esmStu esm left join #edfiStu edfi on esm.eSchool_BUILDING=edfi.schoolid and convert(int,esm.STUDENT_ID)=edfi.StudentUniqueId and esm.ENTRY_DATE=edfi.EntryDate
where edfi.StudentUniqueId is null 


--code tables
--drop table #gradeCodes
select * into #gradeCodes from CodeLibrarySource.eSchoolMaster.dbo.REG_GRADE

--drop table #entryCodes
select * into #entryCodes from CodeLibrarySource.eSchoolMaster.dbo.REGTB_ENTRY

--drop table #exitCodes
select * into #exitCodes from CodeLibrarySource.eSchoolMaster.dbo.REGTB_WITHDRAWAL
--**************************************************************************************************************************************************







--students registration     **********************************************************************************************************
--drop table #MissingStudentReg
select miss.DISTRICT,miss.eSchool_BUILDING BUILDING, Name SCHOOLNAME, miss.STUDENT_ID studentid, reg.LAST_NAME LASTNAME, ENTRY_CODE ENTRYCODE,ENTRY_DATE ENTRYDATE, WITHDRAWAL_DATE, WITHDRAWAL_CODE, miss.grade,miss.CALENDAR , getdate() FirstSeenDate, '' NOTE 
into #MissingStudentReg
from #missingESM miss 
	join [DOESISDB\DB1S].eSchoolMaster.dbo.reg_building reg_building on miss.eSchool_BUILDING=reg_building.eSchool_BUILDING   and miss.DISTRICT=REG_BUILDING.DISTRICT
	join [DOESISDB\DB1S].eSchoolMaster.dbo.reg reg on miss.STUDENT_ID = reg.STUDENT_ID and miss.DISTRICT=reg.DISTRICT

order by miss.eSchool_BUILDING

insert into MissingStudentRegistration (DISTRICT, BUILDING, SCHOOLNAME, STUDENTID, LASTNAME, ENTRYCODE, ENTRYDATE, EXITDATE, EXITCODE,  GRADE, Calendar, FirstSeenDate, [NOTE])
SELECT DISTRICT, BUILDING, SCHOOLNAME, STUDENTID, LASTNAME, ENTRYCODE, ENTRYDATE,WITHDRAWAL_DATE, WITHDRAWAL_CODE, GRADE, Calendar, FirstSeenDate, [NOTE] 
FROM #MissingStudentReg NW
WHERE NOT EXISTS (SELECT * FROM MissingStudentRegistration RL WHERE RL.District=NW.DISTRICT AND RL.BUILDING=NW.BUILDING AND RL.STUDENTID=NW.STUDENTID AND RL.ENTRYDATE=NW.ENTRYDATE AND RL.ENTRYCODE=NW.ENTRYCODE )

DELETE RL FROM MissingStudentRegistration RL WHERE  EXISTS (SELECT * FROM #edfistu nw
WHERE RL.District=NW.LocalEducationAgencyId AND RL.BUILDING=NW.SchoolId AND RL.STUDENTID=NW.StudentUniqueId AND RL.ENTRYDATE=NW.ENTRYDATE  )

--*************************************************************************************************************************************************


--student registration errors **********************************************************************************************************

delete MissingStudentRegistrationErrors

insert into MissingStudentRegistrationErrors(District, StudentID, entrydate, ErrorType,ErrorMSG)
select DISTRICT,STUDENTID,EntryDate, 'GradeCode' , 'The Grade Code for the Student Registration is not neither an official state code nor mapped to a state code in eSchool. To fix, this must be remiedied in eSchoolPlus screen xyz. '
from MissingStudentRegistration
where 
	GRADE not in (select Code  from CodeLibrarySource.CodeLibrary.doeCode.GradeLevel)
	and 
	GRADE not in (select code from #gradeCodes gc where gc.STATE_CODE_EQUIV=MissingStudentRegistration.grade and gc.DISTRICT=MissingStudentRegistration.DISTRICT and
						STATE_CODE_EQUIV in (select Code  from CodeLibrarySource.CodeLibrary.doeCode.GradeLevel))




insert into MissingStudentRegistrationErrors(District, StudentID, entrydate, ErrorType,ErrorMSG)
select DISTRICT,STUDENTID,EntryDate,'EntryCode' , 'The Entry Code for the Student Registration is neither not an official state coe nor mapped to a state code in eSchoolPlus. To fix, this must be remiedied in eSchoolPlus screen xyz.'
from MissingStudentRegistration
where 
	ENTRYCODE not in (select Code  from CodeLibrarySource.CodeLibrary.doeCode.EntryType)
	and 
	ENTRYCODE not in (select STATE_CODE_EQUIV from #entryCodes code where code.code=MissingStudentRegistration.EntryCode and code.DISTRICT=MissingStudentRegistration.DISTRICT)



insert into MissingStudentRegistrationErrors(District, StudentID, entrydate, ErrorType,ErrorMSG)
select DISTRICT,STUDENTID,EntryDate,'ExitCode' , 'The Exit Code for the Student Registration is neither not an official state coe nor mapped to a state code in eSchoolPlus. To fix, this must be remiedied in eSchoolPlus screen xyz.'
from MissingStudentRegistration
where 
	EXITCODE not in (select Code  from CodeLibrarySource.CodeLibrary.doeCode.ExitWithdrawType)
	and 
	EXITCODE not in (select STATE_CODE_EQUIV from #exitCodes code where code.code=MissingStudentRegistration.EXITCODE and code.DISTRICT=MissingStudentRegistration.DISTRICT)




insert into MissingStudentRegistrationErrors(District, StudentID, entrydate, ErrorType,ErrorMSG)
select DISTRICT,STUDENTID,EntryDate,'BLDCode' , 'This school is not an official state building.'
from MissingStudentRegistration
where 
	BUILDING not in (select SchoolId from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.School)
	


insert into MissingStudentRegistrationErrors(District, StudentID, entrydate, ErrorType,ErrorMSG)
select DISTRICT,STUDENTID,EntryDate,'Unknown' , 'Unknown error.  Check DEX for a specfic error and attempt republishing.   If this does not work and you cannot discern the issue, submit a KACE ticket to the powerschool queue, dex area.'
from MissingStudentRegistration
	where  not exists (select STUDENTID from MissingStudentRegistrationErrors 
	where MissingStudentRegistrationErrors.District=MissingStudentRegistration.DISTRICT and MissingStudentRegistrationErrors.STUDENTID=MissingStudentRegistration.STUDENTID)

GO
[QA_Enrollment]
go

select distinct district, errortype from MissingStudentRegistrationErrors order by 1, 2

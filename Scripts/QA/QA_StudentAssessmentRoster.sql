USE [QA]
GO

/****** Object:  StoredProcedure [dbo].[QA_StudentAssessmentRoster]    Script Date: 9/29/2023 2:15:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

drop procedure [dbo].[QA_StudentAssessmentRoster]



CREATE procedure [dbo].[QA_StudentAssessmentRoster] as

 --Create table AssessmentCountByDistrictAndAssessment ( District int,  AssessmentNum int,  ESPStudentCount int, EDFIStudentCount int, Diff int)


-- Ed-Fi roster of students currently Enrolled in the district rostered
--drop table #EdFiEnrolledStuRoster
select distinct StudentUniqueId, sar.* into #EdFiEnrolledStuRoster from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfixassessmentroster.StudentAssessmentRegistration sar 
	join  [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].Edfi.Student stu on sar.StudentUSI=stu.StudentUSI
where sar.StudentUSI in (select StudentUSI from  [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.StudentSchoolAssociation ssa join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].edfi.school s on ssa.SchoolId=s.SchoolId where s.LocalEducationAgencyId=sar.EducationOrganizationId and ExitWithdrawDate is null) 

--eSchool roster of students currently Enrolled in the district rostered
--drop table #ESPEnrolledStuRoster
  select distinct  reg_user.* into #ESPEnrolledStuRoster from [DOESISDB\DB1S].eSchoolMaster.dbo.reg_user reg_user where screen_number=225 and FIELD_VALUE is not null and field_value <>''
and student_id in (select student_id from [DOESISDB\DB1S].eSchoolMaster.dbo.reg_entry_with reg_entry_with where WITHDRAWAL_CODE is null and SCHOOL_YEAR=2023 and reg_entry_with.district=reg_user.district  and ENTRY_WD_TYPE<>'P') 


--Edfi Count of student roster entries by district and assessment
--drop table #EdFiRosterCount
select EducationOrganizationId, AssessmentIdentifier, count(*) EDFIstudentcount into #EdFiRosterCount from #EdFiEnrolledStuRoster group by EducationOrganizationId, AssessmentIdentifier
--ESP Count of student roster entries by district and assessment
--drop table #ESPRosterCount
select DISTRICT, FIELD_VALUE, count(*) ESPstudentcount into #ESPRosterCount from #ESPEnrolledStuRoster group by DISTRICT, FIELD_VALUE

 --Compare counts by district and assesssment
 delete AssessmentCountByDistrictAndAssessment
 insert into AssessmentCountByDistrictAndAssessment ( District ,  AssessmentNum ,  ESPStudentCount , EDFIStudentCount , Diff )
 select District, FIELD_VALUE AssessmentNum, ESPstudentcount, EDFIStudentcount, ESPstudentcount-EDFIStudentcount from #ESPRosterCount ESP left outer join #EdFiRosterCount EDFI on ESP.DISTRICT= EDFI.EducationOrganizationId and ESP.FIELD_VALUE=EDFI.AssessmentIdentifier
 order by AssessmentIdentifier, District


GO


use QA
go
create procedure QA_CheckDEXisPublishingTopEndpointsByDistrict as
--create table dbo.DataPublishingMostRecentDate (Area varchar(100), DistrictCode int, LastModifiedDate datetime, ProcessDate datetime)

delete dbo.DataPublishingMostRecentDate


--Enrollment
insert into dbo.DataPublishingMostRecentDate
select 'Student Registration', localeducationagencyid, max(LastModifiedDate),getdate() from [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.studentschoolassociation ssa
	join [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.School school on ssa.SchoolId=school.SchoolId
group by LocalEducationAgencyId

--Daily Attendance
insert into dbo.DataPublishingMostRecentDate
select 'Daily Attendance', localeducationagencyid, max(att.LastModifiedDate),getdate() from [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.studentschoolattendanceevent att
	join [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.School school on att.SchoolId=school.SchoolId
group by LocalEducationAgencyId


--StudentSections (because important)
insert into dbo.DataPublishingMostRecentDate
select 'Student Course Enrollment', localeducationagencyid, max(sec.LastModifiedDate),getdate() from [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.studentsectionassociation sec
	join [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.School school on sec.SchoolId=school.SchoolId
group by LocalEducationAgencyId


--AssessmentRoster
insert into dbo.DataPublishingMostRecentDate
select 'Assessment Roster', EducationOrganizationId, max(assreg.LastModifiedDate),getdate() from [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.[edfixassessmentroster].[StudentAssessmentRegistration] assreg
group by EducationOrganizationId

go


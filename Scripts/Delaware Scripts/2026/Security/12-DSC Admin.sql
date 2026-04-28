 
-- Delete Edorg
----Select * 
--from dbo.ApplicationEducationOrganizations Edorg 
--inner join dbo.applications a
--on a.ApplicationId = edorg.Application_ApplicationId
--Where ApplicationName = 'DataServiceCenter'

--  Delete users
----Select * 
--from dbo.Users a 
--inner join dbo.Vendors b
--on a.vendor_vendorid = b.VendorId
--Where VendorName = 'DataServiceCenter'
 
  
-- Delete Applications
-- --select *
-- from dbo.Applications a 
--inner join dbo.Vendors b
--on a.vendor_vendorid = b.VendorId
--Where VendorName = 'DataServiceCenter'

--Delete 
----Select *
--from dbo.Vendors Where VendorName = 'DataServiceCenter'

insert into [dbo].[ApplicationEducationOrganizations] ([EducationOrganizationId],[Application_ApplicationId])
SELECT EducationOrganizationId
      ,(select ApplicationId    FROM [EdFi_Delaware_Admin_61].[dbo].[Applications] where ApplicationName = 'DSCAssessmentScores')
  FROM [EdFi_Delaware_Admin_61].[dbo].[ApplicationEducationOrganizations]
  where Application_ApplicationId = 16


 --Add Vendor
  insert into vendors ([vendorname])
 values 
 ('DataServiceCenter')


 --Add Application
 --select * from applications

 insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSCStudentInformation',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'StudentInformation','uri://ed-fi-api-host.org' --Applicationid = 7
  insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSCStudentCohort',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'StudentCohort','uri://ed-fi-api-host.org' --Applicationid = 7
  insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSCStudentEnrollment',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'StudentEnrollment','uri://ed-fi-api-host.org'--Applicationid = 8
  insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSCTeachingNLearning',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'TeachingNLearning','uri://ed-fi-api-host.org'
 insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSCStaff',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'Staff','uri://ed-fi-api-host.org'
  insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSCAttendance',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'Attendance','uri://ed-fi-api-host.org'
  insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSCDiscipline',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'Discipline','uri://ed-fi-api-host.org'
 insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSC504Program',(select vendorid from Vendors where  vendorname='DataServiceCenter'), '504Program','uri://ed-fi-api-host.org'
  insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSCSpecialEducationProgram',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'SpecialEducationProgram','uri://ed-fi-api-host.org'
 insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSCEnglishLearner',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'EnglishLearner','uri://ed-fi-api-host.org'
  insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
 select 'DSCHealthRecords',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'HealthRecords','uri://ed-fi-api-host.org'
  insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
  select 'DSCGraduation',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'Graduation','uri://ed-fi-api-host.org'
    insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
  select 'DSCAssessmentScores',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'AssessmentScores','uri://ed-fi-api-host.org'
      insert into applications (applicationname      ,vendor_vendorid      ,claimsetname       ,[operationalcontexturi])
  select 'DSCAssessmentFlags',(select vendorid from Vendors where  vendorname='DataServiceCenter'), 'AssessmentFlags','uri://ed-fi-api-host.org'

--Add User
 insert into users (email     ,fullname      ,vendor_vendorid)
select 'test@test.com', 'DataServiceCenter', (select vendorid from Vendors where  vendorname='DataServiceCenter') --UserId= 9


-- Add APiClients
insert into ApiClients ([key], secret, Name,IsApproved,UseSandbox, SandboxType,Application_ApplicationId,User_UserId,KeyStatus,ChallengeId, ActivationRetried, SecretIsHashed) 

select 'DSCAssessmentScores',   (select REPLACE(SUBSTRING(CAST(NEWID() AS varchar(50)), 0, 15), '-', '') ),'DSC_AssessmentScores', 1, 0, 0, 
(select ApplicationId from dbo.Applications where ApplicationName = 'DSCAssessmentScores'),(select UserId   FROM [EdFi_Delaware_Admin_61].[dbo].[Users] where [FullName] = 'DataServiceCenter'),'Active','',1,0 

-- Add APiClient-AppEdorgs
 With APIClinet as( SELECT ApiClientId  FROM [EdFi_Delaware_Admin_61].[dbo].[ApiClients]
  where [Key] = 'DSCAssessmentScores'),

AppEdorgs as (SELECT [ApplicationEducationOrganizationId]  FROM [EdFi_Delaware_Admin_61].[dbo].[ApplicationEducationOrganizations]
  where Application_ApplicationId = (select ApplicationId FROM [EdFi_Delaware_Admin_61].[dbo].[Applications]
  where applicationName = 'DSCAssessmentScores'))

 insert into [dbo].[ApiClientApplicationEducationOrganizations] ([ApiClient_ApiClientId],[ApplicationEducationOrganization_ApplicationEducationOrganizationId])
  Select * from APIclinet a inner join AppEdorgs b on 1=1
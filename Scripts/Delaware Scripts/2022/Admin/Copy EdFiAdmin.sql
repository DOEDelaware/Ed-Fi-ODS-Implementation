
use [EdFi_Delaware_Admin]

delete ApiClientApplicationEducationOrganizations
delete ApplicationEducationOrganizations
delete ApiClients
delete Applications
delete Vendors

--select * from Vendors
--select * from EdFi_Delaware_Admin_Prod.dbo.Vendors
set identity_insert Vendors on
go
insert into Vendors ([VendorId]      ,[VendorName])
values 
(1, 'PowerSchool'),
(3, 'ClassLink')
go
set identity_insert Vendors off
go 


--select * from Applications
--select * from EdFi_Delaware_Admin_Prod.dbo.Applications
set identity_insert Applications on
go
insert into Applications ([ApplicationId]   ,[ApplicationName]      ,[Vendor_VendorId]      ,[ClaimSetName]      ,[OdsInstance_OdsInstanceId]      ,[OperationalContextUri])
values 
(1, 'eSchoolPlus', 1, 'eSchoolPlus', null, 'uri://ed-fi-api-host.org'),
(3, 'RosterServer', 3, 'RosterServer', null, 'uri://ed-fi-api-host.org')
go
set identity_insert Applications off
go 

--not sure we need this except sandbox
--select * from Users
--select * from EdFi_Delaware_Admin_Prod.dbo.Users
set identity_insert Users on
go
insert into Users ([UserId]      ,[Email]      ,[FullName]      ,[Vendor_VendorId])
values 
(1, 'test@test.com', 'esp', 1),
(2, 'test@test.com', 'classlink',3)
set identity_insert Users off
go 

--creating hard coded
----select * from ApiClients
-- move to secure script

--select * from ApplicationEducationOrganizations
--select * from EdFi_Delaware_Admin_Prod.dbo.ApplicationEducationOrganizations
set identity_insert ApplicationEducationOrganizations on
go
insert into ApplicationEducationOrganizations (
[ApplicationEducationOrganizationId]      ,[EducationOrganizationId]      ,[Application_ApplicationId]
)
select 
[ApplicationEducationOrganizationId]      ,[EducationOrganizationId]      ,[Application_ApplicationId]
from EdFi_Delaware_Admin_Prod.dbo.ApplicationEducationOrganizations  --todo, let's check these against devolutions
go
set identity_insert ApplicationEducationOrganizations off
go 

select distinct EducationOrganizationId, '('  + ', ' + ROW_NUMBER() OVER (ORDER BY EducationOrganizationId) + convert (varchar(10),EducationOrganizationId) + ', 1)' 
from ApplicationEducationOrganizations order by 1

select * from EdFi_Delaware_Ods_2022.edfi.EducationOrganization where Discriminator='edfi.LocalEducationAgency' order by NameOfInstitution





--select * from dbo.ApiClientApplicationEducationOrganizations
insert into ApiClientApplicationEducationOrganizations
select * from EdFi_Delaware_Admin_Prod.dbo.ApiClientApplicationEducationOrganizations
go



--select * from ClientAccessTokens
--select * from EdFi_Delaware_Admin_Prod.dbo.ClientAccessTokens  

--select * from dbo.OdsInstanceComponents
--select * from EdFi_Delaware_Admin_Prod.dbo.OdsInstanceComponents

--select * from dbo.OdsInstances
--select * from EdFi_Delaware_Admin_Prod.dbo.OdsInstances

--select * from ProfileApplications
--select * from EdFi_Delaware_Admin_Prod.dbo.ProfileApplications

--select * from Profiles
--select * from EdFi_Delaware_Admin_Prod.dbo.Profiles


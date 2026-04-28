
use [EdFi_Delaware_Admin]

delete users
delete ApiClientApplicationEducationOrganizations
delete ApplicationEducationOrganizations
delete ApiClients
delete Applications
delete Vendors

--select * from vendors
 --select * from edfi_delaware_admin_prod.dbo.vendors
 set identity_insert vendors on
 go
 insert into vendors ([vendorid]      ,[vendorname])
 values 
 (1, 'powerschool'),
 (3, 'classlink'),
 (4, 'Pearson Assessments'),
 (5, 'Cambium Assessments')
 go
 set identity_insert vendors off
 go 

 set identity_insert VendorNamespacePrefixes on
 go
 insert into VendorNamespacePrefixes ([VendorNamespacePrefixId],[NamespacePrefix],[Vendor_VendorId])
 values (1,'uri://Pearson.com',4),
  (2,'uri://CambiumAssessment.com',5)
 go
 set identity_insert VendorNamespacePrefixes off
 go
 

 --select * from applications
 set identity_insert applications on
 go
 insert into applications ([applicationid]   ,[applicationname]      ,[vendor_vendorid]      ,[claimsetname]      ,[odsinstance_odsinstanceid]      ,[operationalcontexturi])
 values 
 (1, 'eschoolplus', 1, 'eschoolplus', null, 'uri://ed-fi-api-host.org'),
 (3, 'rosterserver', 3, 'rosterserver', null, 'uri://ed-fi-api-host.org'),
 (4, 'Pearson Assessments', 4, 'DEAssessments', null, 'uri://ed-fi-api-host.org'),
 (5, 'Cambium Assessments', 5, 'DEAssessments', null, 'uri://ed-fi-api-host.org')
 go
 set identity_insert applications off
 go 

 set identity_insert users on
 go
 insert into users ([userid]      ,[email]      ,[fullname]      ,[vendor_vendorid])
 values 
 (1, 'test@test.com', 'esp', 1),
 (2, 'test@test.com', 'classlink',3),
 (4, 'test@test.com', 'Pearson',4),
 (5, 'test@test.com', 'CAI Cambium',5)
 set identity_insert users off
go 



 insert into ApplicationEducationOrganizations (
 [EducationOrganizationId]      ,[Application_ApplicationId]
 )
  select DistrictCode, ApplicationId
  from CODELIBRARYSOURCE.CodeLibrary.dbo.District district cross join Applications
  where schoolyear= 2024 and ACT='A'  and Type in ('Service', 'Regular', 'Charter') 
 go

 

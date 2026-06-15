insert into Vendors(VendorName) values ('DOE')
go

insert into VendorNamespacePrefixes (NamespacePrefix,Vendor_VendorId) 
select 'uri://doe.k12.de.us',VendorId from Vendors where VendorName='DOE'
go

insert into Applications (ApplicationName, Vendor_VendorId,ClaimSetName,OperationalContextUri)
select 'Early Learning',VendorId, 'DOEEarlyLearning','uri://ed-fi-api-host.org' from Vendors where VendorName='DOE'
go

insert into Users (Email, FullName, Vendor_VendorId)
select 'DOE@test.com', 'CAI', VendorId from Vendors where VendorName='DOE'
go

declare @appId int
select @appId=ApplicationId from Applications where ApplicationName='Early Learning'
insert into  ApplicationEducationOrganizations(EducationOrganizationId, Application_ApplicationId)
values (9,@appId)
go




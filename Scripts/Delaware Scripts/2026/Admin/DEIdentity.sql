--check IDs on prod
--select * from applications


set identity_insert vendors on
go
insert into vendors (VendorId,VendorName) values (7,'DEDOE')
go
set identity_insert vendors off
go


set identity_insert Applications on
go
insert into Applications (ApplicationId, ApplicationName,Vendor_VendorId,ClaimsetName,OperationalContextURI)
values (18, 'DeIDSearch',7, 'DEIDSearch','uri://ed-fi-api-host.org')
go
set identity_insert Applications off
go


--delete ApplicationEducationOrganizations where EducationOrganizationId=95
--go


--state level
insert into ApplicationEducationOrganizations (EducationOrganizationId,Application_ApplicationId)
values (95,18)
go

set identity_insert users on
go
insert users (UserId, Email, FullName,Vendor_VendorId)
values (7,'test@test.com','DEDOE',7)
go
set identity_insert users off
go




/*
exec [dbo].[SetUpDistrictKeySecret]   95,'NonPubSchools','kdjfaei',7,'DEDOE','DeIDSearch'
*/

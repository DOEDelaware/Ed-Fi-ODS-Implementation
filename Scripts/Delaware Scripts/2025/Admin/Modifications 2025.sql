--Admin

update Applications set ClaimSetName='SIS' where ClaimSetName='eschoolplus'

--select * from Vendors
--select * from Applications
--select * from Users


set identity_insert Vendors on
go
insert into Vendors (VendorID, VendorName) values (10, 'Infinite Campus')
go
set identity_insert Vendors off
go

set identity_insert Applications on
go
insert into Applications (ApplicationId, ApplicationName, Vendor_VendorId,ClaimSetName,OperationalContextUri)
values (22, 'IC SIS',10,'SIS', 'uri://ed-fi-api-host.org')
go
set identity_insert Applications off
go

set identity_insert Users on
go
insert into users (UserId, Email, FullName, Vendor_VendorId)
values (10, 'test@test.com','IC',10)
go
set identity_insert Users off
go
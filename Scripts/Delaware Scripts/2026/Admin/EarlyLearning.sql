select * from vendors
select * from applications
select * from users


insert into Applications (ApplicationName, Vendor_VendorId,OperationalContextUri, ClaimSetName)
values ('Early Learning', 7,'uri://ed-fi-api-host.org','DOEEarlyLearning')

update Applications set ClaimSetName='DOEEarlyLearning' where ApplicationName='Early Learning'
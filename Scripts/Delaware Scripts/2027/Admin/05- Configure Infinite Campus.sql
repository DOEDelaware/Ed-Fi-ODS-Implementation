insert into Vendors(VendorName) values ('Infinite Campus')
go

insert into VendorNamespacePrefixes (NamespacePrefix,Vendor_VendorId) 
select 'uri://infinitecampus.com',VendorId from Vendors where VendorName='Infinite Campus'
go

insert into Applications (ApplicationName, Vendor_VendorId,ClaimSetName,OperationalContextUri)
select 'Infinite Campus SIS',VendorId, 'DESIS','uri://ed-fi-api-host.org' from Vendors where VendorName='Infinite Campus'
go

insert into Users (Email, FullName, Vendor_VendorId)
select 'Campus@test.com', 'IC', VendorId from Vendors where VendorName='Infinite Campus'
go

declare @appId int
select @appId=ApplicationId from Applications where ApplicationName='Infinite Campus SIS'
insert into  ApplicationEducationOrganizations(EducationOrganizationId, Application_ApplicationId)
values (5,@appId),
(9,@appId),
(10,@appId),
(11,@appId),
(12,@appId),
(13,@appId),
(14,@appId),
(15,@appId),
(16,@appId),
(17,@appId),
(18,@appId),
(19,@appId),
(23,@appId),
(24,@appId),
(29,@appId),
(31,@appId),
(32,@appId),
(33,@appId),
(34,@appId),
(35,@appId),
(36,@appId),
(37,@appId),
(38,@appId),
(39,@appId),
(40,@appId),
(43,@appId),
(51,@appId),
(52,@appId),
(53,@appId),
(56,@appId),
(57,@appId),
(58,@appId),
(59,@appId),
(60,@appId),
(69,@appId),
(70,@appId),
(71,@appId),
(72,@appId),
(74,@appId),
(76,@appId),
(77,@appId),
(79,@appId),
(80,@appId),
(82,@appId),
(85,@appId),
(86,@appId),
(87,@appId),
(88,@appId),
(89,@appId),
(90,@appId),
(91,@appId),
(92,@appId),
(93,@appId),
(94,@appId),
(95,@appId),
(96,@appId),
(97,@appId),
(99,@appId),
(150,@appId),
(195,@appId),
(2222,@appId),
(9604,@appId),
(9605,@appId),
(9606,@appId),
(9607,@appId),
(9611,@appId),
(9612,@appId),
(9614,@appId),
(9615,@appId)
go




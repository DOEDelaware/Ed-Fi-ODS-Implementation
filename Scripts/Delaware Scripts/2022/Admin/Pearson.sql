USE [EdFi_Delaware_Admin]
GO
select * from Vendors
select * from VendorNamespacePrefixes
select * from Applications
select * from users



insert into Vendors (VendorName)
select 'Pearson'
go
insert into VendorNamespacePrefixes (NamespacePrefix,Vendor_VendorId)
select 'uri://Pearson.com', VendorId from Vendors where VendorName='Pearson'
go


insert into Applications (ApplicationName, Vendor_VendorId,ClaimSetName,OperationalContextUri)
select 'Pearson Assessments',VendorId,'DEAssessments', 'uri://ed-fi-api-host.org' from Vendors where VendorName='Pearson'
go



insert into Users (email, FullName, Vendor_VendorId)
select 'test@test.com','Pearson', VendorId from Vendors where VendorName='Pearson'


[SetUpApplicationForDistrict] 'Pearson Assessments','Pearson',23,'PearsonAssess','Pearson Assessments',3




create procedure [dbo].[SetUpApplicationForDistrict] (@application varchar(25), @vendorname varchar(25),@districtId int,@keyname varchar(15), @Name varchar(10), @UserId int ) as
 begin

 --example: [SetUpApplicationForDistrict] @application='RosterServer', @vendorname='ClassLink',@districtId=97,@keyname='rsDSCYF97', @name='DSCFY Roster Server', @UserId=2

	declare  @VendorId int 
	declare  @ApplicationId int
	declare  @ApplicationEdOrgId int
	declare  @Secret varchar(15)
	declare  @ApiClientId int
	declare  @ApplicationEducationOrganizationID int


	SET @Secret = REPLACE(SUBSTRING(CAST(NEWID() AS varchar(50)), 0, 15), '-', '')

	select @VendorId=VendorId from Vendors where VendorName=@vendorname

	select @ApplicationId=ApplicationId from Applications where ApplicationName=@application

	insert into ApiClients ([key], secret, Name,IsApproved,UseSandbox, SandboxType,Application_ApplicationId,User_UserId,KeyStatus,ChallengeId, ActivationRetried, SecretIsHashed)
	select @keyname, @Secret,@Name, 1, 0, 0, @ApplicationId,@UserId,'Active','',1,0
	set @ApiClientId=@@IDENTITY

	insert into ApplicationEducationOrganizations (EducationOrganizationId,Application_ApplicationId)
	select @districtId, @ApplicationId
	select @ApplicationEducationOrganizationId=@@IDENTITY

	insert into ApiClientApplicationEducationOrganizations (ApiClient_ApiClientId,ApplicationEducationOrganization_ApplicationEducationOrganizationId)
	values (@ApiClientId,@ApplicationEducationOrganizationId)

	select @DistrictId as District, [Key], Secret from ApiClients where ApiClientId= @ApiClientId
end



GO

select * from ApiClients
select* from ApiClientApplicationEducationOrganizations where ApiClient_ApiClientId=143



select * from ApplicationEducationOrganizations where Application_ApplicationId=4
select* from ApiClientApplicationEducationOrganizations where ApiClient_ApiClientId=143


insert into ApiClientApplicationEducationOrganizations(ApiClient_ApiClientId,ApplicationEducationOrganization_ApplicationEducationOrganizationId)
select 143, ApplicationEducationOrganizationId from ApplicationEducationOrganizations where ApplicationEducationOrganizationId not in 
(select ApplicationEducationOrganization_ApplicationEducationOrganizationId from ApiClientApplicationEducationOrganizations where ApiClient_ApiClientId=143)

insert into ApplicationEducationOrganizations ( EducationOrganizationId,Application_ApplicationId)
select distinct EducationOrganizationId,4 from ApplicationEducationOrganizations where EducationOrganizationId not in
(select EducationOrganizationId from ApplicationEducationOrganizations where Application_ApplicationId=4)
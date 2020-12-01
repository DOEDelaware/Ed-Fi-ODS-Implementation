
use EdFi_Delaware_Admin
go
insert into Vendors (VendorName) values ('PowerSchool')
go
insert into VendorNamespacePrefixes (Vendor_VendorId, NamespacePrefix) select VendorId,'namespace' from Vendors
go
 
insert into Users (Email, FullName, Vendor_VendorId)
select 'scott.kuykendall@doe.k12.de.us','Scott', VendorId from Vendors
go
select * from Users
go



 create procedure SetUpeSchoolDistrict (@districtId int,@key varchar(15), @Name varchar(10), @UserId int ) as
 begin
	declare  @VendorId int 
	declare  @ApplicationId int
	declare  @ApplicationEdOrgId int
	declare  @Secret varchar(15)
	declare  @ApiClientId int
	declare  @ApplicationEducationOrganizationID int


	SET @Secret = REPLACE(SUBSTRING(CAST(NEWID() AS varchar(50)), 0, 15), '-', '')

	select @VendorId=VendorId from Vendors where VendorName='PowerSchool'

	-- insert into Applications (ApplicationName, Vendor_VendorId,ClaimSetName,OperationalContextUri) values ('ESP29', @VendorId, 'eSchoolPlus', 'uri://ed-fi-api-host.org')
	-- set @ApplicationId=@@IDENTITY
	select  @ApplicationId=min(ApplicationId) from Applications where ApplicationName='ESP29'

	insert into ApiClients ([key], secret, Name,IsApproved,UseSandbox, SandboxType,Application_ApplicationId,User_UserId,KeyStatus,ChallengeId, ActivationRetried, SecretIsHashed)
	select @key, @Secret,@Name, 1, 0, 0, @ApplicationId,@UserId,'Active','',1,0
	set @ApiClientId=@@IDENTITY

	insert into ApplicationEducationOrganizations (EducationOrganizationId,Application_ApplicationId)
	select @districtId, @ApplicationId
	select @ApplicationEducationOrganizationId=@@IDENTITY

	insert into ApiClientApplicationEducationOrganizations (ApiClient_ApiClientId,ApplicationEducationOrganization_ApplicationEducationOrganizationId)
	values (@ApiClientId,@ApplicationEducationOrganizationId)

	select @DistrictId as District, [Key], Secret from ApiClients where ApiClientId= @ApiClientId
end
go


exec SetUpeSchoolDistrict 34, 'ESPKeyCol34','ESP34',1
exec SetUpeSchoolDistrict 38, 'ESPKeyNCVT38','ESP34',1
exec SetUpeSchoolDistrict 10, 'ESPKeyCR10','ESP34',1
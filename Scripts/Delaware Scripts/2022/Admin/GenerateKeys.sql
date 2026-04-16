USE [EdFi_Delaware_Admin]
GO



 CREATE procedure [dbo].[SetUpeSchoolDistrict] (@districtId int,@key varchar(15), @Name varchar(10), @UserId int ) as
 begin
	declare  @VendorId int 
	declare  @ApplicationId int
	declare  @ApplicationEdOrgId int
	declare  @Secret varchar(15)
	declare  @ApiClientId int
	declare  @ApplicationEducationOrganizationID int


	SET @Secret = REPLACE(SUBSTRING(CAST(NEWID() AS varchar(50)), 0, 15), '-', '')

	select @VendorId=VendorId from Vendors where VendorName='PowerSchool'



	--insert into Applications (ApplicationName, Vendor_VendorId,ClaimSetName,OperationalContextUri) values ('ESP29', @VendorId, 'eSchoolPlus', 'uri://ed-fi-api-host.org')
	--set @ApplicationId=@@IDENTITY

	set @ApplicationId=1

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


GO




CREATE procedure [dbo].[SetUpRosterServerDistrict] (@districtId int,@key varchar(15), @Name varchar(10), @UserId int ) as
 begin



	declare  @VendorId int 
	declare  @ApplicationId int
	declare  @ApplicationEdOrgId int
	declare  @Secret varchar(15)
	declare  @ApiClientId int
	declare  @ApplicationEducationOrganizationID int


	SET @Secret = REPLACE(SUBSTRING(CAST(NEWID() AS varchar(50)), 0, 15), '-', '')

	select @VendorId=VendorId from Vendors where VendorName='ClassLink'

	select @UserId=min(UserId) from Users where Vendor_VendorId=@VendorId

	select @ApplicationId=ApplicationId from Applications where ApplicationName='RosterServer'

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


GO



USE [EdFi_Delaware_Admin]
GO

/****** Object:  StoredProcedure [dbo].[SetUpRosterServerDistrict]    Script Date: 12/3/2020 7:46:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[SetUpApplicationForDistrict] (@application varchar(25), @vendorname varchar(25),@districtId int,@key varchar(15), @Name varchar(10), @UserId int ) as
 begin



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



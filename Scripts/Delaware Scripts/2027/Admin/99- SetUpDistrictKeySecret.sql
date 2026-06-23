



alter procedure [dbo].[SetUpDistrictKeySecret]  

(@districtId int = null,@key varchar(15), @Seed varchar(10), @UserFullName varchar(max), @VendorName varchar(max), @ApplicationName varchar(max), @OdsInstanceName varchar(max), @ProvidedSecret varchar(15) = null) as 

 begin 

declare  @VendorId int  

declare  @ApplicationId int 

declare  @ApplicationEdOrgId int 

declare  @Secret varchar(15) 

declare  @ApiClientId int 

declare  @ApplicationEducationOrganizationID int 

declare @UserId int

 

IF NULLIF(LTRIM(RTRIM(@ProvidedSecret)), '') IS NOT NULL
BEGIN
    SET @Secret = @ProvidedSecret
END
ELSE
BEGIN
    SET @Secret = REPLACE(SUBSTRING(CAST(NEWID() AS varchar(50)), 0, 15), '-', '')
END

 

select @VendorId=VendorId from Vendors where VendorName=@VendorName 

select  @ApplicationId=min(ApplicationId) from Applications where ApplicationName=@ApplicationName 

select @UserId=UserId from Users where FullName=@UserFullName


insert into ApiClients ([key], secret, Name,IsApproved,UseSandbox, SandboxType,Application_ApplicationId,User_UserId,KeyStatus,ChallengeId, ActivationRetried, SecretIsHashed) 

select @key, @Secret,@key, 1, 0, 0, @ApplicationId,@UserId,'Active','',1,0 

set @ApiClientId=@@IDENTITY 

 insert into ApiClientOdsInstances (ApiClient_ApiClientId, OdsInstance_OdsInstanceId) select @ApiClientId, OdsInstanceId from OdsInstances where name=@OdsInstanceName

IF @districtId IS NOT NULL
BEGIN
    select @ApplicationEducationOrganizationId=ApplicationEducationOrganizationId from ApplicationEducationOrganizations where Application_ApplicationId=@ApplicationId and EducationOrganizationId=@districtId


    insert into ApiClientApplicationEducationOrganizations (ApiClient_ApiClientId,ApplicationEducationOrganization_ApplicationEducationOrganizationId) 

    values (@ApiClientId,@ApplicationEducationOrganizationId) 
END

 

select @DistrictId as District, [Key], Secret from ApiClients where ApiClientId= @ApiClientId 

end 

GO



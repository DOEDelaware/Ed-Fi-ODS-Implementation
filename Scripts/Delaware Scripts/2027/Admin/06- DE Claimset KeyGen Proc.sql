USE [EdFi_Delaware_Admin_73]
GO

/****** Object:  StoredProcedure [dbo].[SetUpDistrictKeySecret]    Script Date: 4/5/2023 7:23:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



alter procedure [dbo].[SetUpDistrictKeySecret]  

(@districtId int,@key varchar(15), @Seed varchar(10), @UserId int, @VendorName varchar(max), @ApplicationName varchar(max), @OdsInstanceName varchar(max)) as 

 begin 

declare  @VendorId int  

declare  @ApplicationId int 

declare  @ApplicationEdOrgId int 

declare  @Secret varchar(15) 

declare  @ApiClientId int 

declare  @ApplicationEducationOrganizationID int 

 

 

SET @Secret = REPLACE(SUBSTRING(CAST(NEWID() AS varchar(50)), 0, 15), '-', '') 

 

select @VendorId=VendorId from Vendors where VendorName=@VendorName 

select  @ApplicationId=min(ApplicationId) from Applications where ApplicationName=@ApplicationName 

 

insert into ApiClients ([key], secret, Name,IsApproved,UseSandbox, SandboxType,Application_ApplicationId,User_UserId,KeyStatus,ChallengeId, ActivationRetried, SecretIsHashed) 

select @key, @Secret,@Seed, 1, 0, 0, @ApplicationId,@UserId,'Active','',1,0 

set @ApiClientId=@@IDENTITY 

 insert into ApiClientOdsInstances (ApiClient_ApiClientId, OdsInstance_OdsInstanceId) select @ApiClientId, OdsInstanceId from OdsInstances where name=@OdsInstanceName

select @ApplicationEducationOrganizationId=ApplicationEducationOrganizationId from ApplicationEducationOrganizations where Application_ApplicationId=@ApplicationId


insert into ApiClientApplicationEducationOrganizations (ApiClient_ApiClientId,ApplicationEducationOrganization_ApplicationEducationOrganizationId) 

values (@ApiClientId,@ApplicationEducationOrganizationId) 

 

select @DistrictId as District, [Key], Secret from ApiClients where ApiClientId= @ApiClientId 

end 

GO



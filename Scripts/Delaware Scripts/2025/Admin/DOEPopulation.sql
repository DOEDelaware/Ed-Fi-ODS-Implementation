USE [EdFi_Delaware_Admin]
GO

/****** Object:  StoredProcedure [dbo].[SetUpDistrictKeySecret]    Script Date: 8/13/2024 2:15:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

select * from users
select * from vendors
select * from applications
select * from ApiClients
select * from ApplicationEducationOrganizations
select * from ApiClientApplicationEducationOrganizations



insert into ApplicationEducationOrganizations (EducationOrganizationId,Application_ApplicationId) values (33,9)
insert into ApiClientApplicationEducationOrganizations (ApiClient_ApiClientId,ApplicationEducationOrganization_ApplicationEducationOrganizationId) values ( 12,195)


select * from ApplicationEducationOrganizations where Application_ApplicationId=9



[SetUpDistrictKeySecret] 33, 'testDOE','testDOE',7,'DEDOE','DOE Population'
--33	testDOE	AB1420DF68F8

create procedure [dbo].[SetUpDistrictKeySecret]  

(@districtId int,@key varchar(15), @Seed varchar(10), @UserId int, @VendorName varchar(max), @ApplicationName varchar(max)) as 

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

 

--insert into ApplicationEducationOrganizations (EducationOrganizationId,Application_ApplicationId) 

--select @districtId, @ApplicationId 

--select @ApplicationEducationOrganizationId=@@IDENTITY 

select @ApplicationEducationOrganizationId=ApplicationEducationOrganizationId from ApplicationEducationOrganizations where Application_ApplicationId=@ApplicationId

 

insert into ApiClientApplicationEducationOrganizations (ApiClient_ApiClientId,ApplicationEducationOrganization_ApplicationEducationOrganizationId) 

values (@ApiClientId,@ApplicationEducationOrganizationId) 

 

select @DistrictId as District, [Key], Secret from ApiClients where ApiClientId= @ApiClientId 

end 

GO



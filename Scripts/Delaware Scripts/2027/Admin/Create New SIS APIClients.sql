use EdFiAdminTesting
go
drop table tempSISReissue
go

--Add table insert into proc:
create table tempSISReissue (District int , MyKey varchar(100), MySecret varchar(100))
go



alter procedure [dbo].[SetUpDistrictKeySecret_Save]  

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

insert into tempSISReissue (District , MyKey, MySecret)
select @DistrictId, [Key], Secret from ApiClients where ApiClientId= @ApiClientId 
end 

GO





--select 
--'SetUpDistrictKeySecret_Save ' + convert(varchar(10),educationOrganizationId) + ', ''IC_' + convert(varchar(4),EducationOrganizationId) + ''', ''' + convert(varchar(20),ChangeVersion) + ''',10,''Infinite Campus'',''IC SIS'';'
--from [EdFi_Delaware_Ods_2026].edfi.EducationOrganization where EducationOrganizationId in (select distinct EducationOrganizationId from [dbo].[ApplicationEducationOrganizations] where (Application_ApplicationId in (select ApplicationId from Applications where ApplicationName='eschoolplus')
--or Application_ApplicationId in (select ApplicationId from Applications where ApplicationName='IC SIS')))
--and EducationOrganizationId not in (5,9,11,12,14,19,43,51,52,53,56,57,58,59,60,91,93,94,96,150,195)
--)

SetUpDistrictKeySecret_Save 10, 'IC_10', '234015',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 13, 'IC_13', '234018',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 15, 'IC_15', '234020',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 16, 'IC_16', '234021',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 17, 'IC_17', '234022',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 18, 'IC_18', '234023',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 23, 'IC_23', '234025',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 24, 'IC_24', '234026',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 29, 'IC_29', '234027',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 31, 'IC_31', '234028',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 32, 'IC_32', '234029',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 33, 'IC_33', '234030',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 34, 'IC_34', '234031',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 35, 'IC_35', '234032',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 36, 'IC_36', '234033',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 37, 'IC_37', '234034',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 38, 'IC_38', '234035',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 39, 'IC_39', '234036',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 40, 'IC_40', '234037',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 69, 'IC_69', '234047',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 70, 'IC_70', '234048',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 71, 'IC_71', '234049',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 72, 'IC_72', '234050',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 74, 'IC_74', '234051',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 76, 'IC_76', '234052',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 77, 'IC_77', '234053',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 79, 'IC_79', '234054',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 80, 'IC_80', '234055',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 82, 'IC_82', '234056',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 85, 'IC_85', '234057',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 86, 'IC_86', '234058',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 87, 'IC_87', '234059',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 88, 'IC_88', '234060',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 89, 'IC_89', '234061',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 90, 'IC_90', '234062',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 92, 'IC_92', '234064',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 97, 'IC_97', '234069',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 9604, 'IC_9604', '234072',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 9605, 'IC_9605', '234073',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 9606, 'IC_9606', '234074',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 9607, 'IC_9607', '234075',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 9611, 'IC_9611', '234076',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 9612, 'IC_9612', '234077',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 9614, 'IC_9614', '234078',10,'Infinite Campus','IC SIS'
go
SetUpDistrictKeySecret_Save 9615, 'IC_9615', '234079',10,'Infinite Campus','IC SIS'
go
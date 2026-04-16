-- --copy key/secrets
-- use EdFi_Delaware_Admin
-- go
-- select * from EdFi_Delaware_Admin_Prod.dbo.Applications
-- select * from Applications
-- select * from ApiClients


-- select * from EdFi_Delaware_Admin_Prod.dbo.ApiClients where [Key] like '%CR13'


-- update ApiClients set [key]='ESPKeyForCR13', Secret='CADE5C701FFB', SecretIsHashed=0




-- insert into ApiClients ([key], secret, Name,IsApproved,UseSandbox, SandboxType,Application_ApplicationId,User_UserId,KeyStatus,ChallengeId, ActivationRetried, SecretIsHashed)
-- select distinct [key], secret, Name,IsApproved,UseSandbox, SandboxType,Application_ApplicationId,User_UserId,KeyStatus,ChallengeId, ActivationRetried, SecretIsHashed from EdFi_Delaware_Admin_Prod.dbo.ApiClients

-- go

-- insert into ApplicationEducationOrganizations (EducationOrganizationId,Application_ApplicationId)
-- select EducationOrganizationId,Application_ApplicationId from EdFi_Delaware_Admin_Prod.dbo.ApplicationEducationOrganizations
-- go
-- insert into ApiClientApplicationEducationOrganizations (ApiClient_ApiClientId,ApplicationEducationOrganization_ApplicationEducationOrganizationId)
-- select ApiClient_ApiClientId,ApplicationEducationOrganization_ApplicationEducationOrganizationId from EdFi_Delaware_Admin_Prod.dbo.ApiClientApplicationEducationOrganizations
-- go

	
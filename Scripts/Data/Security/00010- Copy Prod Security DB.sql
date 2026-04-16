--dev 

--use [Template_EdFi_Delaware_Security]
--go
--delete Claimsets where ClaimsetId=12
--go

--SET IDENTITY_INSERT dbo.ClaimSets ON
--GO  
--Insert into ClaimSets (ClaimSetId, ClaimSetName, Application_ApplicationId)
--values (12, 'Delaware',1)
--go
--SET IDENTITY_INSERT dbo.ClaimSets OFF
--GO  

--update ClaimSetResourceClaims set ClaimSet_ClaimSetId=12 where ClaimSet_ClaimSetId=6 
--go




--select * from [Template_EdFi_Delaware_Security].dbo.ClaimSets 

--select * from ClaimSets 

SET IDENTITY_INSERT dbo.ClaimSets ON
GO  
Insert into ClaimSets (ClaimSetId, ClaimSetName, Application_ApplicationId)
values (12, 'Delaware',1)
go
Insert into ClaimSets (ClaimSetId, ClaimSetName, Application_ApplicationId)
values (10, 'eSchoolPlus',1)
go
Insert into ClaimSets (ClaimSetId, ClaimSetName, Application_ApplicationId)
values (11, 'RosterServer',1)
go
SET IDENTITY_INSERT dbo.ClaimSets OFF
GO  

--delete out of box
delete ResourceClaimAuthorizationMetadatas  --57
delete ClaimSetResourceClaims  --242
delete ResourceClaims --298


SET IDENTITY_INSERT dbo.ResourceClaims ON
GO  
insert into ResourceClaims        (ResourceClaimId,[DisplayName],[ResourceName],[ClaimName],[ParentResourceClaimId],[Application_ApplicationId])
 select distinct ResourceClaimId, [DisplayName],[ResourceName],[ClaimName],[ParentResourceClaimId],[Application_ApplicationId] from [Template_EdFi_Delaware_Security].dbo.ResourceClaims
GO
SET IDENTITY_INSERT dbo.ResourceClaims OFF
GO  






SET IDENTITY_INSERT dbo.ClaimSetResourceClaims ON
GO  
insert into ClaimSetResourceClaims ([ClaimSetResourceClaimId],[Action_ActionId],[ClaimSet_ClaimSetId],[ResourceClaim_ResourceClaimId],[AuthorizationStrategyOverride_AuthorizationStrategyId],[ValidationRuleSetNameOverride])
 select distinct [ClaimSetResourceClaimId],[Action_ActionId],[ClaimSet_ClaimSetId],[ResourceClaim_ResourceClaimId],[AuthorizationStrategyOverride_AuthorizationStrategyId],[ValidationRuleSetNameOverride] from [Template_EdFi_Delaware_Security].dbo.ClaimSetResourceClaims
GO
SET IDENTITY_INSERT dbo.ClaimSetResourceClaims OFF
GO  

SET IDENTITY_INSERT dbo.ResourceClaimAuthorizationMetadatas ON
GO  
insert into ResourceClaimAuthorizationMetadatas ([ResourceClaimAuthorizationStrategyId],[Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId],[ValidationRuleSetName])
 select distinct [ResourceClaimAuthorizationStrategyId],[Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId],[ValidationRuleSetName] from [Template_EdFi_Delaware_Security].dbo.ResourceClaimAuthorizationMetadatas
GO
SET IDENTITY_INSERT dbo.ResourceClaimAuthorizationMetadatas OFF
GO  

--Person security
	update ResourceClaims set ParentResourceClaimId=(select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/people') where ClaimName='http://ed-fi.org/ods/identity/claims/person'
go
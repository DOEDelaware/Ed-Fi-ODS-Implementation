  use EdFi_Delaware_Security

  
  INSERT INTO [dbo].[ClaimSetResourceClaims]
             ([Action_ActionId]
             ,[ClaimSet_ClaimSetId]
             ,[ResourceClaim_ResourceClaimId])

  SELECT [ActionId], [ClaimSetId], [ResourceClaimId] 
  FROM [dbo].[ClaimSets] 
  CROSS JOIN [dbo].[Actions]
  CROSS JOIN [dbo].[ResourceClaims] 
  WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/domains/claimOnly'
  AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'Ed-Fi Sandbox','eSchoolPlus')
 
  --medical
 
  INSERT INTO [dbo].[ClaimSetResourceClaims]
             ([Action_ActionId]
             ,[ClaimSet_ClaimSetId]
             ,[ResourceClaim_ResourceClaimId])

  SELECT [ActionId], [ClaimSetId], [ResourceClaimId] 
  FROM [dbo].[ClaimSets] 
  CROSS JOIN [dbo].[Actions]
  CROSS JOIN [dbo].[ResourceClaims] 
  WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/domains/medical'
  AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'Ed-Fi Sandbox','eSchoolPlus')


 INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas]
             ([Action_ActionId]
             ,[AuthorizationStrategy_AuthorizationStrategyId]
             ,[ResourceClaim_ResourceClaimId])

  SELECT [ActionId], [AuthorizationStrategyId], [ResourceClaimId] 
  FROM [dbo].[AuthorizationStrategies] 
  CROSS JOIN [dbo].[Actions]
  CROSS JOIN [dbo].[ResourceClaims] 
  WHERE 
  [ClaimName] = 'http://ed-fi.org/ods/identity/claims/domains/medical' AND 
  [AuthorizationStrategyName]= 'NoFurtherAuthorizationRequired'
 
 
 
 --Set studentEducationOrganizationResponcibilityAssocation to 'Relationships with Students only' so districts can write other district feeders from eSchoolPlus
 INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] , AuthorizationStrategyOverride_AuthorizationStrategyId) 
 select 1, 10, ResourceClaimId, 6 from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'
 go
 INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] , AuthorizationStrategyOverride_AuthorizationStrategyId) 
 select 2, 10, ResourceClaimId, 6 from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'
 go
 INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] , AuthorizationStrategyOverride_AuthorizationStrategyId) 
 select 3, 10, ResourceClaimId, 6 from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'
 go
 INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] , AuthorizationStrategyOverride_AuthorizationStrategyId) 
 select 4, 10, ResourceClaimId, 6 from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'
 go
 insert into [dbo].[ResourceClaimAuthorizationMetadatas] (Action_ActionId, AuthorizationStrategy_AuthorizationStrategyId, ResourceClaim_ResourceClaimId)
 select 1, 6,ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'
 go
 insert into [dbo].[ResourceClaimAuthorizationMetadatas] (Action_ActionId, AuthorizationStrategy_AuthorizationStrategyId, ResourceClaim_ResourceClaimId)
 select 2, 6,ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'
 go
 insert into [dbo].[ResourceClaimAuthorizationMetadatas] (Action_ActionId, AuthorizationStrategy_AuthorizationStrategyId, ResourceClaim_ResourceClaimId)
 select 3, 6,ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'
 go
 insert into [dbo].[ResourceClaimAuthorizationMetadatas] (Action_ActionId, AuthorizationStrategy_AuthorizationStrategyId, ResourceClaim_ResourceClaimId)
 select 4, 6,ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'
 go
 --clear out parent permission:
 update ResourceClaims set ParentResourceClaimId =null where ResourceName='studentEducationOrganizationResponsibilityAssociation'
 go
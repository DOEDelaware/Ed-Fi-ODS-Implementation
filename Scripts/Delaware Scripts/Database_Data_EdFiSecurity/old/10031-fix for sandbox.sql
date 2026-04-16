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
 DELETE [dbo].[ClaimSetResourceClaims]  where ResourceClaim_ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation')
 go
  INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] , AuthorizationStrategyOverride_AuthorizationStrategyId) 
   SELECT [ActionId], [ClaimSetId], [ResourceClaimId] , (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' and Application_ApplicationId=1)
  FROM [dbo].[ClaimSets] 
  CROSS JOIN [dbo].[Actions]
  CROSS JOIN [dbo].[ResourceClaims] 
  WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/studentEducationOrganizationResponsibilityAssociation'
  AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'Ed-Fi Sandbox','eSchoolPlus')
 
 

  --clear out parent permission:
 update ResourceClaims set ParentResourceClaimId =null where ResourceName='studentEducationOrganizationResponsibilityAssociation'

 -- use EdFi_Delaware_Admin
 -- go
 -- insert into ApplicationEducationOrganizations (EducationOrganizationId, Application_ApplicationId)
-- select distinct EducationOrganizationId, ApplicationId from EdFi_Delaware_Admin_Prod.dbo.ApplicationEducationOrganizations cross join Applications
-- go
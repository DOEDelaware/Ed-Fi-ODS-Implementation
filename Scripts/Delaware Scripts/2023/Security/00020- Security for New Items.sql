insert into ResourceClaims (DisplayName, ResourceName, ClaimName, ParentResourceClaimId,Application_ApplicationId)
values ('sourceSystemDescriptor', 'sourceSystemDescriptor', 'http://ed-fi.org/ods/identity/claims/sourceSystemDescriptor',2,1)


insert into ResourceClaims (DisplayName, ResourceName, ClaimName, ParentResourceClaimId, Application_ApplicationId)
values ('locationDescriptor','locationDescriptor','http://ed-fi.org/ods/identity/claims/locationDescriptor',2,1)


insert into ResourceClaims (DisplayName, ResourceName, ClaimName, ParentResourceClaimId, Application_ApplicationId)
values ('modalityTypeDescriptor','modalityTypeDescriptor','http://ed-fi.org/ods/identity/claims/modalityTypeDescriptor',2,1)


insert into ResourceClaims (DisplayName, ResourceName, ClaimName, ParentResourceClaimId, Application_ApplicationId)
values ('modalityTimeTypeDescriptor','modalityTimeTypeDescriptor','http://ed-fi.org/ods/identity/claims/modalityTimeTypeDescriptor',2,1)


insert into ResourceClaims (DisplayName, ResourceName, ClaimName, ParentResourceClaimId, Application_ApplicationId)
values ('ImmunizationExemptReasonDescriptor','ImmunizationExemptReasonDescriptor','http://ed-fi.org/ods/identity/claims/ImmunizationExemptReasonDescriptor',2,1)


insert into ResourceClaims (DisplayName, ResourceName, ClaimName, ParentResourceClaimId, Application_ApplicationId)
values ('studentDisciplineIncidentBehaviorAssociation','studentDisciplineIncidentBehaviorAssociation','http://ed-fi.org/ods/identity/claims/studentDisciplineIncidentBehaviorAssociation',3,1)


 

insert into ResourceClaims (DisplayName, ResourceName, ClaimName, ParentResourceClaimId, Application_ApplicationId)
values ('studentDisciplineIncidentNonOffenderAssociation','studentDisciplineIncidentNonOffenderAssociation','http://ed-fi.org/ods/identity/claims/studentDisciplineIncidentNonOffenderAssociation',3,1)

 DELETE [dbo].[ClaimSetResourceClaims]  where ResourceClaim_ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation')
 go
  INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] , AuthorizationStrategyOverride_AuthorizationStrategyId) 
   SELECT [ActionId], [ClaimSetId], [ResourceClaimId] , (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' and Application_ApplicationId=1)
  FROM [dbo].[ClaimSets] 
  CROSS JOIN [dbo].[Actions]
  CROSS JOIN [dbo].[ResourceClaims] 
  WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/studentEducationOrganizationResponsibilityAssociation'
  AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'Ed-Fi Sandbox','eSchoolPlus')
 

 
 insert into ResourceClaims (DisplayName, ResourceName, ClaimName, ParentResourceClaimId, Application_ApplicationId)
values ('participationStatusDescriptor','participationStatusDescriptor','http://ed-fi.org/ods/identity/claims/participationStatusDescriptor',2,1)

 insert into ResourceClaims (DisplayName, ResourceName, ClaimName, ParentResourceClaimId, Application_ApplicationId)
values ('DisciplineIncidentParticipationCodeDescriptor','DisciplineIncidentParticipationCodeDescriptor','http://ed-fi.org/ods/identity/claims/DisciplineIncidentParticipationCodeDescriptor',2,1)


--fix people

insert into ResourceClaimAuthorizationMetadatas (Action_ActionId, AuthorizationStrategy_AuthorizationStrategyId, ResourceClaim_ResourceClaimId)
select ActionId,1, ResourceClaimId from ResourceClaims cross join actions where DisplayName in ('person') and ActionName in ('Create','Update')

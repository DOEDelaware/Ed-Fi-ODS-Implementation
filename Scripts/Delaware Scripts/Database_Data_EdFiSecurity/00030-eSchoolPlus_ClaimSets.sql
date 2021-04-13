

insert into ClaimSets (ClaimSetName, Application_ApplicationId) select 'eSchoolPlus', ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'



--  select  
-- 'insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId) 
--select ' + convert(varchar(50), Action_ActionId) + ', (select ClaimSetId from ClaimSets where ClaimSetName=''' + cs.ClaimSetName + ''') , ' +  
-- '(select ResourceClaimId from ResourceClaims where ClaimName=''' + rc.ClaimName + ''')'   
--  from ClaimSetResourceClaims csrc 
--	join ClaimSets cs on csrc.ClaimSet_ClaimSetId=cs.ClaimSetId
--	join ResourceClaims rc on csrc.ResourceClaim_ResourceClaimId=rc.ResourceClaimId									
--where csrc.ClaimSet_ClaimSetId in (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus')
 
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/edFiTypes')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/systemDescriptors')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/educationOrganizations')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/people')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/people')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/people')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/people')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/relationshipBasedData')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/relationshipBasedData')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/relationshipBasedData')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/relationshipBasedData')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/managedDescriptors')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/managedDescriptors')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/managedDescriptors')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/managedDescriptors')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/identity')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/identity')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/identity')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/educationStandards')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/educationStandards')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/educationStandards')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/educationStandards')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/educationContent')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/educationContent')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/educationContent')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/educationContent')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/communityProviderLicense')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/communityProviderLicense')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/communityProviderLicense')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/communityProviderLicense')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/claimOnly')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/claimOnly')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/claimOnly')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/claimOnly')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/medical')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/medical')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/medical')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/medical')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/medicationBox')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/medicationBox')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/medicationBox')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/medicationBox')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/person')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/person')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/person')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/person')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEducationOrganizationResponsibilityAssociation')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEducationOrganizationResponsibilityAssociation')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEducationOrganizationResponsibilityAssociation')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEducationOrganizationResponsibilityAssociation')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentadministration')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessment')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentassessmentregistration')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentassessmentregistration')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentassessmentregistration')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentassessmentregistration')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEarlyChildhoodProgramAssociation')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEarlyChildhoodProgramAssociation')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEarlyChildhoodProgramAssociation')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEarlyChildhoodProgramAssociation')


--select 
--'INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas] ([Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId])
--     select '
--            + convert(varchar(50),  isnull(Action_ActionId,'')) + '
--           ,' + convert(varchar(50),isnull(AuthorizationStrategy_AuthorizationStrategyId,'')) + '
--           , (select ResourceClaimId from ResourceClaims where ClaimName=''' + rc.ClaimName + ''')
--		    where not exists (select * from [ResourceClaimAuthorizationMetadatas] where Action_ActionId='
--            + convert(varchar(50),  isnull(Action_ActionId,'')) + ' and [AuthorizationStrategy_AuthorizationStrategyId]=' + convert(varchar(50),isnull(AuthorizationStrategy_AuthorizationStrategyId,'')) + ' and [ResourceClaim_ResourceClaimId]=(select ResourceClaimId from ResourceClaims where ClaimName=''' + rc.ClaimName + '''))'
--from ResourceClaimAuthorizationMetadatas meta 
--	join ResourceClaims rc on meta.ResourceClaim_ResourceClaimId=rc.ResourceClaimId
--	join ClaimSets cs on meta.ResourceClaim_ResourceClaimId=cs.ClaimSetId
--where cs.ClaimSetId in (select ClaimSetId from ClaimSets where ClaimSetName='eSchoolPlus')

INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas] ([Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId])       select 1             ,3             , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships')        where not exists (select * from [ResourceClaimAuthorizationMetadatas] where Action_ActionId=1 and [AuthorizationStrategy_AuthorizationStrategyId]=3 and [ResourceClaim_ResourceClaimId]=(select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships'))
INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas] ([Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId])       select 2             ,2             , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships')        where not exists (select * from [ResourceClaimAuthorizationMetadatas] where Action_ActionId=2 and [AuthorizationStrategy_AuthorizationStrategyId]=2 and [ResourceClaim_ResourceClaimId]=(select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships'))
INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas] ([Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId])       select 3             ,2             , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships')        where not exists (select * from [ResourceClaimAuthorizationMetadatas] where Action_ActionId=3 and [AuthorizationStrategy_AuthorizationStrategyId]=2 and [ResourceClaim_ResourceClaimId]=(select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships'))
INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas] ([Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId])       select 4             ,2             , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships')        where not exists (select * from [ResourceClaimAuthorizationMetadatas] where Action_ActionId=4 and [AuthorizationStrategy_AuthorizationStrategyId]=2 and [ResourceClaim_ResourceClaimId]=(select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships'))
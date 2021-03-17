

insert into ClaimSets (ClaimSetName, Application_ApplicationId) select 'RosterServer', ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'

--select  
-- 'insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId) 
--select ' + convert(varchar(50), Action_ActionId) + ', (select ClaimSetId from ClaimSets where ClaimSetName=''' + cs.ClaimSetName + ''') , ' +  
-- '(select ResourceClaimId from ResourceClaims where ClaimName=''' + rc.ClaimName + ''')'   
--  from ClaimSetResourceClaims csrc 
--	join ClaimSets cs on csrc.ClaimSet_ClaimSetId=cs.ClaimSetId
--	join ResourceClaims rc on csrc.ResourceClaim_ResourceClaimId=rc.ResourceClaimId									
--where csrc.ClaimSet_ClaimSetId in (select ClaimSetId from ClaimSets where ClaimSetName='RosterServer')
 
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='RosterServer') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/systemDescriptors')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='RosterServer') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/relationshipBasedData')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='RosterServer') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/educationOrganizations')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='RosterServer') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/people')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='RosterServer') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/edFiTypes')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='RosterServer') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='RosterServer') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEducationOrganizationAssociation')

--select 
--'INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas] ([Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId])
--     select '
--            + convert(varchar(50),  isnull(Action_ActionId,'')) + '
--           ,' + convert(varchar(50),isnull(AuthorizationStrategy_AuthorizationStrategyId,'')) + '
--           , (select ResourceClaimId from ResourceClaims where ClaimName=''' + rc.ClaimName + ''')'
--from ResourceClaimAuthorizationMetadatas meta 
--	join ResourceClaims rc on meta.ResourceClaim_ResourceClaimId=rc.ResourceClaimId
--	join ClaimSets cs on meta.ResourceClaim_ResourceClaimId=cs.ClaimSetId
--where cs.ClaimSetId in (select ClaimSetId from ClaimSets where ClaimSetName='RosterServer')



INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas] ([Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId])       select 1             ,1             , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/identity')
INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas] ([Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId])       select 2             ,1             , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/identity')
INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas] ([Action_ActionId],[AuthorizationStrategy_AuthorizationStrategyId],[ResourceClaim_ResourceClaimId])       select 3             ,1             , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/identity')

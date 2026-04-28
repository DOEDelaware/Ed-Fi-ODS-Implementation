use EdFi_Delaware_Security
go


insert into ClaimSets (ClaimSetName, Application_ApplicationId) select 'DEAssessments', ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'

--ChangeQueries/v1/availableChangeVersions
--data/v3/ed-fi/students
--data/v3/ed-fi/studentEducationOrganizationAssociations
--data/v3/ed-fi/studentSchoolAssociations
--data/v3/de/student504ProgramAssociations
--data/v3/ed-fi/studentTitleIPartAProgramAssociations
--data/v3/ed-fi/studentSpecialEducationProgramAssociations
--data/v3/ed-fi-xassessment-roster/studentAssessmentRegistrations?assessmentIdentifier

--select * from Actions

--select * from ClaimSets


--select * 
--from ClaimSetResourceClaims csrc join ResourceClaims rc on csrc.ResourceClaim_ResourceClaimId=rc.ParentResourceClaimId
--	join ClaimSets cs on csrc.ClaimSet_ClaimSetId=cs.ClaimSetId
--where ClaimSet_ClaimSetId=4  --assessment vendor

--select 'insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select ' + convert(varchar(50),action_actionid) + ',(select ClaimSetId from ClaimSets where ClaimSetName=''DEAssessments'')  , (select ResourceClaimId from ResourceClaims where ClaimName=''' + ClaimName + ''')'
--from ClaimSetResourceClaims csrc join ResourceClaims rc on csrc.ResourceClaim_ResourceClaimId=rc.ParentResourceClaimId
--	join ClaimSets cs on csrc.ClaimSet_ClaimSetId=cs.ClaimSetId
--where ClaimSet_ClaimSetId=4  --assessment vendor

 --rostering
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/systemDescriptors')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/relationshipBasedData')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/educationOrganizations')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/people')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/edFiTypes')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/primaryRelationships')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEducationOrganizationAssociation')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 2, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentEducationOrganizationResponsibilityAssociation')


--Assessment scores commenting out for initial testing
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 1, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/systemDescriptors')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 3, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/systemDescriptors')
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId)   select 4, (select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments') , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/systemDescriptors')

 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 1,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 1,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentItem'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 1,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/objectiveAssessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 1,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentAssessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 2,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 2,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentItem'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 2,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/objectiveAssessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 2,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentAssessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 3,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 3,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentItem'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 3,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/objectiveAssessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 3,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentAssessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 4,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 4,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentItem'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 4,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/objectiveAssessment'),4 --by namespace
 insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId,AuthorizationStrategyOverride_AuthorizationStrategyId)   select 4,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentAssessment'),4 --by namespace

--Assessment Registration
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId, AuthorizationStrategyOverride_AuthorizationStrategyId)   select 2,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentAdministration') ,4 --by namespace
insert into ClaimSetResourceClaims (Action_ActionId, ClaimSet_ClaimSetId, ResourceClaim_ResourceClaimId, AuthorizationStrategyOverride_AuthorizationStrategyId)   select 2,(select ClaimSetId from ClaimSets where ClaimSetName='DEAssessments')  , (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentAssessmentRegistration') ,4 --by namespace



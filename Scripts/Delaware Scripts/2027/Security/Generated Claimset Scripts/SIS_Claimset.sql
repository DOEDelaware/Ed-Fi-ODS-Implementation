/*
    SIS ClaimSet
    Generated from 2027 claimset Word documentation.
    Source document(s): SIS.docx

    ActionId mapping:
        1 = Create
        2 = Read
        3 = Update
        4 = Delete
        5 = ReadChanges
*/



use EdFi_Delaware_Security_7x
go

insert into ClaimSets (ClaimSetName, IsEdfiPreset, ForApplicationUseOnly)
values ('DESIS', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'DESIS'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('assessment', 2),
    ('assessmentAdministration', 2),
    --('bulk', 1),
    --('bulk', 2),
    --('bulk', 3),
    --('bulk', 4),
    --('claimOnly', 1),
    --('claimOnly', 2),
    --('claimOnly', 3),
    --('claimOnly', 4),
    ('communityProviderLicense', 1),
    ('communityProviderLicense', 2),
    ('communityProviderLicense', 3),
    ('communityProviderLicense', 4),
    ('DeescalationTechniqueDescriptor', 2),
    ('educationContent', 1),
    ('educationContent', 2),
    ('educationContent', 3),
    ('educationContent', 4),
    ('educationOrganizations', 2),
    ('educationStandards', 1),
    ('educationStandards', 2),
    ('educationStandards', 3),
    ('educationStandards', 4),
    ('identity', 1),
    ('identity', 2),
    ('identity', 3),
    ('managedDescriptors', 1),
    ('managedDescriptors', 2),
    ('managedDescriptors', 3),
    ('managedDescriptors', 4),
    --('medical', 1),
    --('medical', 2),
    --('medical', 3),
    --('medical', 4),
    --('medicationBox', 1),
    --('medicationBox', 2),
    --('medicationBox', 3),
    --('medicationBox', 4),
    ('NonViolentTechniqueDescriptor', 2),
    ('people', 1),
    ('people', 2),
    ('people', 3),
    ('people', 4),
    ('person', 2),
    ('primaryRelationships', 1),
    ('primaryRelationships', 2),
    ('primaryRelationships', 3),
    ('primaryRelationships', 4),
    ('reasonForLateIEPDescriptor', 2),
    ('relationshipBasedData', 1),
    ('relationshipBasedData', 2),
    ('relationshipBasedData', 3),
    ('relationshipBasedData', 4),
    ('studentAssessmentRegistration', 1),
    ('studentAssessmentRegistration', 2),
    ('studentAssessmentRegistration', 3),
    ('studentAssessmentRegistration', 4),
    ('studentEarlyChildhoodProgramAssociation', 1),
    ('studentEarlyChildhoodProgramAssociation', 2),
    ('studentEarlyChildhoodProgramAssociation', 3),
    ('studentEarlyChildhoodProgramAssociation', 4),
    ('studentEducationOrganizationAssociation', 1),
    ('studentEducationOrganizationAssociation', 2),
    ('studentEducationOrganizationAssociation', 3),
    ('studentEducationOrganizationAssociation', 4),
    ('studentEducationOrganizationResponsibilityAssociation', 1),
    ('studentEducationOrganizationResponsibilityAssociation', 2),
    ('studentEducationOrganizationResponsibilityAssociation', 3),
    ('studentEducationOrganizationResponsibilityAssociation', 4),
    ('systemDescriptors', 2),
    ('types', 2),
    ('studentHealth', 1),
    ('studentHealth', 2),
    ('studentHealth', 3),
    ('studentHealth', 4),
    ('publicationStatusDescriptor', 1),
    ('publicationStatusDescriptor', 2),
    ('publicationStatusDescriptor', 3),
    ('publicationStatusDescriptor', 4)
) as ResourceClaimPermissions(ResourceName, ActionId)
go

--override AssessmentAdmin and StudentAssessmentRegistration
insert into [dbo].[ClaimSetResourceClaimActionAuthorizationStrategyOverrides] (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='RelationshipsWithEdOrgsAndPeople' )   from ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName in ('StudentAssessmentRegistration')) 
and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='DESIS')

insert into [dbo].[ClaimSetResourceClaimActionAuthorizationStrategyOverrides] (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='RelationshipsWithEdOrgsAndPeople' )   from ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName in ('assessmentAdministration')) 
and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='DESIS')
go

--Allow writing publication Status Descriptor (learning locations) 
insert into [dbo].[ClaimSetResourceClaimActionAuthorizationStrategyOverrides] (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName in ('publicationStatusDescriptor')) 
and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='DESIS')


GO




--Survey 
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='Survey'),2

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='SurveyQuestion'),2

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='surveyResponse'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='surveyResponse'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='surveyResponse'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='surveyResponse'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='surveyResponse'),5

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='surveyQuestionResponse'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='surveyQuestionResponse'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='surveyQuestionResponse'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='surveyQuestionResponse'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DESIS'), (select ResourceClaimId from ResourceClaims where ResourceName='surveyQuestionResponse'),5

 

use master
go
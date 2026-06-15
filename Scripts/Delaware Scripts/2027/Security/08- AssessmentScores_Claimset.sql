/*
    AssessmentScores ClaimSet
    Generated from 2027 claimset Word documentation.
    Source document(s): 1 DSC Security (Multiple Claimsets).docx

    ActionId mapping:
        1 = Create
        2 = Read
        3 = Update
        4 = Delete
        5 = ReadChanges
*/

Use EdFi_Delaware_Security_7x
go

insert into ClaimSets (ClaimSetName, IsEdfiPreset, ForApplicationUseOnly)
values ('AssessmentScores', 0, 1)
go

insert into dbo.ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'AssessmentScores'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('assessment', 2),
    ('assessment', 5),
    ('assessmentItem', 2),
    ('assessmentItem', 5),
    ('localEducationAgency', 2),
    ('localEducationAgency', 5),
    ('managedDescriptors', 2),
    ('managedDescriptors', 5),
    ('objectiveAssessment', 2),
    ('objectiveAssessment', 5),
    ('person', 2),
    ('person', 5),
    ('school', 2),
    ('school', 5),
    ('student', 2),
    ('student', 5),
    ('studentAssessment', 2),
    ('studentAssessment', 5),
    ('studentAssessmentEducationOrganizationAssociation', 2),
    ('studentAssessmentEducationOrganizationAssociation', 5),
    ('studentEducationOrganizationAssociation', 2),
    ('studentEducationOrganizationAssociation', 5),
    ('systemDescriptors', 2),
    ('systemDescriptors', 5),
    ('types', 2),
    ('types', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go

--Assessment scores Override permission (normally based on namespace, but the DSC needs to read all)
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='assessment') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='AssessmentScores')

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='assessmentItem') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='AssessmentScores')

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='objectiveAssessment') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='AssessmentScores')

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessment') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='AssessmentScores')


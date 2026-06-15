/*
    SpecialEducationProgram ClaimSet
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

INSERT INTO dbo.ClaimSets (ClaimSetName, IsEdfiPreset, ForApplicationUseOnly)
values ('SpecialEducationProgram', 0, 1)
go

INSERT INTO dbo.ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'SpecialEducationProgram'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('localEducationAgency', 2),
    ('localEducationAgency', 5),
    ('person', 2),
    ('person', 5),
    ('program', 2),
    ('program', 5),
    ('school', 2),
    ('school', 5),
    ('student', 2),
    ('student', 5),
    ('studentSpecialEducationProgramAssociation', 2),
    ('studentSpecialEducationProgramAssociation', 5),
    ('systemDescriptors', 2),
    ('systemDescriptors', 5),
    ('types', 2),
    ('types', 5),
	('survey', 2),
    ('survey', 5),
	('surveyQuestion', 2),
    ('surveyQuestion', 5),
	('surveyQuestionResponse', 2),
    ('surveyQuestionResponse', 5),
	('surveyResponse', 2),
    ('surveyResponse', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go

--Survey Override permission (normally based on namespace)
INSERT INTO dbo.ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='survey') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='SpecialEducationProgram')

INSERT INTO dbo.ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='surveyQuestion') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='SpecialEducationProgram')

INSERT INTO dbo.ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='surveyQuestionResponse') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='SpecialEducationProgram')

INSERT INTO dbo.ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='surveyResponse') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='SpecialEducationProgram')


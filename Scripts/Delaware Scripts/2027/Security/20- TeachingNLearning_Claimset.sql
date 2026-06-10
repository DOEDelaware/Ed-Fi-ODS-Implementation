/*
    TeachingNLearning ClaimSet
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
values ('TeachingNLearning', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'TeachingNLearning'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('bellSchedule', 2),
    ('bellSchedule', 5),
    ('calendar', 2),
    ('calendar', 5),
    ('calendarDate', 2),
    ('calendarDate', 5),
    ('learningStandard', 2),
    ('learningStandard', 5),
    ('classPeriod', 2),
    ('classPeriod', 5),
    ('course', 2),
    ('course', 5),
    ('courseOffering', 2),
    ('courseOffering', 5),
    ('grade', 2),
    ('grade', 5),
    ('gradebookEntry', 2),
    ('gradebookEntry', 5),
    ('gradingPeriod', 2),
    ('gradingPeriod', 5),
    ('localEducationAgency', 2),
    ('localEducationAgency', 5),
    ('location', 2),
    ('location', 5),
    ('person', 2),
    ('person', 5),
    ('school', 2),
    ('school', 5),
    ('section', 2),
    ('section', 5),
    ('session', 2),
    ('session', 5),
    ('student', 2),
    ('student', 5),
    ('studentGradebookEntry', 2),
    ('studentGradebookEntry', 5),
    ('studentSchoolAssociation', 2),
    ('studentSchoolAssociation', 5),
    ('studentSectionAssociation', 2),
    ('studentSectionAssociation', 5),
    ('systemDescriptors', 2),
    ('systemDescriptors', 5),
    ('types', 2),
    ('types', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go
use master 
go


--Learning Standards Override permission (normally based on namespace, but the DSC needs to read all)
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired')   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='learningStandard') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='TeachingNLearning')

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='gradebookEntry') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='TeachingNLearning')

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' )   from dbo.ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='studentGradebookEntry') and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='TeachingNLearning')

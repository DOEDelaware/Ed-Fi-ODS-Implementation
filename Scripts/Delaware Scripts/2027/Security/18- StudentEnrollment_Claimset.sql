/*
    StudentEnrollment ClaimSet
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
values ('StudentEnrollment', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'StudentEnrollment'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('calendar', 2),
    ('calendar', 5),
    ('calendarDate', 2),
    ('calendarDate', 5),
    ('grade', 2),
    ('graduationPlan', 2),
    ('graduationPlan', 5),
    ('localEducationAgency', 2),
    ('localEducationAgency', 5),
    ('person', 2),
    ('person', 5),
    ('school', 2),
    ('school', 5),
    ('student', 2),
    ('student', 5),
    ('studentEducationOrganizationResponsibilityAssociation', 2),
    ('studentEducationOrganizationResponsibilityAssociation', 5),
    ('studentSchoolAssociation', 2),
    ('studentSchoolAssociation', 5),
    ('systemDescriptors', 2),
    ('systemDescriptors', 5),
    ('types', 2),
    ('types', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go

--Responsibility schools Authorization
insert into [dbo].[ClaimSetResourceClaimActionAuthorizationStrategyOverrides] (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='RelationshipsWithStudentsOnly' )   
from ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation') 
and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='StudentEnrollment')
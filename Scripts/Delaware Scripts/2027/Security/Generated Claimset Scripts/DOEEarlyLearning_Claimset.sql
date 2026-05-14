/*
    DOEEarlyLearning ClaimSet
    Generated from 2027 claimset Word documentation.
    Source document(s): DOEEarlyLearning.docx

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
values ('DOEEarlyLearning', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'DOEEarlyLearning'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('identity', 1),
    ('identity', 2),
    ('identity', 3),
    ('person', 1),
    ('person', 2),
    ('person', 3),
    ('person', 4),
    ('person', 5),
    ('student', 1),
    ('student', 2),
    ('student', 3),
    ('student', 4),
    ('student', 5),
    ('studentEarlyChildhoodProgramAssociation', 1),
    ('studentEarlyChildhoodProgramAssociation', 2),
    ('studentEarlyChildhoodProgramAssociation', 3),
    ('studentEarlyChildhoodProgramAssociation', 4),
    ('studentEarlyChildhoodProgramAssociation', 5),
    ('studentEducationOrganizationAssociation', 1),
    ('studentEducationOrganizationAssociation', 2),
    ('studentEducationOrganizationAssociation', 3),
    ('studentEducationOrganizationAssociation', 4),
    ('studentEducationOrganizationAssociation', 5),
    ('studentEducationOrganizationResponsibilityAssociation', 1),
    ('studentEducationOrganizationResponsibilityAssociation', 2),
    ('studentEducationOrganizationResponsibilityAssociation', 3),
    ('studentEducationOrganizationResponsibilityAssociation', 4),
    ('studentEducationOrganizationResponsibilityAssociation', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go
use master
go
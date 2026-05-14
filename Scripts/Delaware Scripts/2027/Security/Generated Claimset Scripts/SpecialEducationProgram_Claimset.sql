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

Use EdFi_Delaware_Security_73
go

insert into ClaimSets (ClaimSetName, IsEdfiPreset, ForApplicationUseOnly)
values ('SpecialEducationProgram', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
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
    ('types', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go

use master
go

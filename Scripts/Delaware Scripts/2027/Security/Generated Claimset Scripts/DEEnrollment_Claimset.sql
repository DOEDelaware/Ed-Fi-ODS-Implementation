/*
    DEEnrollment ClaimSet
    Generated from 2027 claimset Word documentation.
    Source document(s): DEEnrollment.docx

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
values ('DEEnrollment', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'DEEnrollment'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('localEducationAgency', 2),
    ('school', 2),
    ('student', 2),
    ('studentSchoolAssociation', 2),
    ('systemDescriptors', 2)
) as ResourceClaimPermissions(ResourceName, ActionId)
go
use master
go
/*
    RosterServer ClaimSet
    Generated from 2027 claimset Word documentation.
    Source document(s): RosterServer.docx

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
values ('RosterServer', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'RosterServer'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('educationOrganizations', 2),
    ('people', 2),
    ('primaryRelationships', 2),
    ('relationshipBasedData', 2),
    ('studentEducationOrganizationAssociation', 2),
    ('systemDescriptors', 2),
    ('types', 2)
) as ResourceClaimPermissions(ResourceName, ActionId)
go
use master
go
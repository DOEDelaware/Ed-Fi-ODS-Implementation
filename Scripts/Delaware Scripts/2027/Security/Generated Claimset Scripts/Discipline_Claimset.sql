/*
    Discipline ClaimSet
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
values ('Discipline', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select --ResourceName, 
    (select ClaimSetId from ClaimSets where ClaimSetName = 'Discipline'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    --('allegedBullyingVictim', 2),
    --('allegedBullyingVictim', 5),
    ('disciplineAction', 2),
    ('disciplineAction', 5),
    ('disciplineIncident', 2),
    ('disciplineIncident', 5),
    ('localEducationAgency', 2),
    ('localEducationAgency', 5),
    ('person', 2),
    ('person', 5),
    ('restraintEvent', 2),
    ('restraintEvent', 5),
    --('restraintSeclusion', 2),
    --('restraintSeclusion', 5),
    ('school', 2),
    ('school', 5),
    ('staff', 2),
    ('staff', 5),
    ('staffDisciplineIncidentAssociation', 2),
    ('staffDisciplineIncidentAssociation', 5),
    ('student', 2),
    ('student', 5),
    --('studentDisciplineIncidentAssociation', 2),
    --('studentDisciplineIncidentAssociation', 5),
    ('studentDisciplineIncidentBehaviorAssociation', 2),
    ('studentDisciplineIncidentBehaviorAssociation', 5),
    ('studentDisciplineIncidentNonOffenderAssociation', 2),
    ('studentDisciplineIncidentNonOffenderAssociation', 5),
    ('systemDescriptors', 2),
    ('systemDescriptors', 5),
    ('types', 2),
    ('types', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go
use master
go
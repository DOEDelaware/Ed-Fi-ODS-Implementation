/*
    HealthRecords ClaimSet
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
values ('HealthRecords', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'HealthRecords'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('localEducationAgency', 2),
    ('localEducationAgency', 5),
    --('medicalAlert', 2),
    --('medicalAlert', 5),
    --('medicalOfficeVisit', 2),
    --('medicalOfficeVisit', 5),
    --('medicalReferralFollowUp', 2),
    --('medicalReferralFollowUp', 5),
    --('medicalScreening', 2),
    --('medicalScreening', 5),
    --('medicationBox', 2),
    --('medicationBox', 5),
    --('person', 2),
    --('person', 5),
    --('personImmunization', 2),
    --('personImmunization', 5),
    ('StudentHealthAlert', 2),
    ('StudentHealthAlert', 5),
    ('school', 2),
    ('school', 5),
    ('student', 2),
    ('student', 5),
    ('systemDescriptors', 2),
    ('systemDescriptors', 5),
    ('types', 2),
    ('types', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go
use master
go
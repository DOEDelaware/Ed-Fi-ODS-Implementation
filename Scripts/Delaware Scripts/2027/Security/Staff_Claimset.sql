/*
    Staff ClaimSet
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
values ('Staff', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'Staff'),
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
    ('staff', 2),
    ('staff', 5),
    ('staffCohortAssociation', 2),
    ('staffCohortAssociation', 5),
    ('staffEducationOrganizationAssignmentAssociation', 2),
    ('staffEducationOrganizationAssignmentAssociation', 5),
    ('staffEducationOrganizationContactAssociation', 2),
    ('staffEducationOrganizationContactAssociation', 5),
    ('staffProgramAssociation', 2),
    ('staffProgramAssociation', 5),
    ('staffSchoolAssociation', 2),
    ('staffSchoolAssociation', 5),
    ('staffSectionAssociation', 2),
    ('staffSectionAssociation', 5),
    ('systemDescriptors', 2),
    ('systemDescriptors', 5),
    ('types', 2),
    ('types', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go
use master
go
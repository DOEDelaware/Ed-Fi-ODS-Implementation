/*
    Graduation ClaimSet
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
values ('Graduation', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select -- ResourceName,
    (select ClaimSetId from ClaimSets where ClaimSetName = 'Graduation'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('graduationPlan', 2),
    ('graduationPlan', 5),
    ('localEducationAgency', 2),
    ('localEducationAgency', 5),
    ('person', 2),
    ('person', 5),
    ('postSecondaryEvent', 2),
    ('postSecondaryEvent', 5),
    ('postSecondaryInstitution', 2),
    ('postSecondaryInstitution', 5),
    ('school', 2),
    ('school', 5),
    ('student', 2),
    ('student', 5),
    ('studentAcademicRecord', 2),
    ('studentAcademicRecord', 5),
    ('studentSchoolAssociation', 2),
    ('studentSchoolAssociation', 5),
    ('systemDescriptors', 2),
    ('systemDescriptors', 5),
    ('types', 2),
    ('types', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go
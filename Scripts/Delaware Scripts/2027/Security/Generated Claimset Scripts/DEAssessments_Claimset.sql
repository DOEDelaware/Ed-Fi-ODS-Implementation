/*
    DEAssessments ClaimSet
    Generated from 2027 claimset Word documentation.
    Source document(s): DEAssessments.docx

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
values ('DEAssessments', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'DEAssessments'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('assessment', 1),
    ('assessment', 2),
    ('assessment', 3),
    ('assessment', 4),
    ('assessmentAdministration', 2),
    ('assessmentAdministration', 5),
    ('assessmentItem', 1),
    ('assessmentItem', 2),
    ('assessmentItem', 3),
    ('assessmentItem', 4),
    ('educationOrganizations', 2),
    ('educationOrganizations', 5),
    ('managedDescriptors', 1),
    ('managedDescriptors', 2),
    ('managedDescriptors', 3),
    ('managedDescriptors', 4),
    ('objectiveAssessment', 1),
    ('objectiveAssessment', 2),
    ('objectiveAssessment', 3),
    ('objectiveAssessment', 4),
    ('people', 2),
    ('people', 5),
    ('primaryRelationships', 2),
    ('primaryRelationships', 5),
    ('relationshipBasedData', 2),
    ('relationshipBasedData', 5),
    ('studentAssessment', 1),
    ('studentAssessment', 2),
    ('studentAssessment', 3),
    ('studentAssessment', 4),
    ('studentAssessmentRegistration', 2),
    ('studentAssessmentRegistration', 5),
    ('studentEducationOrganizationAssociation', 2),
    ('studentEducationOrganizationAssociation', 5),
    ('studentEducationOrganizationResponsibilityAssociation', 2),
    ('studentEducationOrganizationResponsibilityAssociation', 5),
    ('systemDescriptors', 1),
    ('systemDescriptors', 2),
    ('systemDescriptors', 3),
    ('systemDescriptors', 4),
    ('types', 2),
    ('types', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go
use master
go
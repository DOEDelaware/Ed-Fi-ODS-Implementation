/*
    DOEDCDDataPopulation ClaimSet
    Generated from 2027 claimset Word documentation.
    Source document(s): DOEDCDDataPopulation.docx

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
values ('DOEDCDDataPopulation', 0, 1)
go

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
select
    (select ClaimSetId from ClaimSets where ClaimSetName = 'DOEDCDDataPopulation'),
    (select ResourceClaimId from ResourceClaims where ResourceName = ResourceClaimPermissions.ResourceName),
    ResourceClaimPermissions.ActionId
from (values
    ('assessment', 1),
    ('assessment', 2),
    ('assessment', 3),
    ('assessment', 4),
    ('assessmentAdministration', 1),
    ('assessmentAdministration', 2),
    ('assessmentAdministration', 3),
    ('assessmentAdministration', 4),
    ('assessmentItem', 1),
    ('assessmentItem', 2),
    ('assessmentItem', 3),
    ('assessmentItem', 4),
    ('communityOrganization', 1),
    ('communityOrganization', 2),
    ('communityOrganization', 3),
    ('communityOrganization', 4),
    ('communityOrganization', 5),
    ('communityProvider', 1),
    ('communityProvider', 2),
    ('communityProvider', 3),
    ('communityProvider', 4),
    ('communityProvider', 5),
    ('educationOrganizations', 1),
    ('educationOrganizations', 2),
    ('educationOrganizations', 3),
    ('educationOrganizations', 4),
    ('educationOrganizations', 5),
    ('studentHealth', 1),
    ('studentHealth', 2),
    ('studentHealth', 3),
    ('studentHealth', 4),
    ('studentHealth', 5),
    ('objectiveAssessment', 1),
    ('objectiveAssessment', 2),
    ('objectiveAssessment', 3),
    ('objectiveAssessment', 4),
    ('program', 1),
    ('program', 2),
    ('program', 3),
    ('program', 4),
    ('program', 5),
    ('ProgramEvaluation', 1),
    ('ProgramEvaluation', 2),
    ('ProgramEvaluation', 3),
    ('ProgramEvaluation', 4),
    ('ProgramEvaluation', 5),
    ('schoolYearType', 1),
    ('schoolYearType', 2),
    ('schoolYearType', 3),
    ('schoolYearType', 4),
    ('schoolYearType', 5),
    ('systemDescriptors', 1),
    ('systemDescriptors', 2),
    ('systemDescriptors', 3),
    ('systemDescriptors', 4),
    ('systemDescriptors', 5),
    ('Survey', 1),
    ('Survey', 2),
    ('Survey', 3),
    ('Survey', 4),
    ('Survey', 5),
    ('SurveyQuestion', 1),
    ('SurveyQuestion', 2),
    ('SurveyQuestion', 3),
    ('SurveyQuestion', 4),
    ('SurveyQuestion', 5)
) as ResourceClaimPermissions(ResourceName, ActionId)
go
use master
go
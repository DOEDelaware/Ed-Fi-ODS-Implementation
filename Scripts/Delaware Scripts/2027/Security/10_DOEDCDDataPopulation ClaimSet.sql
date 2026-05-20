/*
    DOEDCDDataPopulation ClaimSet
    Adds the claim set and resource claim permissions documented for 2027.

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
    ('SurveyQuestion', 5),
    ('programEvaluationElement', 1),
    ('programEvaluationElement', 2),
    ('programEvaluationElement', 3),
    ('programEvaluationElement', 4),
    ('programEvaluationObjective', 1),
    ('programEvaluationObjective', 2),
    ('programEvaluationObjective', 3),
    ('programEvaluationObjective', 4)
) as ResourceClaimPermissions(ResourceName, ActionId)
go

--Assessment Rostering Override permission 
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentAdministration') AND ActionId = 1
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentAdministration') AND ActionId = 2
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentAdministration') AND ActionId = 3
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentAdministration') AND ActionId = 4

--Overide Assessment
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessment') AND ActionId = 1

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessment') AND ActionId = 2
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessment') AND ActionId =3
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessment') AND ActionId = 4
go


--Overide Survey
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/Survey') AND ActionId = 1

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/Survey') AND ActionId = 2
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/Survey') AND ActionId =3
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/Survey') AND ActionId = 4
go


--Overide SurveyQuestions
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/SurveyQuestion') AND ActionId = 1

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/SurveyQuestion') AND ActionId = 2
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/SurveyQuestion') AND ActionId =3
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/SurveyQuestion') AND ActionId = 4
go


--override for descriptor
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ResourceName='systemDescriptors') AND ActionId = 1

go
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ResourceName='systemDescriptors') AND ActionId = 2

go

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ResourceName='systemDescriptors') AND ActionId = 3
go

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ResourceName='systemDescriptors') AND ActionId = 4

go

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ResourceName='systemDescriptors') AND ActionId = 5
go
insert into ClaimSets (ClaimSetName, Application_ApplicationId) select 'DOEEarlyLearning', ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'
go




--	People
--	students
--  studentEducationOrganizationResponcibilityAssociations
--	studentEducationOrganizationAssociations - Relationships with Students only (through StudentEducationOrganizationResponsibilityAssociation)
--	studentEarlyChildhoodProgramAssociations - Relationships with Students only (through StudentEducationOrganizationResponsibilityAssociation)

select * from AuthorizationStrategies --7
select * from Actions
select * from ResourceClaims where DisplayName like '%people%'




INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) 
select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning'), (select ResourceClaimId from ResourceClaims where ResourceName='person'), ActionID from Actions

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) 
select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning'), (select ResourceClaimId from ResourceClaims where ResourceName='student'), ActionID from Actions

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) 
select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'), ActionID from Actions

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) 
select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationAssociation'), ActionID from Actions

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) 
select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEarlyChildhoodProgramAssociation'), ActionID from Actions


-- SEOA and studentEarlyChildhoodProgramAssociation use Relationships with Students only (through StudentEducationOrganizationResponsibilityAssociation)

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 3 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ResourceName='studentEducationOrganizationResponsibilityAssociation')  --Relationships with Education Organizations only

INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 7 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ResourceName='studentEducationOrganizationAssociation')


INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 7 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ResourceName='studentEarlyChildhoodProgramAssociation') 

-- student updates and read can be done through SEORA
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 7 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ResourceName='student') 
	and ActionId in (2,3)



--identity
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning'), (select ResourceClaimId from ResourceClaims where ResourceName='identity'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning'), (select ResourceClaimId from ResourceClaims where ResourceName='identity'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEEarlyLearning'), (select ResourceClaimId from ResourceClaims where ResourceName='identity'),3


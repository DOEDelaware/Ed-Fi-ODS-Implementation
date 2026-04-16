insert into ClaimSets (ClaimSetName, Application_ApplicationId) select 'DOEDCDDataPopulation', ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'
go
select * from ClaimSetResourceClaimActions join ResourceClaims on ClaimSetResourceClaimActions.ResourceClaimId=ResourceClaims.ResourceClaimId 
where ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation')


--	Schools
--	SECTIONS
--	Staff
--	StaffSchoolAssociations
--	StaffSectionAssociations
--	Students
--	StudentSchoolAssociations
--	StudentSectionAssociations
--	course offerings
--	courses
--	Parents
--	StudentParentAssociations
--	Assessments (if possible for discovery)


--select * from ResourceClaims
select * from ClaimSetResourceClaimActions where ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') 
and ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors')

--select * from act


--system descriptors
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),2
--edorgs
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),5
--communityOrganizations
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='communityOrganization'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='communityOrganization'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='communityOrganization'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='communityOrganization'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='communityOrganization'),5
--communityProviders
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='communityProvider'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='communityProvider'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='communityProvider'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='communityProvider'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='communityProvider'),5
--EdOrgs
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),5
--ProgramEvaluation
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='ProgramEvaluation'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='ProgramEvaluation'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='ProgramEvaluation'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='ProgramEvaluation'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='ProgramEvaluation'),5

select * from ClaimSetResourceClaimActions where ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='ProgramEvaluation')


insert into ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId,1 from ClaimSetResourceClaimActions where ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation')
and ResourceClaimId in  (select ResourceClaimId from ResourceClaims where ResourceName='ProgramEvaluation')



--select * from ClaimSetResourceClaimActions where claimsetid in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation')
--select * from ResourceClaims where resourceclaimId=4
--select * from ClaimSets where claimsetid=17

--select * from ResourceClaims where displayname like 'program%' or ResourceClaimId=6


--select * from ResourceClaims where displayname like 'ProgramEvaluation%'


update ResourceClaims set ParentResourceClaimId=471 where ResourceName in ('ProgramEvaluationElement','ProgramEvaluationObjective')




--select * from AuthorizationStrategies
--select * from ClaimSetResourceClaimActions where ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation')
--select * from ResourceClaimActionAuthorizationStrategies


--select * from ResourceClaimActions where ResourceClaimId in  (select ResourceClaimId from ResourceClaims where ResourceName='communityProvider')

insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,1 from ResourceClaims where ResourceName='communityProvider'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,2 from ResourceClaims where ResourceName='communityProvider'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,3 from ResourceClaims where ResourceName='communityProvider'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,4 from ResourceClaims where ResourceName='communityProvider'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,5 from ResourceClaims where ResourceName='communityProvider'

insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,1 from ResourceClaims where ResourceName='communityOrganization'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,2 from ResourceClaims where ResourceName='communityOrganization'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,3 from ResourceClaims where ResourceName='communityOrganization'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,4 from ResourceClaims where ResourceName='communityOrganization'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,5 from ResourceClaims where ResourceName='communityOrganization'


insert into ResourceClaimActionAuthorizationStrategies (ResourceClaimActionId, AuthorizationStrategyId)
select ResourceClaimActionId,1 from ResourceClaimActions where ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName in ('communityOrganization','communityProvider'))

--need override to create new lea/schools
insert into ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId,1 from ClaimSetResourceClaimActions where ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation')
and ResourceClaimId in  (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations')
and ActionId=1

--select * from ResourceClaims where ResourceName='program'



--UAT- 2026
--programs
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,1 from ResourceClaims where ResourceName='program'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,2 from ResourceClaims where ResourceName='program'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,3 from ResourceClaims where ResourceName='program'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,4 from ResourceClaims where ResourceName='program'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,5 from ResourceClaims where ResourceName='program'


INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='program'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='program'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='program'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='program'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='program'),5

--select * from ClaimSetResourceClaimActions where ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='program')

--select * from ClaimSets





insert into ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId,1 from ClaimSetResourceClaimActions where ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation')
and ResourceClaimId in  (select ResourceClaimId from ResourceClaims where ResourceName='program')
and ActionId=1

insert into ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId,1 from ClaimSetResourceClaimActions where ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation')
and ResourceClaimId in  (select ResourceClaimId from ResourceClaims where ResourceName='program')
and ActionId=2

insert into ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId,1 from ClaimSetResourceClaimActions where ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation')
and ResourceClaimId in  (select ResourceClaimId from ResourceClaims where ResourceName='program')
and ActionId=3

insert into ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId,1 from ClaimSetResourceClaimActions where ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation')
and ResourceClaimId in  (select ResourceClaimId from ResourceClaims where ResourceName='program')
and ActionId=4

insert into ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId,1 from ClaimSetResourceClaimActions where ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation')
and ResourceClaimId in  (select ResourceClaimId from ResourceClaims where ResourceName='program')
and ActionId=5



--Assessments
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessment'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessment'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessment'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessment'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentItem'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentItem'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentItem'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentItem'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='objectiveAssessment'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='objectiveAssessment'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='objectiveAssessment'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='objectiveAssessment'),4

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentAdministration'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentAdministration'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentAdministration'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentAdministration'),4


select * from ClaimSetResourceClaimActions where ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='assessmentAdministration')

select * from ClaimSetResourceClaimActionAuthorizationStrategyOverrides where ClaimSetResourceClaimActionId in (
select ClaimSetResourceClaimActionId from ClaimSetResourceClaimActions where ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='assessmentAdministration')
)



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

	--select * from  ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessment'
	--select * from ClaimSetResourceClaimActions WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessment')

	--select * from ClaimSetResourceClaimActionAuthorizationStrategyOverrides where ClaimSetResourceClaimActionId  in (select ClaimSetResourceClaimActionId from ClaimSetResourceClaimActions where ResourceClaimId in (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessment'))

	--select * from ClaimSetResourceClaimActions where ClaimSetResourceClaimActionId in (685,674,675,676)

	--select * from ClaimSetResourceClaimActionAuthorizationStrategyOverrides where ClaimSetResourceClaimActionId in (685,674,675,676)
	--select * from AuthorizationStrategies
	--delete ClaimSetResourceClaimActionAuthorizationStrategyOverrides where ClaimSetResourceClaimActionId in (685,674,675,676)


--descriptors
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),1
--INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentAdministration'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),5

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

--school year type
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,1 from ResourceClaims where ResourceName='SchoolYearType'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,2 from ResourceClaims where ResourceName='SchoolYearType'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,3 from ResourceClaims where ResourceName='SchoolYearType'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,4 from ResourceClaims where ResourceName='SchoolYearType'
insert into ResourceClaimActions (ResourceClaimId, ActionId) select ResourceClaimId,5 from ResourceClaims where ResourceName='SchoolYearType'

insert into ResourceClaimActionAuthorizationStrategies (ResourceClaimActionId, AuthorizationStrategyId)
select ResourceClaimActionId,1 from ResourceClaimActions  where ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='SchoolYearType')



INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='SchoolYearType'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='SchoolYearType'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='SchoolYearType'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='SchoolYearType'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='SchoolYearType'),5
go



--MedicalAlerts

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='medicalAlert'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='medicalAlert'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='medicalAlert'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='medicalAlert'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DOEDCDDataPopulation'), (select ResourceClaimId from ResourceClaims where ResourceName='medicalAlert'),5
go

insert into ClaimSets (ClaimSetName, Application_ApplicationId) select 'EdSun', ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'
go


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





INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun'), (select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun'), (select ResourceClaimId from ResourceClaims where ResourceName='people'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun'), (select ResourceClaimId from ResourceClaims where ResourceName='types'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun'), (select ResourceClaimId from ResourceClaims where ResourceName='primaryRelationships'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationAssociation'),2

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun'), (select ResourceClaimId from ResourceClaims where ResourceName='Assessment'),2

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessment'),2





--Assessment Rostering Override permission (normally based on namespace, but the SIS needs to write anyone)
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 4 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/Assessment') AND ActionId = 2


INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 4 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='EdSun') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/studentAssessment') AND ActionId = 2


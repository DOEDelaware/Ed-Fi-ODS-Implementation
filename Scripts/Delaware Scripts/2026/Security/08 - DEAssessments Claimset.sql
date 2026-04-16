insert into ClaimSets (ClaimSetName, Application_ApplicationId) select 'DEAssessments', ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'
go


--select * from [EdFi_Delaware_Security_Production].dbo.Claimsets


--select 
--'INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName=''DEAssessments''), ' +
--'(select ResourceClaimId from ResourceClaims where ResourceName=''' + rc.ResourceName + '''),' +  convert(varchar(50),Action_ActionId)
--from [EdFi_Delaware_Security_Production].dbo.ClaimSetResourceClaims csrc 
--	join [EdFi_Delaware_Security_Production].dbo.ResourceClaims rc on csrc.ResourceClaim_ResourceClaimId=rc.ResourceClaimId
--where ClaimSet_ClaimSetId in (select ClaimsetID from [EdFi_Delaware_Security_Production].dbo.Claimsets where ClaimSetName='DEAssessments')


INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='managedDescriptors'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='managedDescriptors'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='managedDescriptors'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='managedDescriptors'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='people'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='types'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='primaryRelationships'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='assessment'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='assessment'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='assessment'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='assessment'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentItem'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentItem'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentItem'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentItem'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='objectiveAssessment'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='objectiveAssessment'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='objectiveAssessment'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='objectiveAssessment'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessment'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessment'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessment'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessment'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationAssociation'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentAdministration'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessmentRegistration'),2

--sk 9/27/2023 change query permission
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),5
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='people'),5
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='types'),5
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='primaryRelationships'),5
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationAssociation'),5
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'),5
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentAdministration'),5
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessmentRegistration'),5



INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) 
select (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments'), (select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData'),5




--Assessment Rostering Override permission (normally based on namespace, but the SIS needs to write anyone)
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 4 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentAdministration') AND ActionId = 2


INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 4 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='DEAssessments') AND ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/studentAssessmentRegistration') AND ActionId = 2


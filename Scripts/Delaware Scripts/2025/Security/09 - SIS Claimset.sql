


  --eSchoolPlus
  --RosterServer
  --DEAssessments
  --6.1
Use EdFi_Delaware_Security
go

--select * from ClaimSets


insert into ClaimSets (ClaimSetName, Application_ApplicationId) select 'SIS', ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'
go

--SELECT ClaimSets.ClaimSetName, ResourceClaims.DisplayName, Actions.ActionName
--FROM ClaimSets
--JOIN ClaimSetResourceClaimActions ON ClaimSetResourceClaimActions.ClaimSetId = ClaimSets.ClaimSetId
--JOIN ResourceClaims ON ResourceClaims.ResourceClaimId = ClaimSetResourceClaimActions.ResourceClaimId
--JOIN Actions ON Actions.ActionId = ClaimSetResourceClaimActions.ActionId


--declare @ClaimSetID int
--select @ClaimSetID=ClaimSetId from ClaimSets where  ClaimSetName='SIS'
--select 
--'INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select ' + convert(varchar(50),@ClaimSetID) + ', ' +
--'(select ResourceClaimId from ResourceClaims where ResourceName=''' + rc.ResourceName + '''),' +  convert(varchar(50),Action_ActionId)
--from [EdFi_Delaware_Security_Production].dbo.ClaimSetResourceClaims csrc 
--	join [EdFi_Delaware_Security_Production].dbo.ResourceClaims rc on csrc.ResourceClaim_ResourceClaimId=rc.ResourceClaimId
--where ClaimSet_ClaimSetId=10

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='bulk'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='bulk'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='bulk'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='bulk'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='managedDescriptors'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='managedDescriptors'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='managedDescriptors'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='managedDescriptors'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='educationStandards'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='educationStandards'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='educationStandards'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='educationStandards'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='people'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='people'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='people'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='people'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='types'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='primaryRelationships'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='primaryRelationships'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='primaryRelationships'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='primaryRelationships'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='identity'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='identity'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='identity'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='assessment'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='communityProviderLicense'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='communityProviderLicense'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='communityProviderLicense'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='communityProviderLicense'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='educationContent'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='educationContent'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='educationContent'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='educationContent'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='claimOnly'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='claimOnly'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='claimOnly'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='claimOnly'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='medical'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='medical'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='medical'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='medical'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='medicationBox'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='medicationBox'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='medicationBox'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='medicationBox'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='person'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEarlyChildhoodProgramAssociation'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEarlyChildhoodProgramAssociation'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEarlyChildhoodProgramAssociation'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEarlyChildhoodProgramAssociation'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='assessmentAdministration'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessmentRegistration'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessmentRegistration'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessmentRegistration'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentAssessmentRegistration'),4
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='DeescalationTechniqueDescriptor'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='NonViolentTechniqueDescriptor'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='reasonForLateIEPDescriptor'),2

 

--Responsibility schools
insert into [dbo].[ClaimSetResourceClaimActionAuthorizationStrategyOverrides] (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' and Application_ApplicationId=1)   from ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation') 
and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='SIS')




--SEAO eschool should be able to write any so can pick up Early Learning

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationAssociation'),1
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationAssociation'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationAssociation'),3
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='SIS'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationAssociation'),4

insert into [dbo].[ClaimSetResourceClaimActionAuthorizationStrategyOverrides] (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
select ClaimSetResourceClaimActionId, (select AuthorizationStrategyId from AuthorizationStrategies where AuthorizationStrategyName='NoFurtherAuthorizationRequired' and Application_ApplicationId=1)   from ClaimSetResourceClaimActions 
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationAssociation') 
and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='SIS')
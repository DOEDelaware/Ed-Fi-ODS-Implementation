 INSERT INTO [dbo].[ResourceClaims]
            ([DisplayName]
            ,[ResourceName]
            ,[ClaimName]
            ,[Application_ApplicationId])
      VALUES
		    ('assessmentAdministration','assessmentAdministration','http://ed-fi.org/ods/identity/claims/assessmentAdministration',1)	,	   
		    ('studentAssessmentRegistration','studentAssessmentRegistration','http://ed-fi.org/ods/identity/claims/studentAssessmentRegistration',1)	
			
			
			
 INSERT INTO [dbo].[ClaimSetResourceClaims]
            ([Action_ActionId]
            ,[ClaimSet_ClaimSetId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [ClaimSetId], [ResourceClaimId] 
 FROM [dbo].[ClaimSets] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/assessmentAdministration'
 AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'Ed-Fi Sandbox','eSchoolPlus')
 AND [ActionName] = 'Read';

 --assessment
  INSERT INTO [dbo].[ClaimSetResourceClaims]
            ([Action_ActionId]
            ,[ClaimSet_ClaimSetId]
            ,[ResourceClaim_ResourceClaimId])

  SELECT [ActionId], [ClaimSetId], [ResourceClaimId] 
 FROM [dbo].[ClaimSets] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/assessment'
 AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'Ed-Fi Sandbox','eSchoolPlus')
 AND [ActionName] = 'Read';
 go

 INSERT INTO [dbo].[ClaimSetResourceClaims]
            ([Action_ActionId]
            ,[ClaimSet_ClaimSetId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [ClaimSetId], [ResourceClaimId] 
 FROM [dbo].[ClaimSets] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/studentAssessmentRegistration'
 AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'Ed-Fi Sandbox','eSchoolPlus');
go




--update ResourceClaims set ParentResourceClaimId=
--(select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentroster')
--WHERE [ClaimName] in ('http://ed-fi.org/ods/identity/claims/studentAssessmentRegistration','http://ed-fi.org/ods/identity/claims/assessmentAdministration')

--go

 INSERT INTO [dbo].[ResourceClaims]
            ([DisplayName]
            ,[ResourceName]
            ,[ClaimName]
            ,[Application_ApplicationId])
      VALUES
		    ('DeescalationTechniqueDescriptor','DeescalationTechniqueDescriptor','http://ed-fi.org/ods/identity/claims/DeescalationTechniqueDescriptor',1),	  
		    ('NonViolentTechniqueDescriptor','NonViolentTechniqueDescriptor','http://ed-fi.org/ods/identity/claims/NonViolentTechniqueDescriptor',1),
			('reasonForLateIEPDescriptor','reasonForLateIEPDescriptor','http://ed-fi.org/ods/identity/claims/reasonForLateIEPDescriptor',1)
			
go
 INSERT INTO [dbo].[ClaimSetResourceClaims]
            ([Action_ActionId]
            ,[ClaimSet_ClaimSetId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [ClaimSetId], [ResourceClaimId] 
 FROM [dbo].[ClaimSets] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE [ClaimName] in ('http://ed-fi.org/ods/identity/claims/NonViolentTechniqueDescriptor','http://ed-fi.org/ods/identity/claims/DeescalationTechniqueDescriptor','http://ed-fi.org/ods/identity/claims/reasonForLateIEPDescriptor')
 AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'Ed-Fi Sandbox','eSchoolPlus')
  AND [ActionName] = 'Read';
go




update dbo.ResourceClaims set ParentResourceClaimId=( select ResourceClaimId from dbo.ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/systemDescriptors')  
WHERE [ClaimName] in ('http://ed-fi.org/ods/identity/claims/NonViolentTechniqueDescriptor','http://ed-fi.org/ods/identity/claims/DeescalationTechniqueDescriptor','http://ed-fi.org/ods/identity/claims/reasonForLateIEPDescriptor')
go



INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas]
            ([Action_ActionId]
            ,[AuthorizationStrategy_AuthorizationStrategyId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [AuthorizationStrategyId], [ResourceClaimId] 
 FROM [dbo].[AuthorizationStrategies] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE 
 [ClaimName] = 'http://ed-fi.org/ods/identity/claims/assessmentAdministration' AND 
 [AuthorizationStrategyName]= 'NoFurtherAuthorizationRequired' and
 ActionName='Read'

go
INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas]
            ([Action_ActionId]
            ,[AuthorizationStrategy_AuthorizationStrategyId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [AuthorizationStrategyId], [ResourceClaimId] 
 FROM [dbo].[AuthorizationStrategies] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE 
 [ClaimName] = 'http://ed-fi.org/ods/identity/claims/assessment' AND 
 [AuthorizationStrategyName]= 'NoFurtherAuthorizationRequired' and
 ActionName='Read'


 go
 
 INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas]
            ([Action_ActionId]
            ,[AuthorizationStrategy_AuthorizationStrategyId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [AuthorizationStrategyId], [ResourceClaimId] 
 FROM [dbo].[AuthorizationStrategies] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE 
 [ClaimName] = 'http://ed-fi.org/ods/identity/claims/studentAssessmentRegistration' AND 
 [AuthorizationStrategyName]= 'RelationshipsWithEdOrgsAndPeople' 



 go


 -- select * from ResourceClaims WHERE [ClaimName] in ('http://ed-fi.org/ods/identity/claims/studentAssessmentRegistration','http://ed-fi.org/ods/identity/claims/assessmentAdministration')

 


-- insert into edfi.Assessment (AssessmentIdentifier, [Namespace],AssessmentTitle,CreateDate,LastModifiedDate)
--select '1','uri://doe.k12.de.us/AsessmentRoster','test',getdate(),getdate()

--insert into edfixassessmentroster.assessmentAdministration 
--(AdministrationIdentifier,AssessmentIdentifier,AssigningEducationOrganizationId, Namespace,CreateDate,LastModifiedDate)
--select '1','1',95,'uri://doe.k12.de.us/AsessmentRoster',getdate(),getdate()


update ResourceClaims set ResourceName='assessmentAdministration' WHERE [ClaimName] in ('http://ed-fi.org/ods/identity/claims/studentAssessmentRegistration')

update ResourceClaims set ResourceName='studentAssessmentRegistration' WHERE [ClaimName] in ('http://ed-fi.org/ods/identity/claims/studentAssessmentRegistration')


go

--select * from ResourceClaims  WHERE [ClaimName] in ('http://ed-fi.org/ods/identity/claims/studentEarlyChildhoodProgramAssociation')
--select * from [ClaimSetResourceClaims] where ResourceClaim_ResourceClaimId=323
--select * from [ResourceClaimAuthorizationMetadatas]  where ResourceClaim_ResourceClaimId=323



--Security for program relationship to early childhood provider (relationship with student only)
 INSERT INTO [dbo].[ClaimSetResourceClaims]
            ([Action_ActionId]
            ,[ClaimSet_ClaimSetId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [ClaimSetId], [ResourceClaimId] 
 FROM [dbo].[ClaimSets] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 CROSS JOIN dbo.AuthorizationStrategies
 WHERE [ClaimName] in ('http://ed-fi.org/ods/identity/claims/studentEarlyChildhoodProgramAssociation')
 AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'eSchoolPlus', 'Ed-Fi Sandbox')
 AND AuthorizationStrategyName='RelationshipsWithStudentsOnly'
 go


 insert into [dbo].[ResourceClaimAuthorizationMetadatas] (Action_ActionId, AuthorizationStrategy_AuthorizationStrategyId, ResourceClaim_ResourceClaimId)
 SELECT [ActionId], AuthorizationStrategyId, [ResourceClaimId] 
 FROM
 [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 CROSS JOIN dbo.AuthorizationStrategies
 WHERE [ClaimName] in ('http://ed-fi.org/ods/identity/claims/studentEarlyChildhoodProgramAssociation')
 AND AuthorizationStrategyName='RelationshipsWithStudentsOnly'
 go
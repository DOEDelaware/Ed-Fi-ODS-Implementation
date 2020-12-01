


 /* INSERT NEW CLAIMSET FOR DELAWARE */

 INSERT INTO [dbo].[ClaimSets]
            ([ClaimSetName]
            ,[Application_ApplicationId])
      VALUES
            ('Delaware', 1);

		
		
 /* INSERT NEW RESOURCE CLAIMS FOR DELAWARE EXTENSION DOMAINS */

 DECLARE @ApplicationId INT
 
 SELECT @ApplicationId = ApplicationId
 FROM [dbo].[Applications]
 WHERE ApplicationName = 'Ed-Fi ODS API'
  
 DECLARE @ParentResourceClaimId INT
 SELECT @ParentResourceClaimId = ResourceClaimId
 FROM [dbo].[ResourceClaims]
 WHERE ResourceName = 'relationshipBasedData'
 
 INSERT INTO [dbo].[ResourceClaims] ( [DisplayName]
                                      ,[ResourceName]
                                      ,[ClaimName]     
                                      ,[ParentResourceClaimId]
                                      ,[Application_ApplicationId]
                                      )
 VALUES ('edfixassessmentroster'
         ,'edfixassessmentroster'
         ,'http://ed-fi.org/ods/identity/claims/ed-fi-xassessment-roster'
         ,@ParentResourceClaimId
         ,@ApplicationId
         )

 select @ParentResourceClaimId=ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/edfixassessmentroster'


 INSERT INTO [dbo].[ResourceClaims] ( [DisplayName]
                                      ,[ResourceName]
                                      ,[ClaimName]     
                                      ,[ParentResourceClaimId]
                                      ,[Application_ApplicationId]
                                      )
 VALUES ('studentassessmentadministrationassociation'
         ,'studentassessmentadministrationassociation'
         ,'http://ed-fi.org/ods/identity/claims/studentassessmentadministrationassociation'
         ,@ParentResourceClaimId
         ,@ApplicationId
         )


 INSERT INTO [dbo].[ResourceClaims]
            ([DisplayName]
            ,[ResourceName]
            ,[ClaimName]
            ,[Application_ApplicationId])
      VALUES
			 ('de','de','http://ed-fi.org/ods/identity/claims/de',1),
            ('claimOnly', 'claimOnly', 'http://ed-fi.org/ods/identity/claims/domains/claimOnly', 1),
		    ('medical', 'medical', 'http://ed-fi.org/ods/identity/claims/domains/medical', 1),
		    ('aPExamCodeDescriptor','aPExamCodeDescriptor','http://ed-fi.org/ods/identity/claims/aPExamCodeDescriptor',1),
		    ('acceptanceStatusDescriptor','acceptanceStatusDescriptor','http://ed-fi.org/ods/identity/claims/acceptanceStatusDescriptor',1),
		    ('allegedBullyingVictim','allegedBullyingVictim','http://ed-fi.org/ods/identity/claims/allegedBullyingVictim',1),
		    ('attendanceConfigurationCategoryDescriptor','attendanceConfigurationCategoryDescriptor','http://ed-fi.org/ods/identity/claims/attendanceConfigurationCategoryDescriptor',1),
		    ('bullyingCategoryDescriptor','bullyingCategoryDescriptor','http://ed-fi.org/ods/identity/claims/bullyingCategoryDescriptor',1),
		    ('cIPCourse','cIPCourse','http://ed-fi.org/ods/identity/claims/cIPCourse',1),
		    ('certificateCategoryDescriptor','certificateCategoryDescriptor','http://ed-fi.org/ods/identity/claims/certificateCategoryDescriptor',1),
		    ('certificationDescriptor','certificationDescriptor','http://ed-fi.org/ods/identity/claims/certificationDescriptor',1),
		    ('choiceCategoryDescriptor','choiceCategoryDescriptor','http://ed-fi.org/ods/identity/claims/choiceCategoryDescriptor',1),
		    ('coreSubjectDescriptor','coreSubjectDescriptor','http://ed-fi.org/ods/identity/claims/coreSubjectDescriptor',1),
		    ('cycleDescriptor','cycleDescriptor','http://ed-fi.org/ods/identity/claims/cycleDescriptor',1),
		    ('diplomaCertificateCategoryDescriptor','diplomaCertificateCategoryDescriptor','http://ed-fi.org/ods/identity/claims/diplomaCertificateCategoryDescriptor',1),
		    ('disciplineDispositionDescriptor','disciplineDispositionDescriptor','http://ed-fi.org/ods/identity/claims/disciplineDispositionDescriptor',1),
		    ('disciplineIncidentCode','disciplineIncidentCode','http://ed-fi.org/ods/identity/claims/disciplineIncidentCode',1),
		    ('enrollmentTypeDescriptor','enrollmentTypeDescriptor','http://ed-fi.org/ods/identity/claims/enrollmentTypeDescriptor',1),
		    ('ferpaOptOutDescriptor','ferpaOptOutDescriptor','http://ed-fi.org/ods/identity/claims/ferpaOptOutDescriptor',1),
		    ('followupCategoryDescriptor','followupCategoryDescriptor','http://ed-fi.org/ods/identity/claims/followupCategoryDescriptor',1),
		    ('fundingNeedsCategoryDescriptor','fundingNeedsCategoryDescriptor','http://ed-fi.org/ods/identity/claims/fundingNeedsCategoryDescriptor',1),
		    ('gradeTypeDetail','gradeTypeDetail','http://ed-fi.org/ods/identity/claims/gradeTypeDetail',1),
		    ('gradeTypeWhenTakenDescriptor','gradeTypeWhenTakenDescriptor','http://ed-fi.org/ods/identity/claims/gradeTypeWhenTakenDescriptor',1),
		    ('immunizationCodeDescriptor','immunizationCodeDescriptor','http://ed-fi.org/ods/identity/claims/immunizationCodeDescriptor',1),
		    ('incidentRelatedToDescriptor','incidentRelatedToDescriptor','http://ed-fi.org/ods/identity/claims/incidentRelatedToDescriptor',1),
		    ('injuryDescriptor','injuryDescriptor','http://ed-fi.org/ods/identity/claims/injuryDescriptor',1),
		    ('levelDetail','levelDetail','http://ed-fi.org/ods/identity/claims/levelDetail',1),
		    ('medicalAlert','medicalAlert','http://ed-fi.org/ods/identity/claims/medicalAlert',1),
		    ('medicalAlertCategoryDescriptor','medicalAlertCategoryDescriptor','http://ed-fi.org/ods/identity/claims/medicalAlertCategoryDescriptor',1),
		    ('medicalDispositionDescriptor','medicalDispositionDescriptor','http://ed-fi.org/ods/identity/claims/medicalDispositionDescriptor',1),
		    ('medicalOfficeVisit','medicalOfficeVisit','http://ed-fi.org/ods/identity/claims/medicalOfficeVisit',1),
		    ('medicalReferralFollowUp','medicalReferralFollowUp','http://ed-fi.org/ods/identity/claims/medicalReferralFollowUp',1),
		    ('medicalScreening','medicalScreening','http://ed-fi.org/ods/identity/claims/medicalScreening',1),
		    ('medicalTestCategoryDescriptor','medicalTestCategoryDescriptor','http://ed-fi.org/ods/identity/claims/medicalTestCategoryDescriptor',1),
		    ('medicalTreatmentCodeDescriptor','medicalTreatmentCodeDescriptor','http://ed-fi.org/ods/identity/claims/medicalTreatmentCodeDescriptor',1),
		    ('medicalVisitReasonDescriptor','medicalVisitReasonDescriptor','http://ed-fi.org/ods/identity/claims/medicalVisitReasonDescriptor',1),
		    ('medicationBox','medicationBox','http://ed-fi.org/ods/identity/claims/medicationBox',1),
		    ('nonStudent','nonStudent','http://ed-fi.org/ods/identity/claims/nonStudent',1),
		    ('notificationMethodDescriptor','notificationMethodDescriptor','http://ed-fi.org/ods/identity/claims/notificationMethodDescriptor',1),
		    ('participationCodeDescriptor','participationCodeDescriptor','http://ed-fi.org/ods/identity/claims/participationCodeDescriptor',1),
		    ('person','person','http://ed-fi.org/ods/identity/claims/person',1),
		    ('personCategoryDescriptor','personCategoryDescriptor','http://ed-fi.org/ods/identity/claims/personCategoryDescriptor',1),
		    ('personDisciplineAction','personDisciplineAction','http://ed-fi.org/ods/identity/claims/personDisciplineAction',1),
		    ('personDisciplineIncidentAssociation','personDisciplineIncidentAssociation','http://ed-fi.org/ods/identity/claims/personDisciplineIncidentAssociation',1),
		    ('personImmunization','personImmunization','http://ed-fi.org/ods/identity/claims/personImmunization',1),
		    ('personMedicalAlert','personMedicalAlert','http://ed-fi.org/ods/identity/claims/personMedicalAlert',1),
		    ('personMedicationBoxAssociation','personMedicationBoxAssociation','http://ed-fi.org/ods/identity/claims/personMedicationBoxAssociation',1),
		    ('postSecondaryDetail','postSecondaryDetail','http://ed-fi.org/ods/identity/claims/postSecondaryDetail',1),
		    ('reasonNotApplied4PlusCollegeDescriptor','reasonNotApplied4PlusCollegeDescriptor','http://ed-fi.org/ods/identity/claims/reasonNotApplied4PlusCollegeDescriptor',1),
		    ('referralDescriptor','referralDescriptor','http://ed-fi.org/ods/identity/claims/referralDescriptor',1),
		    ('restraintEventCategoryDescriptor','restraintEventCategoryDescriptor','http://ed-fi.org/ods/identity/claims/restraintEventCategoryDescriptor',1),
		    ('restraintSeclusion','restraintSeclusion','http://ed-fi.org/ods/identity/claims/restraintSeclusion',1),
		    ('serviceStatusDescriptor','serviceStatusDescriptor','http://ed-fi.org/ods/identity/claims/serviceStatusDescriptor',1),
		    ('staffRoleDescriptor','staffRoleDescriptor','http://ed-fi.org/ods/identity/claims/staffRoleDescriptor',1),
		    ('student504ProgramAssociation','student504ProgramAssociation','http://ed-fi.org/ods/identity/claims/student504ProgramAssociation',1),
		    ('studentEarlyChildhoodProgramAssociation','studentEarlyChildhoodProgramAssociation','http://ed-fi.org/ods/identity/claims/studentEarlyChildhoodProgramAssociation',1),
		    ('studentSectionClassPeriodAttendanceEvent','studentSectionClassPeriodAttendanceEvent','http://ed-fi.org/ods/identity/claims/studentSectionClassPeriodAttendanceEvent',1),
		    ('studentTransportation','studentTransportation','http://ed-fi.org/ods/identity/claims/studentTransportation',1),
		    ('supportPlanChangeDescriptor','supportPlanChangeDescriptor','http://ed-fi.org/ods/identity/claims/supportPlanChangeDescriptor',1),
		    ('travelDayOfWeekDescriptor','travelDayOfWeekDescriptor','http://ed-fi.org/ods/identity/claims/travelDayOfWeekDescriptor',1),
		    ('travelDirectionDescriptor','travelDirectionDescriptor','http://ed-fi.org/ods/identity/claims/travelDirectionDescriptor',1),
		    ('treatmentDescriptor','treatmentDescriptor','http://ed-fi.org/ods/identity/claims/treatmentDescriptor',1),
		    ('victimCategoryDescriptor','victimCategoryDescriptor','http://ed-fi.org/ods/identity/claims/victimCategoryDescriptor',1)  ,
		    ('assessmentroster','assessmentroster','http://ed-fi.org/ods/identity/claims/assessmentroster',1)  ,
		    ('assessmentadministration','assessmentadministration','http://ed-fi.org/ods/identity/claims/assessmentadministration',1)	,	   
		    ('studentassessmentregistration','studentassessmentregistration','http://ed-fi.org/ods/identity/claims/studentassessmentregistration',1)		   
	   
		   
		   
		   
 go


 /* UPDATE RESOURCE CLAIMS FOR EXTENSIONS TO ADD CORRECT PARENT RESOURCE CLAIM ID FROM NEWLY CREATED RESOURCENAME */

 UPDATE [dbo].[ResourceClaims] 
 SET [ParentResourceClaimId] = (SELECT [ResourceClaimId] FROM [dbo].[ResourceClaims] WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/domains/systemDescriptors')
 WHERE [ResourceName] like '%Descriptor'

 UPDATE [dbo].[ResourceClaims] 
 SET [ParentResourceClaimId] = (SELECT [ResourceClaimId] FROM [dbo].[ResourceClaims] WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/domains/claimOnly')
 WHERE [ResourceName] IN ('cIPCourse', 'disciplineIncidentCode', 'gradeTypeDetail', 'medicalAlert', 'subjectAreaCode','studentTransportation', 'CalendarDate', 'StudentEducationOrganizationAssociation', 'assessmentroster');

 UPDATE [dbo].[ResourceClaims] 
 SET [ParentResourceClaimId] = (SELECT [ResourceClaimId] FROM [dbo].[ResourceClaims] WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/assessmentroster') 
 WHERE [ResourceName] IN ('assessmentadministration','studentassessmentregistration');

 UPDATE [dbo].[ResourceClaims] 
 SET [ParentResourceClaimId] = (SELECT [ResourceClaimId] FROM [dbo].[ResourceClaims] WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/domains/medical') 
 WHERE [ResourceName] IN ('medicalOfficeVisit', 'medicalReferralFollowUp', 'medicalScreening', 'personImmunization', 'personMedicalAlert','personMedicationBoxAssociation','medicationBox');


 UPDATE [dbo].[ResourceClaims] 
 SET [ParentResourceClaimId] = (SELECT [ResourceClaimId] FROM [dbo].[ResourceClaims] WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/domains/people') 
 WHERE [ResourceName] IN ('nonStudent');

 UPDATE [dbo].[ResourceClaims] 
 SET [ParentResourceClaimId] = (SELECT [ResourceClaimId] FROM [dbo].[ResourceClaims] WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/domains/relationshipBasedData') 
 WHERE [ResourceName] IN ('allegedBullyingVictim','levelDetail','person','personDisciplineAction','personDisciplineIncidentAssociation','postSecondaryDetail','student504ProgramAssociation','restraintSeclusion','studentEarlyChildhoodProgramAssociation','studentSectionClassPeriodAttendanceEvent', 'de');



 /* INSERT NEW ResourceClaimAuthorizationMetadatas FOR EXTENSION DOMAINS */

 INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas]
            ([Action_ActionId]
            ,[AuthorizationStrategy_AuthorizationStrategyId]
            ,[ResourceClaim_ResourceClaimId])

  SELECT [ActionId], [AuthorizationStrategyId], [ResourceClaimId] 
 FROM [dbo].[AuthorizationStrategies] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE [ClaimName] ='http://ed-fi.org/ods/identity/claims/domains/claimOnly'
 AND [AuthorizationStrategyName]= 'NoFurtherAuthorizationRequired';

			
 INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas]
            ([Action_ActionId]
            ,[AuthorizationStrategy_AuthorizationStrategyId]
            ,[ResourceClaim_ResourceClaimId])

  SELECT [ActionId], [AuthorizationStrategyId], [ResourceClaimId] 
 FROM [dbo].[AuthorizationStrategies] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/domains/medical'
 AND [AuthorizationStrategyName]= 'NoFurtherAuthorizationRequired';


 INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas]
            ([Action_ActionId]
            ,[AuthorizationStrategy_AuthorizationStrategyId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [AuthorizationStrategyId], [ResourceClaimId] 
 FROM [dbo].[AuthorizationStrategies] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/medicationBox'
 AND [AuthorizationStrategyName]= 'NoFurtherAuthorizationRequired';


 INSERT INTO [dbo].[ResourceClaimAuthorizationMetadatas]
            ([Action_ActionId]
            ,[AuthorizationStrategy_AuthorizationStrategyId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [AuthorizationStrategyId], [ResourceClaimId] 
 FROM [dbo].[AuthorizationStrategies] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/person'
 AND [AuthorizationStrategyName]= 'NoFurtherAuthorizationRequired'
 AND [ActionName] = 'Read';


 INSERT INTO [dbo].[ClaimSetResourceClaims]
            ([Action_ActionId]
            ,[ClaimSet_ClaimSetId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [ClaimSetId], [ResourceClaimId] 
 FROM [dbo].[ClaimSets] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/assessmentadministration'
 AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'Ed-Fi Sandbox')
 AND [ActionName] = 'Read';

 INSERT INTO [dbo].[ClaimSetResourceClaims]
            ([Action_ActionId]
            ,[ClaimSet_ClaimSetId]
            ,[ResourceClaim_ResourceClaimId])

 SELECT [ActionId], [ClaimSetId], [ResourceClaimId] 
 FROM [dbo].[ClaimSets] 
 CROSS JOIN [dbo].[Actions]
 CROSS JOIN [dbo].[ResourceClaims] 
 WHERE [ClaimName] = 'http://ed-fi.org/ods/identity/claims/studentassessmentregistration'
 AND [ClaimSetName] IN ('Delaware', 'SIS Vendor', 'Ed-Fi Sandbox');

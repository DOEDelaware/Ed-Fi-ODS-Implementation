INSERT INTO [dbo].[ClaimSetResourceClaimActions]
SELECT [ClaimSetId]
    ,[ResourceClaimId]
    ,[ActionId]
    ,NULL
FROM Actions a
    ,ClaimSets c
    ,ResourceClaims r
WHERE (
         c.ClaimSetName = 'Ed-Fi Sandbox'
        )
    AND NOT EXISTS (
        SELECT 1
        FROM ClaimSetResourceClaimActions csrca
        WHERE csrca.ActionId = a.ActionId
            AND csrca.ClaimSetId = c.ClaimSetId
                 AND csrca.ResourceClaimId = r.ResourceClaimId
        )


--descriptor permissions
INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/domains/systemDescriptors')





	INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/program')



		INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessment')

	--	INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
 --   SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
 --   WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	--ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentAdministration')

	--	INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
 --   SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
 --   WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	--ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentAdministration')



			INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/ProgramEvaluation')
			INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/ProgramEvaluationElement')
	    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/ProgramEvaluationObjective')

			INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
	    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/medicalAlert')





	INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/communityProvider')

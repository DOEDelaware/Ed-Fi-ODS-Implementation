use EdFi_Delaware_Security
go
update ResourceClaims set DisplayName='immunizationDescriptor',ResourceName='immunizationDescriptor', ClaimName='http://ed-fi.org/ods/identity/claims/immunizationDescriptor' where DisplayName='immunizationCodeDescriptor'

go
--select * from ResourceClaims where ResourceName like 'community%'



	INSERT INTO ClaimSetResourceClaimActionAuthorizationStrategyOverrides (ClaimSetResourceClaimActionId, AuthorizationStrategyId)
    SELECT ClaimSetResourceClaimActionId, 1 FROM ClaimSetResourceClaimActions
    WHERE ClaimSetId in (select ClaimSetId from ClaimSets where  ClaimSetName='Ed-Fi Sandbox') AND 
	ResourceClaimId = (select ResourceClaimId from ResourceClaims  where ClaimName='http://ed-fi.org/ods/identity/claims/communityProvider')


--remove Responcibility override
delete ClaimSetResourceClaimActionAuthorizationStrategyOverrides where  ClaimSetResourceClaimActionId in (
select ClaimSetResourceClaimActionId from ClaimSetResourceClaimActions
where  ResourceClaimId in (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationResponsibilityAssociation') 
and ClaimSetId in (select ClaimsetID from ClaimSets where ClaimSetName='SIS'))
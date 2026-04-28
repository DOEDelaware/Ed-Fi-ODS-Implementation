insert into ResourceClaimActionAuthorizationStrategies ( ResourceClaimActionId, AuthorizationStrategyId)  
select ResourceClaimActionId, 1 from ResourceClaims rc join ResourceClaimActions rca on rc.ResourceClaimId=rca.ResourceClaimId  where ClaimName='http://ed-fi.org/ods/identity/claims/domains/bulk'
insert into ResourceClaimActionAuthorizationStrategies ( ResourceClaimActionId, AuthorizationStrategyId)  
select ResourceClaimActionId, 1 from ResourceClaims rc join ResourceClaimActions rca on rc.ResourceClaimId=rca.ResourceClaimId  where ClaimName='http://ed-fi.org/ods/identity/claims/domains/claimOnly'
insert into ResourceClaimActionAuthorizationStrategies ( ResourceClaimActionId, AuthorizationStrategyId)  
select ResourceClaimActionId, 1 from ResourceClaims rc join ResourceClaimActions rca on rc.ResourceClaimId=rca.ResourceClaimId  where ClaimName='http://ed-fi.org/ods/identity/claims/domains/medical'
insert into ResourceClaimActionAuthorizationStrategies ( ResourceClaimActionId, AuthorizationStrategyId)  
select ResourceClaimActionId, 6 from ResourceClaims rc join ResourceClaimActions rca on rc.ResourceClaimId=rca.ResourceClaimId  where ClaimName='http://ed-fi.org/ods/identity/claims/studentEarlyChildhoodProgramAssociation'
insert into ResourceClaimActionAuthorizationStrategies ( ResourceClaimActionId, AuthorizationStrategyId)  
select ResourceClaimActionId, 1 from ResourceClaims rc join ResourceClaimActions rca on rc.ResourceClaimId=rca.ResourceClaimId  where ClaimName='http://ed-fi.org/ods/identity/claims/medicationBox'
insert into ResourceClaimActionAuthorizationStrategies ( ResourceClaimActionId, AuthorizationStrategyId)  
select ResourceClaimActionId, 1 from ResourceClaims rc join ResourceClaimActions rca on rc.ResourceClaimId=rca.ResourceClaimId  where ClaimName='http://ed-fi.org/ods/identity/claims/cIPCourse'


insert into ResourceClaimActionAuthorizationStrategies ( ResourceClaimActionId, AuthorizationStrategyId)  
select ResourceClaimActionId, 2 from ResourceClaims rc join ResourceClaimActions rca on rc.ResourceClaimId=rca.ResourceClaimId where ClaimName='http://ed-fi.org/ods/identity/claims/assessmentAdministration'

insert into ResourceClaimActionAuthorizationStrategies ( ResourceClaimActionId, AuthorizationStrategyId)  
select ResourceClaimActionId, 2 from ResourceClaims rc join ResourceClaimActions rca on rc.ResourceClaimId=rca.ResourceClaimId where ClaimName='http://ed-fi.org/ods/identity/claims/StudentAssessmentRegistration'


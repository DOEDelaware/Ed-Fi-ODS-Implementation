--Security

--rename claimset for SIS
update Claimsets set ClaimSetName='SIS' where ClaimSetName='eSchoolPlus'



--New ResourceClaims

 
 --2025
 delete ResourceClaims where DisplayName in ('ProgramEvaluationPeriodDescriptor','ProgramEvaluationTypeDescriptor','RatingLevelDescriptor','Section504DisabilityDescriptor','ProgramEvaluation','ProgramEvaluationElement','ProgramEvaluationObjective','StudentProgramEvaluation')

 insert ResourceClaims (DisplayName, ResourceName, ClaimName, Application_ApplicationId, ParentResourceClaimId)   select 'ProgramEvaluationPeriodDescriptor', 'ProgramEvaluationPeriodDescriptor', 'http://ed-fi.org/ods/identity/claims/ProgramEvaluationPeriodDescriptor',1,(select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors')
 insert ResourceClaims (DisplayName, ResourceName, ClaimName, Application_ApplicationId, ParentResourceClaimId)   select 'ProgramEvaluationTypeDescriptor', 'ProgramEvaluationTypeDescriptor', 'http://ed-fi.org/ods/identity/claims/ProgramEvaluationTypeDescriptor',1,(select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors')
 insert ResourceClaims (DisplayName, ResourceName, ClaimName, Application_ApplicationId, ParentResourceClaimId)   select 'RatingLevelDescriptor', 'RatingLevelDescriptor', 'http://ed-fi.org/ods/identity/claims/RatingLevelDescriptor',1,(select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors')
 insert ResourceClaims (DisplayName, ResourceName, ClaimName, Application_ApplicationId, ParentResourceClaimId)   select 'Section504DisabilityDescriptor', 'Section504DisabilityDescriptor', 'http://ed-fi.org/ods/identity/claims/Section504DisabilityDescriptor',1,(select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors')
 insert ResourceClaims (DisplayName, ResourceName, ClaimName, Application_ApplicationId, ParentResourceClaimId)   select 'ProgramEvaluation', 'ProgramEvaluation', 'http://ed-fi.org/ods/identity/claims/ProgramEvaluation',1,(select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData')
 insert ResourceClaims (DisplayName, ResourceName, ClaimName, Application_ApplicationId, ParentResourceClaimId)   select 'ProgramEvaluationElement', 'ProgramEvaluationElement', 'http://ed-fi.org/ods/identity/claims/ProgramEvaluationElement',1,(select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData')
 insert ResourceClaims (DisplayName, ResourceName, ClaimName, Application_ApplicationId, ParentResourceClaimId)   select 'ProgramEvaluationObjective', 'ProgramEvaluationObjective', 'http://ed-fi.org/ods/identity/claims/ProgramEvaluationObjective',1,(select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData')
 insert ResourceClaims (DisplayName, ResourceName, ClaimName, Application_ApplicationId, ParentResourceClaimId)   select 'StudentProgramEvaluation', 'StudentProgramEvaluation', 'http://ed-fi.org/ods/identity/claims/StudentProgramEvaluation',1,(select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData')



 go
 
--New Resource Claim Actions
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 1 from ResourceClaims where ResourceName='ProgramEvaluationPeriodDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 2 from ResourceClaims where ResourceName='ProgramEvaluationPeriodDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 3 from ResourceClaims where ResourceName='ProgramEvaluationPeriodDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 4 from ResourceClaims where ResourceName='ProgramEvaluationPeriodDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 5 from ResourceClaims where ResourceName='ProgramEvaluationPeriodDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 1 from ResourceClaims where ResourceName='ProgramEvaluationTypeDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 2 from ResourceClaims where ResourceName='ProgramEvaluationTypeDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 3 from ResourceClaims where ResourceName='ProgramEvaluationTypeDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 4 from ResourceClaims where ResourceName='ProgramEvaluationTypeDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 5 from ResourceClaims where ResourceName='ProgramEvaluationTypeDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 1 from ResourceClaims where ResourceName='RatingLevelDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 2 from ResourceClaims where ResourceName='RatingLevelDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 3 from ResourceClaims where ResourceName='RatingLevelDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 4 from ResourceClaims where ResourceName='RatingLevelDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 5 from ResourceClaims where ResourceName='RatingLevelDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 1 from ResourceClaims where ResourceName='Section504DisabilityDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 2 from ResourceClaims where ResourceName='Section504DisabilityDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 3 from ResourceClaims where ResourceName='Section504DisabilityDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 4 from ResourceClaims where ResourceName='Section504DisabilityDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 5 from ResourceClaims where ResourceName='Section504DisabilityDescriptor'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 1 from ResourceClaims where ResourceName='ProgramEvaluation'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 2 from ResourceClaims where ResourceName='ProgramEvaluation'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 3 from ResourceClaims where ResourceName='ProgramEvaluation'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 4 from ResourceClaims where ResourceName='ProgramEvaluation'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 5 from ResourceClaims where ResourceName='ProgramEvaluation'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 1 from ResourceClaims where ResourceName='ProgramEvaluationElement'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 2 from ResourceClaims where ResourceName='ProgramEvaluationElement'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 3 from ResourceClaims where ResourceName='ProgramEvaluationElement'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 4 from ResourceClaims where ResourceName='ProgramEvaluationElement'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 5 from ResourceClaims where ResourceName='ProgramEvaluationElement'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 1 from ResourceClaims where ResourceName='ProgramEvaluationObjective'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 2 from ResourceClaims where ResourceName='ProgramEvaluationObjective'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 3 from ResourceClaims where ResourceName='ProgramEvaluationObjective'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 4 from ResourceClaims where ResourceName='ProgramEvaluationObjective'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 5 from ResourceClaims where ResourceName='ProgramEvaluationObjective'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 1 from ResourceClaims where ResourceName='StudentProgramEvaluation'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 2 from ResourceClaims where ResourceName='StudentProgramEvaluation'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 3 from ResourceClaims where ResourceName='StudentProgramEvaluation'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 4 from ResourceClaims where ResourceName='StudentProgramEvaluation'
insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 5 from ResourceClaims where ResourceName='StudentProgramEvaluation'
go


----delete medical alert update in SIS claimset
--Delete ResourceClaimActions where ResourceClaimId in (
--select ResourceClaimId from ResourceClaims where ResourceName='MedicalAlert')
--and ActionID in (select ActionId from Actions where ActionName in ('Create','Update','Delete')
--) 

--select * from ClaimSetResourceClaimActions  where ResourceClaimId in (
--select ResourceClaimId from ResourceClaims where ResourceName='MedicalAlert')


--select * from ResourceClaims where displayname='MedicalAlert'

--select * from ResourceClaims where ResourceClaimId=387


-- what we have to do is remove the parent, then specify the  ResourceClaimActions and ClaimSetResourceClaimActions specifically for this endpoint

--update ResourceClaims set ParentResourceClaimId=null where displayname='MedicalAlert'
--insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 1 from ResourceClaims where ResourceName='MedicalAlert'
--insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 2 from ResourceClaims where ResourceName='MedicalAlert'
--insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 3 from ResourceClaims where ResourceName='MedicalAlert'
--insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 4 from ResourceClaims where ResourceName='MedicalAlert'
--insert into ResourceClaimActions (ResourceClaimId, ActionId)  select ResourceClaimId, 5 from ResourceClaims where ResourceName='MedicalAlert'
--go


--have to remove statewide course read permision:

delete [ResourceClaimActionAuthorizationStrategies] where ResourceClaimActionAuthorizationStrategyId=11

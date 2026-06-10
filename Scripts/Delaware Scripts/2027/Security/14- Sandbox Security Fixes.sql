--DECLARE @SystemDescriptorsId INT
--SELECT @SystemDescriptorsId = resourceclaimid
--FROM   [dbo].[resourceclaims]
--WHERE  resourcename = 'systemDescriptors'

--INSERT INTO [dbo].[resourceclaims]
--            ([resourcename],
--             [claimname],
--             [parentresourceclaimid])
--VALUES      ('alternativeEducationEligibilityReasonDescriptor',
--'http://ed-fi.org/ods/identity/claims/de/sample-alternative-education-program/alternativeEducationEligibilityReasonDescriptor',
--@SystemDescriptorsId)


--DECLARE @ParentResourceClaimId INT
--SELECT @ParentResourceClaimId = ResourceClaimId
--FROM [dbo].[ResourceClaims]
--WHERE ResourceName = 'relationshipBasedData'

----INSERT INTO [dbo].[ResourceClaims] ( [ResourceName]
----                                     ,[ClaimName]
----                                     ,[ParentResourceClaimId]
----                                     )
--select ResourceName from ResourceClaims where 


--VALUES ('studentAlternativeEducationProgramAssociation'
--        ,'http://ed-fi.org/ods/identity/claims/de/sample-alternative-education-program/studentAlternativeEducationProgramAssociation'
--        ,@ParentResourceClaimId
--        )

use admin 
go
insert into VendorNameSpacePrefixes (NamespacePrefix, Vendor_VendorId) values ('uri://doe.k12.de.us',1)
insert into VendorNameSpacePrefixes (NamespacePrefix, Vendor_VendorId) values ('uri://cambiumassessment.com',1)

--select * from ApplicationEducationOrganizations
insert into ApplicationEducationOrganizations (EducationOrganizationId, Application_ApplicationId)
select EducationOrganization.EducationOrganizationId ,ApplicationID from [EdFi_Ods_Sandbox_5G09tuXtmOYT].edfi.EducationOrganization 
cross join Applications 
where Discriminator='edfi.LocalEducationAgency' 
go
--select * from ApiClientApplicationEducationOrganizations
insert into ApiClientApplicationEducationOrganizations
select ApiClientId, ApplicationEducationOrganizationId from ApiClients cross join ApplicationEducationOrganizations
where  not exists (select * from ApiClientApplicationEducationOrganizations where ApiClientApplicationEducationOrganizations.ApiClient_ApiClientId=apiclients.ApiClientId and ApiClientApplicationEducationOrganizations.ApplicationEducationOrganization_ApplicationEducationOrganizationId=ApplicationEducationOrganizations.ApplicationEducationOrganizationId)
go








use security
go
insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'victimCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/victimCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'serviceStatusDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/serviceStatusDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'staffRoleDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/staffRoleDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'bullyingCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/bullyingCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'certificateCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/certificateCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'certificationDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/certificationDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'choiceCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/choiceCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'attendanceConfigurationCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/attendanceConfigurationCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'acceptanceStatusDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/acceptanceStatusDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'accountClassificationDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/accountClassificationDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'aPExamCodeDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/aPExamCodeDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'locationDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/locationDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'gradeTypeWhenTakenDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/gradeTypeWhenTakenDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'immunizationCodeDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/immunizationDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'ImmunizationExemptReasonDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/ImmunizationExemptReasonDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'incidentRelatedToDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/incidentRelatedToDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'injuryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/injuryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'coreSubjectDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/coreSubjectDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'cycleDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/cycleDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'DeescalationTechniqueDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/DeescalationTechniqueDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'diplomaCertificateCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/diplomaCertificateCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'disciplineDispositionDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/disciplineDispositionDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'enrollmentTypeDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/enrollmentTypeDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'ferpaOptOutDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/ferpaOptOutDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'followupCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/followupCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'fundingNeedsCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/fundingNeedsCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'supportPlanChangeDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/supportPlanChangeDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'travelDayOfWeekDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/travelDayOfWeekDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'travelDirectionDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/travelDirectionDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'treatmentDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/treatmentDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'personCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/personCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'reasonForLateIEPDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/reasonForLateIEPDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'reasonNotApplied4PlusCollegeDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/reasonNotApplied4PlusCollegeDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'referralDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/referralDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'restraintEventCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/restraintEventCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'modalityTimeTypeDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/modalityTimeTypeDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'modalityTypeDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/modalityTypeDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'NonViolentTechniqueDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/NonViolentTechniqueDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'notificationMethodDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/notificationMethodDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'participationCodeDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/participationCodeDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'medicalAlertCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/medicalAlertCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'medicalDispositionDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/medicalDispositionDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'medicalTestCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/medicalTestCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'medicalTreatmentCodeDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/medicalTreatmentCodeDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'medicalVisitReasonDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/medicalVisitReasonDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');



insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'AddressCharacteristicDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/AddressCharacteristicDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');
insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'AlternateCalendarProgramDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/AlternateCalendarProgramDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');
insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'ArrestInformationDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/ArrestInformationDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');
insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'BirthMandateDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/BirthMandateDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');
insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'CteCertificationDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/CteCertificationDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');
insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'DisciplineActionPlacementTypeDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/DisciplineActionPlacementTypeDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');
insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'HealthAlertCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/HealthAlertCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');
insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select '',
       'http://ed-fi.org/ods/identity/claims/de/IepImplementationAfterThirdBirthdayDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');
insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'MultiliteracyCertificateCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/MultiliteracyCertificateCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

	   insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'MultiliteracyCertificateCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/MultiliteracyCertificateCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');


insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'MultiliteracyCertificateCategoryDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/MultiliteracyCertificateCategoryDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');


	   insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'OutOfTimelineReasonDescriptor',
       'http://ed-fi.org/ods/identity/claims/de/OutOfTimelineReasonDescriptor',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'studentHealthAlert',
       'http://ed-fi.org/ods/identity/claims/de/studentHealthAlert',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'studentHealth');








--insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
--select 'studentEarlyChildhoodProgramAssociations',
--       'http://ed-fi.org/ods/identity/claims/de/studentEarlyChildhoodProgramAssociations',
--       (select ResourceClaimId from ResourceClaims where ResourceName = 'systemDescriptors');

studentEarlyChildhoodProgramAssociations
studentEarlyChildhoodProgramAssociations


select * from resourceclaims where ResourceName like '%early%'


update ResourceClaims set ResourceName='studentEarlyChildhoodProgramAssociation', ClaimName='http://ed-fi.org/ods/identity/claims/de/studentEarlyChildhoodProgramAssociation' where ResourceClaimId=1434





	   insert ResourceClaims (ResourceName, ClaimName, ParentResourceClaimId)
select 'studentHealthAlerts',
       'http://ed-fi.org/ods/identity/claims/de/studentHealthAlerts',
       (select ResourceClaimId from ResourceClaims where ResourceName = 'studentHealth');


select * from [dbo].[ClaimSetResourceClaimActions] where ResourceClaimid=6


OutOfTimelineReasonDescriptor
IepImplementationAfterThirdBirthdayDescriptor

select * from resourceclaims where claimname like '%birthday%'
http://ed-fi.org/ods/identity/claims/de/IepImplementationAfterThirdBirthdayDescriptor
IepImplementationAfterThirdBirthdayDescriptor
IepImplementationAfterThirdBirthdayDescriptors 
iepImplementationAfterThirdBirthdayReasonDescriptor

update ResourceClaims set ResourceName='iepImplementationAfterThirdBirthdayReasonDescriptor', claimName='http://ed-fi.org/ods/identity/claims/de/iepImplementationAfterThirdBirthdayReasonDescriptor'
where resourceclaimid=1433

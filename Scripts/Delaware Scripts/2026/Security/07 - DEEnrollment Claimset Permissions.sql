use EdFi_Delaware_Security
go

/*
	Changelog:
	4/5/2023 - Created by Dan Mize for TICK:138094 in order to allow DELJIS to integrate their alerting system with the Ed-FI API with read access to the following resources:
		data/v3/ed-fi/systemDescriptors
		data/v3/ed-fi/students
		data/v3/ed-fi/studentSchoolAssociations
		data/v3/ed-fi/schools
		data/v3/ed-fi/localEducationAgency
	5/18/2023 - Updated scripts to work in v6.1

*/

/*
	select * from Applications
	select * from Actions
	select * from ResourceClaims
	select * from ClaimSets
	select * from ClaimSetResourceClaimActions
*/

declare @ClaimSetName varchar(20) = 'DEEnrollment'
--Create a claimset
insert into ClaimSets (ClaimSetName, Application_ApplicationId) select @ClaimSetName, ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'

 --Add Actions to the Resources for the ClaimSets
insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
	select (select ClaimSetId from ClaimSets where ClaimSetName=@ClaimSetName), (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/domains/systemDescriptors') , 2

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
	select (select ClaimSetId from ClaimSets where ClaimSetName=@ClaimSetName), (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/student') , 2

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
	select (select ClaimSetId from ClaimSets where ClaimSetName=@ClaimSetName), (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/studentSchoolAssociation') , 2

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
	select (select ClaimSetId from ClaimSets where ClaimSetName=@ClaimSetName), (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/school') , 2

insert into ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId)
	select (select ClaimSetId from ClaimSets where ClaimSetName=@ClaimSetName), (select ResourceClaimId from ResourceClaims where ClaimName='http://ed-fi.org/ods/identity/claims/localEducationAgency') , 2

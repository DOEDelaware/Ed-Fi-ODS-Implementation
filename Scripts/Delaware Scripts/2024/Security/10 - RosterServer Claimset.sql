insert into ClaimSets (ClaimSetName, Application_ApplicationId) select 'RosterServer', ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'
go




--select 
--'INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName=''RosterServer''), ' +
--'(select ResourceClaimId from ResourceClaims where ResourceName=''' + rc.ResourceName + '''),' +  convert(varchar(50),Action_ActionId)
--from [EdFi_Delaware_Security_Production].dbo.ClaimSetResourceClaims csrc 
--	join [EdFi_Delaware_Security_Production].dbo.ResourceClaims rc on csrc.ResourceClaim_ResourceClaimId=rc.ResourceClaimId
--where ClaimSet_ClaimSetId=11

INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='RosterServer'), (select ResourceClaimId from ResourceClaims where ResourceName='systemDescriptors'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='RosterServer'), (select ResourceClaimId from ResourceClaims where ResourceName='relationshipBasedData'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='RosterServer'), (select ResourceClaimId from ResourceClaims where ResourceName='educationOrganizations'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='RosterServer'), (select ResourceClaimId from ResourceClaims where ResourceName='people'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='RosterServer'), (select ResourceClaimId from ResourceClaims where ResourceName='types'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='RosterServer'), (select ResourceClaimId from ResourceClaims where ResourceName='primaryRelationships'),2
INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='RosterServer'), (select ResourceClaimId from ResourceClaims where ResourceName='studentEducationOrganizationAssociation'),2


/*
use edfi_delaware_admin

select * from users
select * from vendors
select * from applications




[dbo].[SetUpDistrictKeySecret]  33,'rstest', 'adrew46', 2, 'classlink', 'rosterserver'
33	rstest	

*/
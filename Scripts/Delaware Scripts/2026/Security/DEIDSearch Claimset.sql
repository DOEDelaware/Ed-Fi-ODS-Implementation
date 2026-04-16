insert into ClaimSets (ClaimSetName, Application_ApplicationId) select 'DEIDSearch', ApplicationId from Applications where ApplicationName='Ed-Fi ODS API'
go


INSERT INTO ClaimSetResourceClaimActions (ClaimSetId, ResourceClaimId, 
ActionId) select (select ClaimSetId from ClaimSets where  ClaimSetName='DEIDSearch'), (select ResourceClaimId from ResourceClaims where ResourceName='identity'),2 --read
go




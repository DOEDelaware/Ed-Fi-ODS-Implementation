
SET IDENTITY_INSERT dbo.ClaimSets ON
GO  
Insert into ClaimSets (ClaimSetId, ClaimSetName, Application_ApplicationId)
values (10, 'eSchoolPlus',1)
go
SET IDENTITY_INSERT dbo.ClaimSets OFF
GO  



--select * from claimsets
--select * from ClaimSetResourceClaims
--select * from Actions
--select * from ResourceClaims

select rc.*, ActionName
 from 
	ResourceClaims rc join ClaimSetResourceClaims csrc on rc.ResourceClaimId = csrc.ResourceClaim_ResourceClaimId
					  join ClaimSets c on csrc.ClaimSet_ClaimSetId = c.ClaimSetId
					  join Actions a on csrc.Action_ActionId=a.ActionId
where c.ClaimSetName='Ed-Fi Sandbox' and 
(ClaimName not like '%Assessment%' 
and  not (ResourceName='systemDescriptors' and ActionName <>'Read')
and  not (ResourceName='educationOrganizations' and ActionName <>'Read')
)

select rc.*, ActionName
 from 
	ResourceClaims rc join ClaimSetResourceClaims csrc on rc.ResourceClaimId = csrc.ResourceClaim_ResourceClaimId
					  join ClaimSets c on csrc.ClaimSet_ClaimSetId = c.ClaimSetId
					  join Actions a on csrc.Action_ActionId=a.ActionId
where ClaimSet_ClaimSetId=10

select 'INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (' +
 convert(varchar(10),csrc.Action_ActionId) + ', 10, ' + convert(varchar(10),ResourceClaim_ResourceClaimId) + ')' 
 from 
	ResourceClaims rc join ClaimSetResourceClaims csrc on rc.ResourceClaimId = csrc.ResourceClaim_ResourceClaimId
					  join ClaimSets c on csrc.ClaimSet_ClaimSetId = c.ClaimSetId
					  join Actions a on csrc.Action_ActionId=a.ActionId
where c.ClaimSetName='Ed-Fi Sandbox' and 
(ClaimName not like '%Assessment%' 
and  not (ResourceName='systemDescriptors' and ActionName <>'Read')
and  not (ResourceName='educationOrganizations' and ActionName <>'Read')
)

-- select * from ClaimSetResourceClaims where ClaimSet_ClaimSetId=10


INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 9)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 2)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 6)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 8)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 8)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 8)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 8)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 3)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 3)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 3)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 3)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 4)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 4)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 4)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 4)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 11)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 11)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 11)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 10)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 10)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 10)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 10)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 7)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 7)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 7)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 7)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 93)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 93)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 93)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 93)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 1)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 1)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 1)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 1)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 59)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 59)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 59)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 59)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 269)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 269)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 269)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 269)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 270)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 270)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 270)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 270)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (1, 10, 304)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 304)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (3, 10, 304)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (4, 10, 304)
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] ) values (2, 10, 308)


--Set studentEducationOrganizationResponcibilityAssocation to 'Relationships with Students only' so districts can write other district feeders from eSchoolPlus
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] , AuthorizationStrategyOverride_AuthorizationStrategyId) 
values (1, 10, 238, 6)
go
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] , AuthorizationStrategyOverride_AuthorizationStrategyId) 
values (2, 10, 238, 6)
go
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] , AuthorizationStrategyOverride_AuthorizationStrategyId) 
values (3, 10, 238, 6)
go
INSERT INTO [dbo].[ClaimSetResourceClaims] ([Action_ActionId] ,[ClaimSet_ClaimSetId] ,[ResourceClaim_ResourceClaimId] , AuthorizationStrategyOverride_AuthorizationStrategyId) 
values (4, 10, 238, 6)
go
insert into [dbo].[ResourceClaimAuthorizationMetadatas] (Action_ActionId, AuthorizationStrategy_AuthorizationStrategyId, ResourceClaim_ResourceClaimId)
values (1, 6,238)
go
insert into [dbo].[ResourceClaimAuthorizationMetadatas] (Action_ActionId, AuthorizationStrategy_AuthorizationStrategyId, ResourceClaim_ResourceClaimId)
values (2, 6,238)
go
insert into [dbo].[ResourceClaimAuthorizationMetadatas] (Action_ActionId, AuthorizationStrategy_AuthorizationStrategyId, ResourceClaim_ResourceClaimId)
values (3, 6,238)
go
insert into [dbo].[ResourceClaimAuthorizationMetadatas] (Action_ActionId, AuthorizationStrategy_AuthorizationStrategyId, ResourceClaim_ResourceClaimId)
values (4, 6,238)
go
--clear out parent permission:
update ResourceClaims set ParentResourceClaimId =null where ResourceClaimId=238
go


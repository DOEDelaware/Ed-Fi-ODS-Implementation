set identity_insert dbo.claimsets on
go  
insert into claimsets (claimsetid, claimsetname, application_applicationid)
values (11, 'rosterserver',1)
go
set identity_insert dbo.claimsets off
go  

-- resourceclaimid	displayname	resourcename (have to check ids)
-- 2	systemdescriptors	systemdescriptors
-- 3	relationshipbaseddata	relationshipbaseddata
-- 6	educationorganizations	educationorganizations
-- 8	people	people
-- 9	types	types
-- 10	primaryrelationships	primaryrelationships
-- 237	studenteducationorganizationassociation	studenteducationorganizationassociation

insert into [dbo].[claimsetresourceclaims] ([action_actionid] ,[claimset_claimsetid] ,[resourceclaim_resourceclaimid] ) values (2, 11, 9)
insert into [dbo].[claimsetresourceclaims] ([action_actionid] ,[claimset_claimsetid] ,[resourceclaim_resourceclaimid] ) values (2, 11, 2)
insert into [dbo].[claimsetresourceclaims] ([action_actionid] ,[claimset_claimsetid] ,[resourceclaim_resourceclaimid] ) values (2, 11, 6)
insert into [dbo].[claimsetresourceclaims] ([action_actionid] ,[claimset_claimsetid] ,[resourceclaim_resourceclaimid] ) values (2, 11, 8)
insert into [dbo].[claimsetresourceclaims] ([action_actionid] ,[claimset_claimsetid] ,[resourceclaim_resourceclaimid] ) values (2, 11, 3)
insert into [dbo].[claimsetresourceclaims] ([action_actionid] ,[claimset_claimsetid] ,[resourceclaim_resourceclaimid] ) values (2, 11, 237)
insert into [dbo].[claimsetresourceclaims] ([action_actionid] ,[claimset_claimsetid] ,[resourceclaim_resourceclaimid] ) values (2, 11, 10)
go

use [edfi_delaware_admin]
go
set identity_insert dbo.vendors on
go  
insert into vendors (vendorid,vendorname) values (3,'classlink')
go
set identity_insert dbo.vendors off
go  
insert into vendornamespaceprefixes (namespaceprefix, vendor_vendorid) values ('classlink',3)
-- go
-- set identity_insert dbo.applications on
-- go  
-- insert into applications (applicationid, applicationname, vendor_vendorid,claimsetname, operationalcontexturi) values (11,'rosterserver',3,'rosterserver','uri://ed-fi-api-host.org')
-- go
-- set identity_insert dbo.applications off
-- go  

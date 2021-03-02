--Need linked server to doesisdb\db1s




 
 insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId) 
    select PROVIDER_IDNO, left(PROVIDER_NAME,75), left(PROVIDER_NICKNAME,75), '',(select case when STATUS_TYPE='I' then dbo.descriptor('%OperationalStatusDescriptor%','Inactive') else dbo.descriptor('%OperationalStatusDescriptor%','Active') end) 
    from CODELIBRARYSOURCE.[ECQI].dbo.PROVIDER where PROVIDER_IDNO not in (select EducationOrganizationID from edfi.EducationOrganization) 
 go


 insert into edfi.CommunityOrganization select PROVIDER_IDNO from CODELIBRARYSOURCE.[ECQI].dbo.PROVIDER
 go
 insert into edfi.CommunityProvider (CommunityOrganizationId,CommunityProviderId, ProviderStatusDescriptorId,ProviderCategoryDescriptorId)
 select PROVIDER_IDNO , PROVIDER_IDNO , 
 isnull(dbo.descriptor('%ProviderStatusDescriptor%',STATUS_TYPE),dbo.descriptor('%ProviderStatusDescriptor%','Nll') ), 
 isnull(dbo.descriptor('%ProviderCategoryDescriptor%',PROVIDER_TYPE),dbo.descriptor('%ProviderCategoryDescriptor%','Nll'))
 from CODELIBRARYSOURCE.[ECQI].dbo.PROVIDER
 go

--'Other' codes, one per Country
 

--'Other' codes, one per Country
 insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId, Discriminator) 
select 999999,'Other-NotListed','Other-NotListed','',dbo.descriptor('%OperationalStatusDescriptor%','Active'),'edfi.CommunityOrganization' 
 go
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution,  OperationalStatusDescriptorId, Discriminator) 
values (999991,'Other-NotListed Kent County','Other-NotListed Kent',dbo.descriptor('%OperationalStatusDescriptor%','Active'),'edfi.CommunityProvider' )
 go
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution,  OperationalStatusDescriptorId, Discriminator) 
values (999992,'Other-NotListed NCC','Other-NotListed NCC',dbo.descriptor('%OperationalStatusDescriptor%','Active'),'edfi.CommunityProvider' )
 go
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution,  OperationalStatusDescriptorId, Discriminator) 
values (999993,'Other-NotListed Sussex','Other-NotListed Sussex',dbo.descriptor('%OperationalStatusDescriptor%','Active'),'edfi.CommunityProvider' )
 go
 insert into edfi.CommunityOrganization values (999999)
 go
  insert into edfi.CommunityProvider (CommunityOrganizationId,CommunityProviderId, ProviderStatusDescriptorId,ProviderCategoryDescriptorId)
select 999999,999991, dbo.descriptor('%ProviderStatus%','A'),dbo.descriptor('%ProviderCategory%','Nll')
 go
   insert into edfi.CommunityProvider (CommunityOrganizationId,CommunityProviderId, ProviderStatusDescriptorId,ProviderCategoryDescriptorId)
select 999999,999992, dbo.descriptor('%ProviderStatus%','A'),dbo.descriptor('%ProviderCategory%','Nll')
 go
   insert into edfi.CommunityProvider (CommunityOrganizationId,CommunityProviderId, ProviderStatusDescriptorId,ProviderCategoryDescriptorId)
select 999999,999999, dbo.descriptor('%ProviderStatus%','A'),dbo.descriptor('%ProviderCategory%','Nll')
 go
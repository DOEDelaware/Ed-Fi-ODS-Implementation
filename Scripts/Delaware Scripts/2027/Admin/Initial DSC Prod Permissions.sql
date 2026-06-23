-- create ApplicationEdOrg records- in scripts, but originally run just for district 33

--select * from ApplicationEducationOrganizations where Application_ApplicationId in (select ApplicationId from applications where ApplicationName like 'DSC%')

insert into ApplicationEducationOrganizations (EducationOrganizationId,Application_ApplicationId)
select distinct EducationORganizationid, ApplicationId from ApplicationEducationOrganizations cross join Applications 
where ApplicationId in (select ApplicationId from applications where ApplicationName like 'DSC%') and EducationOrganizationId not in 
(select EducationOrganizationId from ApplicationEducationOrganizations where Application_ApplicationId in (select ApplicationId from applications where ApplicationName like 'DSC%'))
go




-- Per Adrian, permissions are the same this year;actually looks like they all are allowed
select * from ApiClients where Name like 'DSC%'
select * from ApplicationEducationOrganizations where Application_ApplicationId in (Select ApplicationId from Applications where ApplicationName like 'DSC%')

select * from ApiClientApplicationEducationOrganizations

delete ApiClientApplicationEducationOrganizations where ApiClient_ApiClientId in (select apiClientId from ApiClients where Name like 'DSC%')
go
insert into ApiClientApplicationEducationOrganizations (ApiClient_ApiClientId, ApplicationEducationOrganization_ApplicationEducationOrganizationId)
select ApiClientId, ApplicationEducationOrganizationId from ApiClients join ApplicationEducationOrganizations on ApiClients.Application_ApplicationId=ApplicationEducationOrganizations.Application_ApplicationId
where ApiClients.Application_ApplicationId in (Select ApplicationId from Applications where ApplicationName like 'DSC%') and Name like 'DSC%'
and EducationOrganizationId in (9,10,13,15,16,17,18,23,24,29,31,32,33,34,35,36,37,38,39,40,69,70,71,
72,74,76,77,79,80,82,85,86,87,88,89,92,97,9604,9605,9606,9607,9611,9612,9614) --,9615) think BASSE closed
go





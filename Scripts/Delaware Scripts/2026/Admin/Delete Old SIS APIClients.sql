use [EdFi_Delaware_Admin_61]
go
select * into ApiClients_2025 from ApiClients
go
select * into ApiClientApplicationEducationOrganizations_2025 from ApiClientApplicationEducationOrganizations
go

delete ClientAccessTokens
go

delete 
--select * from
ApiClients where (Application_ApplicationId in (select ApplicationId from Applications where ApplicationName='eschoolplus')
or Application_ApplicationId in (select ApplicationId from Applications where ApplicationName='IC SIS'))
and [Key] not like 'IC[_]%'
go

select * from ClientAccessTokens

delete ClientAccessTokens where ApiClient_ApiClientId=141
delete ApiClients where ApiClientId=141


select * from ApiClients where ApiClientId=141

select * from ApiClientApplicationEducationOrganizations where ApiClient_ApiClientId=141


select * from ApplicationEducationOrganizations where ApplicationEducationOrganizationId=411



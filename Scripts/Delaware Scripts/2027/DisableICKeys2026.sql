--6.x 2026
select *  from ApiClients where Application_ApplicationId in (select ApplicationId from Applications where ClaimSetName ='DESIS' or ClaimSetName='SIS')

select * into Expired2026ICKeys from ApiClients where Application_ApplicationId in (select ApplicationId from Applications where ClaimSetName ='DESIS' or ClaimSetName='SIS')

delete ClientAccessTokens where ApiClient_ApiClientId in (select ApiClientId  from ApiClients where Application_ApplicationId in (select ApplicationId from Applications where ClaimSetName ='DESIS' or ClaimSetName='SIS'))


delete ApiClients where Application_ApplicationId in (select ApplicationId from Applications where ClaimSetName ='DESIS' or ClaimSetName='SIS')


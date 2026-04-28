--Scott Kuykendall 3/2/ (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) 
--This script populates the Ed-Fi ODS schools and districts out of a CodeLibrary database
--The development environment cannot connect to CodeLibrary, therefore references a local copy of CodeLibrary. 
--It does this without changing the connection in this script by requiring a linked server named 'CODELIBRARYSOURCE'
--The script to create this is \Ed-Fi-ODS-Implementation\Scripts\Delaware Scripts\Utilities\CreateCodeLibrarySourcelinkedServer.sql


--declare @bPopTemplate varchar(100)
--set @bPopTemplate=0
--select @bPopTemplate=1 where DB_NAME() like '%Populated%'-- or DB_NAME() like '%Minimal%' 

--select @bPopTemplate

--if (@bPopTemplate=1)
--begin
--	print 'Not populating Delaware Schools- Populated template'
--	return
--end
--else
--begin
 
 
 


 --LEA
 insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution,ShortNameOfInstitution,WebSite,OperationalStatusDescriptorId,Discriminator)
 select DistrictCode, DistrictName, DistrictShortName,WebAddress,dbo.descriptor('%OperationalStatusDescriptor%','Active'),'edfi.LocalEducationAgency'  
 from CODELIBRARYSOURCE.CodeLibrary.dbo.District 
 where schoolyear= (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)  and ACT='A' 
 and DistrictCode<>95  --state code
go
--INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId) 
-- select DistrictCode,dbo.descriptor('%LocalEducationAgencyCategory%',Type) from  CODELIBRARYSOURCE.CodeLibrary.dbo.District where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) and ACT='A'

-- go
-- select * from   CODELIBRARYSOURCE.CodeLibrary.dbo.District where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) and ACT='A'
-- and type not in (select CodeValue from edfi.Descriptor where Namespace like '%LocalEducationAgencyCategor%')
-- select * from edfi.Descriptor where Namespace like '%LocalEducationAgencyCategor%'


 update edOrg set NameOfInstitution = district.DistrictName
  --select * 
 from CODELIBRARYSOURCE.CodeLibrary.dbo.District district
	join edfi.EducationOrganization edOrg on district.DistrictCode=edOrg.EducationOrganizationId
 where 
	schoolyear= (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)  
	and ACT='A' 
	and DistrictCode<>95
	and district.districtName<>edOrg.NameOfInstitution
go


 insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)
select
			district.districtcode,
           (select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Main'),
           district.Phone
from CODELIBRARYSOURCE.codelibrary.dbo.District district
where district.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
 and district.Phone is not null and district.phone <>'' and district.ACT='A'
--and district.districtc not in (select EducationOrganizationId from edfi.EducationOrganizationInstitutionTelephone where InstitutionTelephoneNumberTypeDescriptorId=(select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Main'))	
--go



insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)
select
			district.districtcode,
           (select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Fax'),
           district.Fax
from CODELIBRARYSOURCE.codelibrary.dbo.District district
where district.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
 and district.Phone is not null and district.fax <>''  and district.ACT='A'
--go




 INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])
select
           (select DescriptorId from edfi.Descriptor where Namespace like '%AddressTypeDescriptor%' and CodeValue='M')
           ,DistrictCode
           ,isnull(Street1,' ')
           ,isnull(City,'')
           ,(select DescriptorId from edfi.Descriptor where Namespace like '%StateAbbreviationDescriptor%' and CodeValue='DE')
           ,isnull(Zip,'')
           ,(select County_Name from CODELIBRARYSOURCE.codelibrary.dbo.county where County_code=County)
           ,case when DirectoryInclusion='Y' then 1 else 0 end
 from CODELIBRARYSOURCE.codelibrary.dbo.district district
 where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) --and TYPE not in ('State')
 and districtCode not in (select EducationOrganizationId from edfi.[EducationOrganizationAddress])  and district.ACT='A'

go
update addr 
	set [StreetNumberName]=isnull(Street1,' '),addr.[City]=isnull(district.City,''),[PostalCode]=isnull(Zip,''),
		[NameOfCounty]=(select County_Name from CODELIBRARYSOURCE.codelibrary.dbo.county where County_code=County),[DoNotPublishIndicator]=(case when DirectoryInclusion='Y' then 1 else 0 end)
--  select * 
from [edfi].[EducationOrganizationAddress] addr 
	join   CODELIBRARYSOURCE.codelibrary.dbo.district district on addr.EducationOrganizationId=district.districtcode
 where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) 
 and  district.ACT='A'
 and ([StreetNumberName]<>isnull(Street1,' ') or addr.[City]<>isnull(district.City,'')or [PostalCode]<>isnull(Zip,'') or
		[NameOfCounty]<>(select County_Name from CODELIBRARYSOURCE.codelibrary.dbo.county where County_code=County) or [DoNotPublishIndicator]<>(case when DirectoryInclusion='Y' then 1 else 0 end))
go


insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)
select 
	(select DescriptorId from edfi.Descriptor where Namespace like '%EducationOrganizationCategoryDescriptor%' and CodeValue='Local Education Agency')
	,districtcode
 from CODELIBRARYSOURCE.codelibrary.dbo.district  district
 where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) and district.ACT='A'
 and districtCode not in (select EducationOrganizationId from edfi.EducationOrganizationCategory) 

--go

insert into edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId, CharterStatusDescriptorId)
select 
	districtcode
	,dbo.descriptor('%LocalEducationAgencyCategory%',Type)
	,(case Type when 'Charter' then dbo.descriptor('%CharterStatus%','School Charter') else dbo.descriptor('%CharterStatus%','Not a Charter School') end)
 from CODELIBRARYSOURCE.codelibrary.dbo.district  district
 where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) and district.ACT='A'
 and districtcode in (select EducationORganizationId from edfi.EducationOrganization) 
 and districtcode<>95--state org





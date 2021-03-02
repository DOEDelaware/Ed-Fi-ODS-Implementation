--Scott Kuykendall 3/2/2021
--This script populates the Ed-Fi ODS schools and districts out of a CodeLibrary database
--The development environment cannot connect to CodeLibrary, therefore references a local copy of CodeLibrary. 



 create function [dbo].[descriptor]( @ns varchar(255), @codevalue varchar(50)) returns int as
 begin
 declare @result int
 select @result=descriptorid from edfi.descriptor where codevalue = @codevalue and namespace like  @ns 
return @result
 end
 GO
 

--SAE
insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution,ShortNameOfInstitution,WebSite,OperationalStatusDescriptorId,Discriminator)
 select '95','Department Of Education','DOE','www.doe.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active'),'edfi.StateEducationAgency'
 go
 insert into edfi.StateEducationAgency values (95)
 go

 
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)
select 
	(select DescriptorId from edfi.Descriptor where Namespace like '%EducationOrganizationCategoryDescriptor%' and CodeValue='State Education Agency')
	,95
go



 --LEA
 insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution,ShortNameOfInstitution,WebSite,OperationalStatusDescriptorId,Discriminator)
 select DistrictCode, DistrictName, DistrictShortName,WebAddress,dbo.descriptor('%OperationalStatusDescriptor%','Active'),'edfi.LocalEducationAgency'  from [CODELIBRARYSOURCE'.CodeLibrary.dbo.District where schoolyear=2021 and TYPE not in ('State')
 go
INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId) 
 select DistrictCode,dbo.descriptor('%LocalEducationAgencyCategory%',(select case rtrim(Type) when 'Regular' then 'District' else Type end)) from  [CODELIBRARYSOURCE'.CodeLibrary.dbo.District where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) and TYPE not in ('State')
 go

 INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])
select
           (select DescriptorId from edfi.Descriptor where Namespace like '%AddressTypeDescriptor%' and CodeValue='M')
           ,DistrictCode
           ,isnull(Street1,' ')
           ,isnull(City,'')
           ,(select DescriptorId from edfi.Descriptor where Namespace like '%StateAbbreviationDescriptor%' and CodeValue='DE')
           ,isnull(Zip,'')
           ,(select County_Name from [CODELIBRARYSOURCE'.codelibrary.dbo.county where County_code=County)
           ,case when DirectoryInclusion='Y' then 1 else 0 end
 from [CODELIBRARYSOURCE'.codelibrary.dbo.district 
 where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) and TYPE not in ('State')
 and districtCode not in (select EducationOrganizationId from edfi.[EducationOrganizationAddress]) 

GO
insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)
select
			DistrictCode,
           (select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Fax'),
           Fax
 from [CODELIBRARYSOURCE'.codelibrary.dbo.district 
 where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) and TYPE not in ('State')  and ACT='A'
 and districtCode not in (select EducationOrganizationId from edfi.EducationOrganizationInstitutionTelephone where InstitutionTelephoneNumberTypeDescriptorId=(select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Fax'))
  and Fax is not null
GO

insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)
select
			DistrictCode,
           (select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Main'),
           Phone
 from [CODELIBRARYSOURCE'.codelibrary.dbo.district 
 where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) and TYPE not in ('State')  and ACT='A'
 and districtCode not in (select EducationOrganizationId from edfi.EducationOrganizationInstitutionTelephone where InstitutionTelephoneNumberTypeDescriptorId=(select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Main'))
 and Phone is not null
GO


insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)
select 
	(select DescriptorId from edfi.Descriptor where Namespace like '%EducationOrganizationCategoryDescriptor%' and CodeValue='Local Education Agency')
	,districtcode
 from [CODELIBRARYSOURCE'.codelibrary.dbo.district 
 where  SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1) and TYPE not in ('State')
 and districtCode not in (select EducationOrganizationId from edfi.EducationOrganizationCategory) 

GO




--School

insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId, Discriminator)
select distinct
	building.eSchoolBuilding,
	building.BuildingName,
	building.BuildingShortName,
	school.WebAddress,
	(select DescriptorId from edfi.Descriptor where Namespace like '%OperationalStatusDescriptor%' and CodeValue='Active'),
	'edfi.School'
from 
	[CODELIBRARYSOURCE'.codelibrary.dbo.School school join [CODELIBRARYSOURCE'.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
	and building.eSchoolBuilding not in (select EducationOrganizationId from edfi.EducationOrganization)	
go

insert into edfi.EducationOrganizationIdentificationCode ([EducationOrganizationId] ,[EducationOrganizationIdentificationSystemDescriptorId] ,[IdentificationCode] )
select 
	building.eSchoolBuilding
	,(select DescriptorId from edfi.Descriptor where namespace='uri://doe.k12.de.us/EducationOrganizationIdentificationSystemDescriptor' and CodeValue='ShortSchoolCode')
	,building.SchoolCode
from 
	[CODELIBRARYSOURCE'.codelibrary.dbo.School school join [CODELIBRARYSOURCE'.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
	and building.eSchoolBuilding not in (select EducationOrganizationId from edfi.EducationOrganizationIdentificationCode)	
go


insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)
select 
	(select DescriptorId from edfi.Descriptor where Namespace like '%EducationOrganizationCategoryDescriptor%' and CodeValue='School')
	,building.eSchoolBuilding
from 
	[CODELIBRARYSOURCE'.codelibrary.dbo.School school join [CODELIBRARYSOURCE'.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
	and building.eSchoolBuilding not in (select EducationOrganizationId from edfi.EducationOrganizationCategory)	
go



insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)
select
			building.eSchoolBuilding,
           (select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Main'),
           building.Phone
from [CODELIBRARYSOURCE'.codelibrary.dbo.School school join [CODELIBRARYSOURCE'.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
 and building.Phone is not null and building.phone <>''
and building.eSchoolBuilding not in (select EducationOrganizationId from edfi.EducationOrganizationInstitutionTelephone where InstitutionTelephoneNumberTypeDescriptorId=(select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Main'))	
go


insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)
select
			building.eSchoolBuilding,
           (select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Fax'),
           school.Fax
from [CODELIBRARYSOURCE'.codelibrary.dbo.School school join [CODELIBRARYSOURCE'.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
and school.Fax is not null and school.Fax<>''
and building.eSchoolBuilding not in (select EducationOrganizationId from edfi.EducationOrganizationInstitutionTelephone where InstitutionTelephoneNumberTypeDescriptorId=(select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Fax'))	
GO


INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])
select 
           building.EschoolBuilding
           ,(select DescriptorId from edfi.Descriptor where Namespace like '%SchoolTypeDescriptor%' and CodeValue='Regular')
           ,(select DescriptorId from edfi.Descriptor where namespace like '%CharterStatusDescriptor%' 
				and CodeValue=(Case school.Charter when 'Y' then 'School Charter' else 'Not a Charter School' end))
           ,building.DistrictCode
from 
	[CODELIBRARYSOURCE'.codelibrary.dbo.School school join [CODELIBRARYSOURCE'.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
		and building.EschoolBuilding is not null
go

select * from  de.Schoolextension 


insert into de.Schoolextension (SchoolId,AttendanceConfigurationCategoryDescriptorId) 
select building.eschoolbuilding, (select DescriptorId from edfi.Descriptor where Namespace like '%AttendanceConfigurationCategory%' and CodeValue=AttendanceConfigurationType)
from 
	[CODELIBRARYSOURCE'.codelibrary.dbo.School school join [CODELIBRARYSOURCE'.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
	and building.eSchoolBuilding not in (select SchoolId from de.Schoolextension)	
	and building.eSchoolBuilding  in (select SchoolId from edfi.School)
go


--Program
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Head Start', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Head Start')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Early Child Spec Ed'   , 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Special Education' and ProgramTypeDescriptorId=(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education'))
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Early Head Start', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Early Head Start')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'ECAP', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education')
from edfi.LocalEducationAgency  LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='ECAP')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Part B 619', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Part B 619')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Special Education', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Special Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Special Education')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, '504 Plan', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Section 504 Placement')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='504 Plan')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'CTE', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Career and Technical Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='CTE')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Language Immersion', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Language Immersion')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Language Immersion')
go

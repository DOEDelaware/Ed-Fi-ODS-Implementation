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

 


-- select building.* from  
--	CODELIBRARYSOURCE.codelibrary.dbo.School school join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
--where building.SchoolYear in (2024)

--select distinct BuildingType from
  
--	CODELIBRARYSOURCE.codelibrary.dbo.School school join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
--where building.SchoolYear in (2022)



--select * from CODELIBRARYSOURCE.codelibrary.dbo.building  where  eschoolbuilding is null


--School

insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId, Discriminator)
select distinct
	building.eSchoolBuilding,
	building.BuildingName,
	building.BuildingShortName,
	school.WebAddress,
	(select case building.ACT when'A' then (select DescriptorId from edfi.Descriptor where Namespace like '%OperationalStatusDescriptor%' and CodeValue='Active')
	else (select DescriptorId from edfi.Descriptor where Namespace like '%OperationalStatusDescriptor%' and CodeValue='Inactive') end)
	,
	'edfi.School'
from 
	CODELIBRARYSOURCE.codelibrary.dbo.School school join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
	and building.eSchoolBuilding not in (select EducationOrganizationId from edfi.EducationOrganization)	--and building.ACT='A'
go

update EdOrg set NameOfInstitution=building.BuildingName,ShortNameOfInstitution=building.BuildingShortName, WebSite=school.WebAddress,
	OperationalStatusDescriptorId=(select case building.ACT when'A' then (select DescriptorId from edfi.Descriptor where Namespace like '%OperationalStatusDescriptor%' and CodeValue='Active')
	else (select DescriptorId from edfi.Descriptor where Namespace like '%OperationalStatusDescriptor%' and CodeValue='Inactive') end)
--select * 
from 
CODELIBRARYSOURCE.codelibrary.dbo.School school 
	join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
	join edfi.EducationOrganization EdOrg on building.eSchoolBuilding=EdOrg.EducationOrganizationId
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
	and (edorg.NameOfInstitution<>building.BuildingName or EdORg.ShortNameOfInstitution<>building.BuildingShortName or EdOrg.WebSite<>school.WebAddress or
	(select case building.ACT when'A' then (select DescriptorId from edfi.Descriptor where Namespace like '%OperationalStatusDescriptor%' and CodeValue='Active')
	else (select DescriptorId from edfi.Descriptor where Namespace like '%OperationalStatusDescriptor%' and CodeValue='Inactive') end)<>OperationalStatusDescriptorId)
go



insert into edfi.EducationOrganizationIdentificationCode ([EducationOrganizationId] ,[EducationOrganizationIdentificationSystemDescriptorId] ,[IdentificationCode] )
select 
	building.eSchoolBuilding
	,(select DescriptorId from edfi.Descriptor where namespace='uri://doe.k12.de.us/EducationOrganizationIdentificationSystemDescriptor' and CodeValue='ShortSchoolCode')
	,building.SchoolCode
from 
	CODELIBRARYSOURCE.codelibrary.dbo.School school join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
	and building.eSchoolBuilding not in (select EducationOrganizationId from edfi.EducationOrganizationIdentificationCode)		--and building.ACT='A'
go


insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)
select 
	(select DescriptorId from edfi.Descriptor where Namespace like '%EducationOrganizationCategoryDescriptor%' and CodeValue='School')
	,building.eSchoolBuilding
from 
	CODELIBRARYSOURCE.codelibrary.dbo.School school join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
	and building.eSchoolBuilding not in (select EducationOrganizationId from edfi.EducationOrganizationCategory)		--and building.ACT='A'
go


insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)
select
			building.eSchoolBuilding,
           (select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Main'),
           building.Phone
from CODELIBRARYSOURCE.codelibrary.dbo.School school join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
 and building.Phone is not null and building.phone <>''
and building.eSchoolBuilding not in (select EducationOrganizationId from edfi.EducationOrganizationInstitutionTelephone where InstitutionTelephoneNumberTypeDescriptorId=(select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Main'))	
go


update EdOrgPhone set TelephoneNumber=building.Phone
--select *
from CODELIBRARYSOURCE.codelibrary.dbo.School school 
	join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
	join edfi.EducationOrganizationInstitutionTelephone EdOrgPhone on building.eSchoolBuilding = EdOrgPhone.EducationOrganizationId and InstitutionTelephoneNumberTypeDescriptorId=(select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Main')
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
	and building.Phone is not null and building.phone <>''
	and (building.Phone <> TelephoneNumber)
go




insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)
select
			building.eSchoolBuilding,
           (select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Fax'),
           school.Fax
from CODELIBRARYSOURCE.codelibrary.dbo.School school join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
and school.Fax is not null and school.Fax<>''
and building.eSchoolBuilding not in (select EducationOrganizationId from edfi.EducationOrganizationInstitutionTelephone where InstitutionTelephoneNumberTypeDescriptorId=(select DescriptorId from edfi.Descriptor where Namespace like '%InstitutionTelephoneNumberType%' and CodeValue='Fax'))	
go


INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])
select 
           building.EschoolBuilding
           ,dbo.descriptor('%schooltype%',building.buildingtype)
           ,(select DescriptorId from edfi.Descriptor where namespace like '%CharterStatusDescriptor%' 
				and CodeValue=(Case school.Charter when 'Y' then 'School Charter' else 'Not a Charter School' end))
           ,building.DistrictCode
from 
	CODELIBRARYSOURCE.codelibrary.dbo.School school join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)	
and building.eSchoolBuilding not in (select schoolid from edfi.school)	
go

insert into de.Schoolextension (SchoolId,AttendanceConfigurationCategoryDescriptorId) 
select building.eschoolbuilding, (select DescriptorId from edfi.Descriptor where Namespace like '%AttendanceConfigurationCategory%' and CodeValue=AttendanceConfigurationType)
from 
	CODELIBRARYSOURCE.codelibrary.dbo.School school join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)
	and building.eSchoolBuilding not in (select SchoolId from de.Schoolextension)	
	and building.eSchoolBuilding  in (select SchoolId from edfi.School)
go





--school grades
insert into edfi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolID)
select 
--distinct building.eschoolbuilding
distinct gradedesc.DescriptorId, building.eschoolbuilding
from 
	CODELIBRARYSOURCE.codelibrary.dbo.School school 
		join CODELIBRARYSOURCE.codelibrary.dbo.Building building on school.schoolyear=building.schoolyear and school.districtcode=building.districtCode and school.schoolcode=building.schoolcode 
		join CODELIBRARYSOURCE.codelibrary.dbo.SchoolGrade grade on school.schoolcode = grade.schoolcode and school.schoolyear=grade.schoolyear 
		join edfi.Descriptor gradedesc on gradedesc.CodeValue = grade.GradeCode and Namespace='uri://doe.k12.de.us/GradeLevelDescriptor'

		
where building.SchoolYear in (select schoolyear from edfi.schoolYeartype where CurrentSchoolYear=1)	
and building.eschoolbuilding in (select SchoolID from edfi.school)
and not exists (select * from edfi.SchoolGradeLevel sgl where sgl.GradeLevelDescriptorId=gradedesc.DescriptorId and schoolid=building.eschoolbuilding)
go
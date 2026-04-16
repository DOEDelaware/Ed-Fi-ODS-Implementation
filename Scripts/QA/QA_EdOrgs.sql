use QA
go
create procedure QA_EdOrgs as
--create table District (DistrictCode int, DistrictName varchar(250))
--create table School (DistrictCode int, SchoolCode int, SchoolName varchar(250))
delete District
insert into District
select EducationOrganizationId, NameOfInstitution from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].Edfi.educationorganization eo
join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].Edfi.LocalEducationAgency lea on eo.EducationOrganizationId=lea.LocalEducationAgencyId
delete school
insert into School
select  LocalEducationAgencyId,SchoolId, NameOfInstitution from [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].Edfi.educationorganization  eo
join [doesisedfidb\edfi].[EdFi_Delaware_Ods_2023].Edfi.school school on eo.EducationOrganizationId=school.SchoolId
go


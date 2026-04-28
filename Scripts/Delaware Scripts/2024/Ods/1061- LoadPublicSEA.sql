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


--SAE
insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution,ShortNameOfInstitution,WebSite,OperationalStatusDescriptorId,Discriminator)
 select '95','Department Of Education','DOE','www.doe.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active'),'edfi.StateEducationAgency'
 --go
 insert into edfi.StateEducationAgency values (95)
 go

 
--end
/*  This script will contain the values for Assessment Eligibility Rostering.   

Scott Kuykendall 	4/21/20
*/

delete edfixassessmentroster.assessmentAdministration 
go
delete edfi.Assessment
go

insert into edfi.Assessment (AssessmentIdentifier, [Namespace],AssessmentTitle,CreateDate,LastModifiedDate)
values
  ('20','uri://doe.k12.de.us/AsessmentRoster','Smarter ELA',getdate(),getdate()),
  ('30','uri://doe.k12.de.us/AsessmentRoster','Smarter Math',getdate(),getdate()),
  ('40','uri://doe.k12.de.us/AsessmentRoster','DeSSA Alt ELA',getdate(),getdate()),
  ('50','uri://doe.k12.de.us/AsessmentRoster','DeSSA Alt Math',getdate(),getdate()),
  ('60','uri://doe.k12.de.us/AsessmentRoster','DeSSA Alt Science',getdate(),getdate()),
  ('70','uri://doe.k12.de.us/AsessmentRoster','DeSSA Social Studies',getdate(),getdate()),
  ('80','uri://doe.k12.de.us/AsessmentRoster','DeSSA Science',getdate(),getdate()),
  ('90','uri://doe.k12.de.us/AsessmentRoster','Spring School Day SAT',getdate(),getdate()),
  ('100','uri://doe.k12.de.us/AsessmentRoster','PSAT 8-9',getdate(),getdate()),
  ('110','uri://doe.k12.de.us/AsessmentRoster','Fall School Day SAT',getdate(),getdate()),
  ('120','uri://doe.k12.de.us/AsessmentRoster','PSAT 10',getdate(),getdate()),
  ('130','uri://doe.k12.de.us/AsessmentRoster','ACCESS EL Test',getdate(),getdate()),
  ('140','uri://doe.k12.de.us/AsessmentRoster','ACCESS ALT',getdate(),getdate()),
  ('150','uri://doe.k12.de.us/AsessmentRoster','Dessa Do Not Test',getdate(),getdate()),
  ('160','uri://doe.k12.de.us/AsessmentRoster','Dessa ELL First Year',getdate(),getdate()),
  ('170','uri://doe.k12.de.us/AsessmentRoster','HSBioCourseNCEScode',getdate(),getdate()),
  ('180','uri://doe.k12.de.us/AsessmentRoster','Use Alternate SAT score',getdate(),getdate()),
  ('190','uri://doe.k12.de.us/AsessmentRoster','DeSSA Alt DCPS Assessment',getdate(),getdate())
go


--8/20/2020 additions
insert into edfi.Assessment (AssessmentIdentifier, [Namespace],AssessmentTitle,CreateDate,LastModifiedDate)
values

	('81','uri://doe.k12.de.us/AsessmentRoster','DeSSA Science 03051',getdate(),getdate()),
	('82','uri://doe.k12.de.us/AsessmentRoster','DeSSA Science 03062',getdate(),getdate()),
	('83','uri://doe.k12.de.us/AsessmentRoster','DeSSA Science 03239',getdate(),getdate())

go



insert into edfixassessmentroster.assessmentAdministration 
(AdministrationIdentifier,AssessmentIdentifier,AssigningEducationOrganizationId, Namespace,CreateDate,LastModifiedDate)
select AssessmentIdentifier,AssessmentIdentifier,95,'uri://doe.k12.de.us/AsessmentRoster',getdate(),getdate() from edfi.Assessment where Namespace='uri://doe.k12.de.us/AsessmentRoster' 
and AssessmentIdentifier not in (select AssessmentIdentifier from edfixassessmentroster.assessmentAdministration )
go

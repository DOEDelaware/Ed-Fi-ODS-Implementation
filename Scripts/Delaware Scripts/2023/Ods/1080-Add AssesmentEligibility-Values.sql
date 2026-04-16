/*  This script will contain the values for Assessment Eligibility Rostering.   

Scott Kuykendall 	4/21/20
*/
--declare @bPopTemplate varchar(100)
--set @bPopTemplate=0
--select @bPopTemplate=1 where DB_NAME() like '%Populated%' or DB_NAME() like '%Minimal%' 


--select @bPopTemplate

--if (@bPopTemplate=1)
--begin
--	print 'Not populating assessment roster- Populated template'
--	return
--end
--else
--begin
delete edfixassessmentroster.assessmentAdministration where namespace='uri://doe.k12.de.us/AsessmentRoster'

delete edfi.Assessment where namespace='uri://doe.k12.de.us/AsessmentRoster'

insert into edfi.Assessment (AssessmentIdentifier, [Namespace],AssessmentTitle,CreateDate,LastModifiedDate)
values
  ('20','uri://cambiumassessment.com/AsessmentRoster','Smarter ELA',getdate(),getdate()),
  ('30','uri://cambiumassessment.com/AsessmentRoster','Smarter Math',getdate(),getdate()),
  ('40','uri://doe.k12.de.us/AsessmentRoster','DeSSA Alt ELA',getdate(),getdate()),
  ('50','uri://doe.k12.de.us/AsessmentRoster','DeSSA Alt Math',getdate(),getdate()),
  ('60','uri://doe.k12.de.us/AsessmentRoster','DeSSA Alt Science',getdate(),getdate()),
  ('90','uri://doe.k12.de.us/AsessmentRoster','Spring School Day SAT',getdate(),getdate()),
  -- ('100','uri://doe.k12.de.us/AsessmentRoster','PSAT 8-9',getdate(),getdate()),
  -- ('110','uri://doe.k12.de.us/AsessmentRoster','Fall School Day SAT',getdate(),getdate()),
  ('120','uri://doe.k12.de.us/AsessmentRoster','PSAT 10',getdate(),getdate()),
  ('130','uri://doe.k12.de.us/AsessmentRoster','ACCESS EL Test',getdate(),getdate()),
  ('140','uri://doe.k12.de.us/AsessmentRoster','ACCESS ALT',getdate(),getdate()),
  ('150','uri://doe.k12.de.us/asessmentroster','dessa do not test',getdate(),getdate()),
  ('160','uri://doe.k12.de.us/asessmentroster','dessa ell first year',getdate(),getdate()),
  ('170','uri://doe.k12.de.us/asessmentroster','hsbiocoursencescode',getdate(),getdate()),
  ('180','uri://doe.k12.de.us/asessmentroster','use alternate sat score',getdate(),getdate()),
 ('190','uri://doe.k12.de.us/asessmentroster','dessa alt dcps assessment',getdate(),getdate())
  
  --200  20     Smarter ELA   
--200  30     Smarter Math  
--200  40     DeSSA Alt ELA 
--200  50     DeSSA Alt Math      
--200  60     DeSSA Alt Science   
--200  70     DeSSA Social Studies 
--200  80     DeSSA Science         
--200  90     Spring School Day SAT 
--200  120    PSAT 10             
--200  130    ACCESS EL Test      
--200  140    ACCESS ALT Assessment  


  -- ('70','uri://doe.k12.de.us/AsessmentRoster','DeSSA Social Studies',getdate(),getdate()),
  -- ('80','uri://doe.k12.de.us/AsessmentRoster','DeSSA Science',getdate(),getdate()),


--8/20/2020 additions
-- insert into edfi.Assessment (AssessmentIdentifier, [Namespace],AssessmentTitle,CreateDate,LastModifiedDate)
-- values

	-- ('81','uri://doe.k12.de.us/AsessmentRoster','DeSSA Science 03051',getdate(),getdate()),
	-- ('82','uri://doe.k12.de.us/AsessmentRoster','DeSSA Science 03062',getdate(),getdate()),
	-- ('83','uri://doe.k12.de.us/AsessmentRoster','DeSSA Science 03239',getdate(),getdate())





insert into edfixassessmentroster.assessmentAdministration 
(AdministrationIdentifier,AssessmentIdentifier,AssigningEducationOrganizationId, Namespace,CreateDate,LastModifiedDate)
select AssessmentIdentifier,AssessmentIdentifier,95,namespace,getdate(),getdate() from edfi.Assessment 
--where Namespace='uri://doe.k12.de.us/AsessmentRoster' 
where AssessmentIdentifier not in (select AssessmentIdentifier from edfixassessmentroster.assessmentAdministration )
--end

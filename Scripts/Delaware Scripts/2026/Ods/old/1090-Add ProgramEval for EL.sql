--select * from de.ProgramEvaluation

--select * from de.ProgramEvaluationElement

--select * from de.ProgramEvaluationObjective

--select * from de.ProgramEvaluationPeriodDescriptor
--select * from edfi.Descriptor where DescriptorId=6897

--select * from de.ProgramEvaluationTypeDescriptor
--select * from edfi.Descriptor where DescriptorId=6896


--Evaluation
insert into de.ProgramEvaluation (
	ProgramEducationOrganizationId,
	ProgramEvaluationPeriodDescriptorId,
	ProgramEvaluationTitle, 
	ProgramEvaluationTypeDescriptorId,
	ProgramName, 
	ProgramTypeDescriptorId)
select 
	EducationOrganizationId,
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationPeriodDescriptor' and CodeValue='CUR'),
	'Child Outcome Summary',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationTypeDescriptor' and CodeValue='EL'),
	ProgramName,
	ProgramTypeDescriptorId
from edfi.program where ProgramName='Early Child Spec Ed'
go



----Objectives
insert into de.ProgramEvaluationObjective(
	ProgramEducationOrganizationId,
	ProgramEvaluationObjectiveTitle,
	ProgramEvaluationPeriodDescriptorId,
	ProgramEvaluationTitle, 
	ProgramEvaluationTypeDescriptorId,
	ProgramName, 
	ProgramTypeDescriptorId,
	ProgramEvaluationObjectiveDescription)
select 
	EducationOrganizationId,
	'MP1',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationPeriodDescriptor' and CodeValue='CUR'),
	'Child Outcome Summary',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationTypeDescriptor' and CodeValue='EL'),
	ProgramName,
	ProgramTypeDescriptorId,
	'Making Progress Social Emotional'
from edfi.program where ProgramName='Early Child Spec Ed'
go

insert into de.ProgramEvaluationObjective(
	ProgramEducationOrganizationId,
	ProgramEvaluationObjectiveTitle,
	ProgramEvaluationPeriodDescriptorId,
	ProgramEvaluationTitle, 
	ProgramEvaluationTypeDescriptorId,
	ProgramName, 
	ProgramTypeDescriptorId,
	ProgramEvaluationObjectiveDescription)
select 
	EducationOrganizationId,
	'MP2',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationPeriodDescriptor' and CodeValue='CUR'),
	'Child Outcome Summary',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationTypeDescriptor' and CodeValue='EL'),
	ProgramName,
	ProgramTypeDescriptorId,
	'Making Progress Konwledge'
from edfi.program where ProgramName='Early Child Spec Ed'
go


insert into de.ProgramEvaluationObjective(
	ProgramEducationOrganizationId,
	ProgramEvaluationObjectiveTitle,
	ProgramEvaluationPeriodDescriptorId,
	ProgramEvaluationTitle, 
	ProgramEvaluationTypeDescriptorId,
	ProgramName, 
	ProgramTypeDescriptorId,
	ProgramEvaluationObjectiveDescription)
select 
	EducationOrganizationId,
	'MP3',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationPeriodDescriptor' and CodeValue='CUR'),
	'Child Outcome Summary',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationTypeDescriptor' and CodeValue='EL'),
	ProgramName,
	ProgramTypeDescriptorId,
	'Making Progress Behaviors to Meet Needs'
from edfi.program where ProgramName='Early Child Spec Ed'
go



--Elements
insert into de.ProgramEvaluationElement (
	ProgramEducationOrganizationId,
	ProgramEvaluationElementTitle,
	ProgramEvaluationPeriodDescriptorId,
	ProgramEvaluationTitle, 
	ProgramEvaluationTypeDescriptorId,
	ProgramName, 
	ProgramTypeDescriptorId,
	ProgramEvaluationObjectiveTitle,
	ProgramEvaluationElementDescription,
	ElementMaxNumericRating,
	ElementMinNumericRating,
	ElementSortOrder
)
select 
	EducationOrganizationId,
	'SE',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationPeriodDescriptor' and CodeValue='CUR'),
	'Child Outcome Summary',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationTypeDescriptor' and CodeValue='EL'),
	ProgramName,
	ProgramTypeDescriptorId,
	'MP1',
	'Social Emotional',
	7,
	1,
	1
from edfi.program where ProgramName='Early Child Spec Ed'
go


insert into de.ProgramEvaluationElement (
	ProgramEducationOrganizationId,
	ProgramEvaluationElementTitle,
	ProgramEvaluationPeriodDescriptorId,
	ProgramEvaluationTitle, 
	ProgramEvaluationTypeDescriptorId,
	ProgramName, 
	ProgramTypeDescriptorId,
	ProgramEvaluationObjectiveTitle,
	ProgramEvaluationElementDescription,
	ElementMaxNumericRating,
	ElementMinNumericRating,
	ElementSortOrder
)
select 
	EducationOrganizationId,
	'KS',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationPeriodDescriptor' and CodeValue='CUR'),
	'Child Outcome Summary',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationTypeDescriptor' and CodeValue='EL'),
	ProgramName,
	ProgramTypeDescriptorId,
	'MP2',
	'Making Progress Knowledge',
	7,
	1,
	2
from edfi.program where ProgramName='Early Child Spec Ed'
go

insert into de.ProgramEvaluationElement (
	ProgramEducationOrganizationId,
	ProgramEvaluationElementTitle,
	ProgramEvaluationPeriodDescriptorId,
	ProgramEvaluationTitle, 
	ProgramEvaluationTypeDescriptorId,
	ProgramName, 
	ProgramTypeDescriptorId,
	ProgramEvaluationObjectiveTitle,
	ProgramEvaluationElementDescription,
	ElementMaxNumericRating,
	ElementMinNumericRating,
	ElementSortOrder
)
select 
	EducationOrganizationId,
	'BEH',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationPeriodDescriptor' and CodeValue='CUR'),
	'Child Outcome Summary',
	(select DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/ProgramEvaluationTypeDescriptor' and CodeValue='EL'),
	ProgramName,
	ProgramTypeDescriptorId,
	'MP3',
	'Making Progress Behaviors to Meet Needs',
	7,
	1,
	3
from edfi.program where ProgramName='Early Child Spec Ed'
go


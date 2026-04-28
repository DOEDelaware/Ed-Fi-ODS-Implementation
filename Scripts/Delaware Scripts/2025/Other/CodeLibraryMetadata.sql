use codelibrary 
go

--meta
--doeCode
--edorgs

create schema meta
go

alter schema meta transfer doeCode.Sources
go
insert into meta.sources values ('Cambium','cambiumassessment.com')
go
insert into meta.sources values ('DRC','DRC.com')
go





 --Assessment Eligibility
  drop table meta.Assessment
  go
 create table meta.Assessment (
 AssessmentIdentifier varchar(50) not null,
 source varchar(10) not null,
 title varchar(100),
[Active] bit not null,
[CreateDate] [datetime] not null,
[CreateUser] [varchar](50) not null,
[UpdateDate] [datetime] not null,
[UpdateUser] [varchar](50) not null,
 CONSTRAINT [Assessment_PK] PRIMARY KEY CLUSTERED (AssessmentIdentifier, source))
 go
ALTER TABLE meta.Assessment  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Sources] FOREIGN KEY([source])
REFERENCES meta.[Sources] ([source])
GO

drop table meta.AssessmentAcademicSubject
go
 create table meta.AssessmentAcademicSubject (
 AssessmentIdentifier varchar(50) not null,
 source varchar(10) not null,
AcademicSubjectSource varchar(10) not null,
AcademicSubjectCode varchar(50) not null,
[Active] bit not null,
[CreateDate] [datetime] not null,
[CreateUser] [varchar](50) not null,
[UpdateDate] [datetime] not null,
[UpdateUser] [varchar](50) not null,
 CONSTRAINT [AssessmentAcademicSubject_PK] PRIMARY KEY CLUSTERED (AssessmentIdentifier, source,AcademicSubjectSource,AcademicSubjectCode))
 go
ALTER TABLE meta.AssessmentAcademicSubject  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAcademicSubject_Assessmeent] FOREIGN KEY(AssessmentIdentifier, source)
REFERENCES meta.Assessment (AssessmentIdentifier, source)
GO
ALTER TABLE meta.AssessmentAcademicSubject  WITH CHECK ADD  CONSTRAINT [FK_AssessmentAcademicSubject_AcademicSubject] FOREIGN KEY(AcademicSubjectCode)
REFERENCES doeCode.AcademicSubject (Code)
GO

select * from doecode.AcademicSubject

--DR


 insert into meta.Assessment (AssessmentIdentifier, source,title,CreateDate,[UpdateDate], Createuser,UpdateUser,active)
values
  ('20','Cambium','Smarter ELA',getdate(),getdate(),'initial','initial',1),
  ('40','DOE','Alt ELA',getdate(),getdate(),'initial','initial',1),
  ('30','Cambium','Smarter Math',getdate(),getdate(),'initial','initial',1),
  ('50','DOE','Alt Math',getdate(),getdate(),'initial','initial',1),
  ('80','Cambium','Science',getdate(),getdate(),'initial','initial',1),
  ('60','DOE','Alt Science',getdate(),getdate(),'initial','initial',1),
  ('70','Cambium','Social Studies',getdate(),getdate(),'initial','initial',1),
  ('85','Cambium','Biology',getdate(),getdate(),'initial','initial',1),
  ('120','DOE','PSAT 10',getdate(),getdate(),'initial','initial',1),
  ('90','DOE','Spring School Day SAT',getdate(),getdate(),'initial','initial',1),
  ('130','DOE','ACCESS EL Test',getdate(),getdate(),'initial','initial',1),
  ('140','DOE','ACCESS ALT',getdate(),getdate(),'initial','initial',1),
  ('160','DOE','EL first year',getdate(),getdate(),'initial','initial',1),
  ('200','DRC','Science End of Unit - Elementary',getdate(),getdate(),'initial','initial',1),
  ('210','DRC','Science End of Unit - High',getdate(),getdate(),'initial','initial',1)
go


 insert into meta.AssessmentAcademicSubject (AssessmentIdentifier, source,AcademicSubjectSource,AcademicSubjectCode,CreateDate,[UpdateDate], Createuser,UpdateUser,active)
 values  ('20','Cambium','DOE','ELA',getdate(),getdate(),'initial','initial',1),
  ('40','DOE','DOE','ELA',getdate(),getdate(),'initial','initial',1),
  ('30','Cambium','DOE','MAT',getdate(),getdate(),'initial','initial',1),
  ('50','DOE','DOE','MAT',getdate(),getdate(),'initial','initial',1),
  ('80','Cambium','DOE','SCI',getdate(),getdate(),'initial','initial',1),
  ('60','DOE','DOE','SCI',getdate(),getdate(),'initial','initial',1),
  ('70','Cambium','DOE','SSH',getdate(),getdate(),'initial','initial',1),
  ('85','Cambium','DOE','SCI',getdate(),getdate(),'initial','initial',1),
  ('120','DOE','DOE','CST',getdate(),getdate(),'initial','initial',1),
  ('90','DOE','DOE','CST',getdate(),getdate(),'initial','initial',1),
  ('130','DOE','DOE','ELA',getdate(),getdate(),'initial','initial',1),
  ('140','DOE','DOE','ELA',getdate(),getdate(),'initial','initial',1),
  ('160','DOE','DOE','ENG',getdate(),getdate(),'initial','initial',1),
  ('200','DRC','DOE','SCI',getdate(),getdate(),'initial','initial',1),
  ('210','DRC','DOE','SCI',getdate(),getdate(),'initial','initial',1)
go

--select AssessmentAcademicSubject.AssessmentIdentifier,AssessmentAcademicSubject.AcademicSubjectCode, AssessmentAcademicSubject.source AssessementSource, AcademicSubjectCode, subjectSource.NameSpaceRoot SubjectNameSpaceRoot
--from meta.AssessmentAcademicSubject 
--	join meta.Sources subjectSource on AssessmentAcademicSubject.AcademicSubjectSource=subjectSource.source



go
drop table meta.[CodeSets]
go
CREATE TABLE [meta].[CodeSets](
	[DescriptorName] [nvarchar](60) NOT NULL,
	[EdFiDescriptor] [bit] NOT NULL,
	[Active] [bit] NOT NULL,
	[UrlNamespace] [varchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUser] [varchar](50) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUser] [varchar](50) NOT NULL,
 CONSTRAINT [Descriptors_PK] PRIMARY KEY CLUSTERED 
(
	[DescriptorName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
 insert into meta.[CodeSets] (DescriptorName, [EdFiDescriptor], Active,UrlNamespace, CreateDate,UpdateDate,CreateUser,UpdateUser)
 values 
 ('SpEdExitCode',0, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
 ('StaffType',0, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
 ('SchoolYearType',0, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
 ('ELLTypeInstruction',0, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CohortStatus',0, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('County',0, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('HispanicEthnicity',0, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('LEPCode',0, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('AcademicSubject',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('AcceptanceStatus',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('AddressType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('APExamCode',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('AttemptStatus',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('AttendanceConfigurationCategory',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('AttendanceEventCategory',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('Behavior',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('BullyingCategory',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('CalendarEvent',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CalendarType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CareerPathway',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CertificateCategory',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('Certification',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('CharterStatus',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ChoiceBasis',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('ChoiceCategory',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('ClassroomPosition',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CohortType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ContactType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CoreSubject',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('Country',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CourseAttemptResult',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CourseDefinedBy',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CourseIdentificationSystem',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CourseLevelCharacteristic',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CredentialField',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('CreditType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('Cycle',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('DeescalationTechnique',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('DiplomaCertificateCategory',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('Disability',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('Discipline',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('DisciplineActionLengthDifferenceReason',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('DisciplineIncidentParticipationCode',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('EducationOrganizationCategory',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('EducationOrganizationIdentificationSystem',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ElectronicMailType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('EnrollmentType',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('EntryType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ExitWithdrawType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('FerpaOptOut',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('FollowupCategory',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('FundingNeedsCategory',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('GradeLevel',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('GradeType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('GradeTypeWhenTaken',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('GradingPeriod',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('GraduationPlanType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('HomelessPrimaryNighttimeResidence',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('HomelessProgramService',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ImmunizationCode',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('ImmunizationExemptReason',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('IncidentLocation',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('IncidentRelatedTo',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('Injury',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('InstitutionTelephoneNumberType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('Language',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('LanguageUse',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('LimitedEnglishProficiency',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('Locale',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('LocalEducationAgencyCategory',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('Location',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('MedicalAlertCategory',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('MedicalDisposition',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('MedicalTestCategory',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('MedicalTreatmentCode',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('MedicalVisitReason',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('ModalityTimeType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ModalityType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('NonViolentTechnique',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('NotificationMethod',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('OperationalStatus',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('OtherNameType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ParticipationStatus',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('PostSecondaryEventCategory',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ProgramAssignment',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ProgramCharacteristic',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ProgramEvaluationPeriod',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('ProgramEvaluationType',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('ProgramType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ProviderCategory',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ProviderStatus',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('Race',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('RatingLevel',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('ReasonExited',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ReasonForLateIEP',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('ReasonNotApplied4PlusCollege',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('Relation',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ReporterDescription',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('Responsibility',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('RestraintEventCategory',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('RestraintEventReason',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('SchoolCategory',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('SchoolType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('Section504Disability',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('SectionCharacteristic',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('ServiceStatus',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('Sex',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('SourceSystem',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('SpecialEducationProgramService',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('SpecialEducationSetting',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('StaffClassification',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('StaffIdentificationSystem',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('StaffRole',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('StateAbbreviation',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('StudentCharacteristic',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('StudentIdentificationSystem',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('StudentParticipationCode',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('SupportPlanChange',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('TelephoneNumberType',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('Term',1, 1, 'ed-fi', getdate(),getdate(),'initial','initial'),
('TravelDayOfWeek',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('TravelDirection',1, 1, 'de', getdate(),getdate(),'initial','initial'),
('Treatment',1, 1, 'de', getdate(),getdate(),'initial','initial')
 --select name,1, 1, getdate(),getdate(),'initial','initial' from sys.tables where schema_id in (select schema_id from sys.schemas where name='doeCode')


 select * from sys.tables where schema_id in (select schema_id from sys.schemas where name='doeCode') and name not in (select DescriptorName from meta.Descriptors)

go

alter schema meta transfer doeCode.Sources
go
insert into meta.sources values ('Cambium','cambiumassessment.com')
go
insert into meta.sources values ('DRC','DRC.com')
go




drop table meta.ProgramName
go
create table meta.ProgramName (
ProgramName nvarchar(60) not null,
ProgramTypeCode [varchar](50)  not null,
source varchar(10) not null,
[Eval] bit not null,
[Active] [bit] NOT NULL,
[CreateDate] [datetime] not null,
[UpdateDate] [datetime] not null,
[CreateUser] [varchar](50) not null,
[UpdateUser] [varchar](50) not null,
 CONSTRAINT [ProgramName_PK] PRIMARY KEY CLUSTERED (	ProgramName))
 go
ALTER TABLE meta.ProgramName WITH CHECK ADD  CONSTRAINT [FK_meta.ProgramName.ProgramType] FOREIGN KEY(ProgramTypeCode)
REFERENCES [doeCode].ProgramType (Code)
GO
ALTER TABLE meta.ProgramName  WITH CHECK ADD  CONSTRAINT [FK_PROGRAMNAME_Sources] FOREIGN KEY([source])
REFERENCES meta.[Sources] ([source])
GO




insert into meta.ProgramName (ProgramName,ProgramTypeCode, source,Eval,active, CreateDate,CreateUser, UpdateDate,UpdateUser)
select '504 Plan' ProgramName,'Section 504 Placement' ProgramTypeCode,'DOE' source,0, 1 active, getdate(),'initial',getdate(),'initial' union all
select 'CTE' ProgramName,'Career and Technical Education' ProgramTypeCode,'DOE' source,0, 1 active, getdate(),'initial',getdate(),'initial' union all
select 'Early Child Spec Ed' ProgramName,'Early Education' ProgramTypeCode,'DOE' source,1, 1 active, getdate(),'initial',getdate(),'initial' union all
select 'Early Head Start' ProgramName,'Early Education' ProgramTypeCode,'DOE' source,0, 1 active, getdate(),'initial',getdate(),'initial' union all
select 'ECAP' ProgramName,'Early Education' ProgramTypeCode,'DOE' source,0, 1 active, getdate(),'initial',getdate(),'initial' union all
select 'Head Start' ProgramName,'Early Education' ProgramTypeCode,'DOE' source,0, 1 active, getdate(),'initial',getdate(),'initial' union all
select 'Part B 619' ProgramName,'Early Education' ProgramTypeCode,'DOE' source,0, 1 active, getdate(),'initial',getdate(),'initial' 

 --Program Evaluation
drop table meta.ProgramEvaluation
go
create table meta.ProgramEvaluation (
ProgramEvaluationTitle nvarchar(50) not null,
ProgramName nvarchar(60) not null,
ProgramEvaluationPeriodCode varchar(50)  not null,
ProgramEvaluationTypeCode varchar(50)  not null,
Source varchar(10) not null,
[Active] bit not null,
[CreateDate] [datetime] not null,
[UpdateDate] [datetime] not null,
[CreateUser] [varchar](50) not null,
[UpdateUser] [varchar](50) not null,
CONSTRAINT [ProgramEvaluation_PK] PRIMARY KEY CLUSTERED (ProgramEvaluationTitle, ProgramName))
go
ALTER TABLE meta.[ProgramEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProgramEvaluation_ProgramName] FOREIGN KEY([ProgramName])
REFERENCES meta.ProgramName (ProgramName)
GO
ALTER TABLE meta.[ProgramEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProgramEvaluation_ProgramEvalPeriod] FOREIGN KEY(ProgramEvaluationPeriodCode)
REFERENCES doeCode.ProgramEvaluationPeriod (Code)
GO
ALTER TABLE meta.[ProgramEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProgramEvaluation_ProgramEvaluationTyp] FOREIGN KEY(ProgramEvaluationTypeCode)
REFERENCES doeCode.ProgramEvaluationType (Code)
GO
ALTER TABLE meta.[ProgramEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProgramEvaluation_Sources] FOREIGN KEY([source])
REFERENCES meta.[Sources] ([source])
GO

insert into meta.ProgramEvaluation (ProgramEvaluationTitle, ProgramName,ProgramEvaluationPeriodCode,ProgramEvaluationTypeCode,Source,Active, CreateDate,UpdateDate,CreateUser,UpdateUser)
values ('Child Outcome Summary','Early Child Spec Ed','CUR','EL','DOE',1, getdate(),getdate(),'initial','initial')
go

drop table meta.ProgramEvaluationObjective 
go
create table meta.ProgramEvaluationObjective (
ProgramEvaluationTitle nvarchar(50) not null,
ProgramName nvarchar(60) not null,
ProgramEvaluationObjectiveTitle nvarchar(50) not null,
ProgramEvaluationObjectiveDescription nvarchar(255) null,
[Active] bit not null,
[CreateDate] [datetime] not null,
[CreateUser] [varchar](50) not null,
[UpdateDate] [datetime] not null,
[UpdateUser] [varchar](50) not null,
CONSTRAINT [ProgramEvaluationObjective_PK] PRIMARY KEY CLUSTERED (ProgramEvaluationTitle, ProgramName,ProgramEvaluationObjectiveTitle))
 go
 ALTER TABLE meta.ProgramEvaluationObjective  WITH CHECK ADD  CONSTRAINT [FK_ProgramEvaluationObjective_ProgramEValuation] FOREIGN KEY(ProgramEvaluationTitle,ProgramName)
REFERENCES meta.ProgramEvaluation (ProgramEvaluationTitle,ProgramName)
GO
insert into meta.ProgramEvaluationObjective (ProgramEvaluationTitle,ProgramName,ProgramEvaluationObjectiveTitle,ProgramEvaluationObjectiveDescription, Active,CreateDate,CreateUser,UpdateDate,UpdateUser)
values ('Child Outcome Summary','Early Child Spec Ed','MP1','Making Progress Social Emotional',1,getdate(),'initial',getdate(),'initial'),
('Child Outcome Summary','Early Child Spec Ed','MP2','Making Progress Knowledge',1,getdate(),'initial',getdate(),'initial'),
('Child Outcome Summary','Early Child Spec Ed','MP3','Making Progress Behaviors to Meet Needs',1,getdate(),'initial',getdate(),'initial')


drop table meta.ProgramEvaluationElement 
go
create table meta.ProgramEvaluationElement (
ProgramEvaluationTitle nvarchar(50) not null,
ProgramName nvarchar(60) not null,
ProgramEvaluationElementTitle nvarchar(50) not null,
ProgramEvaluationElementDescription nvarchar(255) null,
ProgramEvaluationObjectiveTitle nvarchar(50) not null,
ElementMaxNumericRating decimal(6,3) null,
ElementMinNumericRating decimal(6,3) null,
ElementSortOrder int null,
[Active] bit not null,
[CreateDate] [datetime] not null,
[CreateUser] [varchar](50) not null,
[UpdateDate] [datetime] not null,
[UpdateUser] [varchar](50) not null,
CONSTRAINT [ProgramEvaluationElement_PK] PRIMARY KEY CLUSTERED (ProgramEvaluationTitle, ProgramName,ProgramEvaluationElementTitle))
 go
ALTER TABLE meta.ProgramEvaluationElement  WITH CHECK ADD  CONSTRAINT [FK_ProgramEvaluationElement_ProgramEValuation] FOREIGN KEY(ProgramEvaluationTitle,ProgramName)
REFERENCES meta.ProgramEvaluation (ProgramEvaluationTitle,ProgramName)
GO
ALTER TABLE meta.ProgramEvaluationElement  WITH CHECK ADD  CONSTRAINT [FK_ProgramEvaluationElement_ProgramEvaluationObjective] FOREIGN KEY(ProgramEvaluationTitle, ProgramName,ProgramEvaluationObjectiveTitle)
REFERENCES meta.ProgramEvaluationObjective (ProgramEvaluationTitle, ProgramName,ProgramEvaluationObjectiveTitle)
GO

insert into meta.ProgramEvaluationElement (ProgramEvaluationTitle,ProgramName,ProgramEvaluationElementTitle,ProgramEvaluationElementDescription,ProgramEvaluationObjectiveTitle,ElementMaxNumericRating,ElementMinNumericRating,ElementSortOrder, Active,CreateDate,CreateUser,UpdateDate,UpdateUser)
values ('Child Outcome Summary','Early Child Spec Ed','SE','Making Progress Social Emotional','MP1',7,1,1,1,getdate(),'initial',getdate(),'initial'),
('Child Outcome Summary','Early Child Spec Ed','KS','Making Progress Social Emotional','MP2',7,1,2,1,getdate(),'initial',getdate(),'initial'),
('Child Outcome Summary','Early Child Spec Ed','SBEH','Making Progress Social Emotional','MP3',7,1,3,1,getdate(),'initial',getdate(),'initial')


drop table meta.MedicalAlertCategorySensitive
go
create table meta.MedicalAlertCategorySensitive (
Code varchar(50) not null,
Sensitive bit not null,
[CreateDate] [datetime] not null,
[CreateUser] [varchar](50) not null,
[UpdateDate] [datetime] not null,
[UpdateUser] [varchar](50) not null,
CONSTRAINT [MedicalAlertCategorySensitive_PK] PRIMARY KEY CLUSTERED (Code))
 go
ALTER TABLE meta.MedicalAlertCategorySensitive  WITH CHECK ADD  CONSTRAINT [FK_MedicalAlertCategorySensitive_MedicalAlertCategory] FOREIGN KEY(Code)
REFERENCES doeCode.MedicalAlertCategory ( Code)
GO

insert into meta.MedicalAlertCategorySensitive (code, Sensitive,CreateDate,CreateUser,UpdateDate,UpdateUser)
select code,0,getdate(),'initial',getdate(),'initial' from doeCode.MedicalAlertCategory
go

update meta.MedicalAlertCategorySensitive set Sensitive=1 where code  in ('ALL',
'C19MR',
'C19P',
'C19PI',
'CD',
'CDP',
'EC19V',
'FAMP',
'GEN',
'GENDP',
'GENED',
'GENET',
'GENTP',
'GI',
'GIP',
'GUR',
'GURP',
'GYN',
'GYNP',
'GYNST',
'GYNTP',
'HIS',
'HISP',
'IM',
'IMC',
'IMCP',
'IMP',
'IZ',
'MED',
'MEDP',
'MN',
'NP',
'NSB',
'NSBP',
'O',
'OO',
'PAR',
'PSDPR',
'PSOCP',
'PSODP',
'PSSMP',
'PSY',
'PSYA',
'PSYAP',
'PSYD',
'PSYGD',
'PSYHD',
'PSYOC',
'PSYOD',
'PSYP',
'PSYPP',
'PSYPR',
'PSYSM',
'PSYTC',
'PSYX',
'PSYXP',
'R',
'RP',
'RPPR',
'RPR',
'SUGP',
'SURGG',
'TP',
'VC19')
go

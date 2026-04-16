delete edfi.Descriptor
go
create procedure PopulateDescriptors ( @DescName varchar(255), @schma varchar(25)='edfi',@act varchar(1)='1', @source varchar(255)='DOE' ) as
/*
Copies data from CodeLibrary.doeCode tables to Ed-Fi descriptor tables, using call information to specify where data goes and what to insert.
@DescName- name of both descriptor (with 'descriptor' appended) and doeCode table name
@schma- schema of Ed-Fi descriptor table
@act- whether to only include Active=1 rows
@source- recorrd from doeCodeSources table that contains namespace for rows
*/

declare @sql nvarchar(max)

set @sql= '
insert into edfi.Descriptor (Namespace,CodeValue,ShortDescription,Description,CreateDate,LastModifiedDate)
select  
''uri://'' + sources.NameSpaceRoot + ''/' + @DescName + 'Descriptor'',
Code,
ShortDescription,
Description,
CreateDate,
UpdateDate
from CodeLibrarySource.CodeLibrary.doeCode.' + @DescName +
'   cs join CodeLibrarySource.CodeLibrary.doeCode.Sources sources on sources.source=''' + @source + ''' where (Active=1 or ' + @act + '=0) ' +
' and Code not in (select CodeValue from edfi.Descriptor where Namespace like ''%' + @DescName + 'Descriptor'')'
print @sql
exec sp_executesql @sql

set @sql= '
insert into ' + @schma + '.' + @DescName + 'Descriptor 
select DescriptorId from edfi.Descriptor where namespace like ''%' + @DescName + 'Descriptor'' and DescriptorId not in (select ' + @DescName + 'DescriptorId from ' + @schma + '.' + @DescName + 'Descriptor)'
print @sql
exec sp_executesql @sql

go

--select * from edfi.Descriptor where namespace like '%operationalstatus%'





PopulateDescriptors 'AcademicSubject'
go
PopulateDescriptors 'AcceptanceStatus','de','1','Ed-Fi'
go
PopulateDescriptors 'AddressType'
go
PopulateDescriptors 'APExamCode','de'
go
PopulateDescriptors 'AttemptStatus'
go
PopulateDescriptors 'AttendanceConfigurationCategory','de'
go
PopulateDescriptors 'AttendanceEventCategory'
go
PopulateDescriptors 'Behavior'
go
PopulateDescriptors 'BullyingCategory','de','1'
go
PopulateDescriptors 'CalendarEvent'
go
PopulateDescriptors 'CalendarType'
go
PopulateDescriptors 'CareerPathway'
go
PopulateDescriptors 'CertificateCategory','de'
go
PopulateDescriptors 'Certification','de'
go
PopulateDescriptors 'CharterStatus'
go
PopulateDescriptors 'ChoiceCategory','de'
go
PopulateDescriptors 'ClassroomPosition'
go
PopulateDescriptors 'CohortType'
go
PopulateDescriptors 'ContactType'
go


PopulateDescriptors 'CoreSubject','de'
go
PopulateDescriptors 'Country'
go
PopulateDescriptors 'CourseAttemptResult'
go
PopulateDescriptors 'CourseDefinedBy'
go
PopulateDescriptors 'CourseIdentificationSystem'
go
PopulateDescriptors 'CourseLevelCharacteristic'
go
PopulateDescriptors 'CredentialField'
go
PopulateDescriptors 'CreditType'
go
PopulateDescriptors 'Cycle','de'
go
PopulateDescriptors 'DeescalationTechnique','de'
go
PopulateDescriptors 'DiplomaCertificateCategory','de'
go
PopulateDescriptors 'Disability'
go
PopulateDescriptors 'Discipline'
go
PopulateDescriptors 'DisciplineActionLengthDifferenceReason'
go
PopulateDescriptors 'EducationOrganizationCategory'
go
PopulateDescriptors 'EducationOrganizationIdentificationSystem'
go
PopulateDescriptors 'ElectronicMailType'
go
PopulateDescriptors 'EnrollmentType','de'
go
PopulateDescriptors 'EntryType'
go
PopulateDescriptors 'ExitWithdrawType'
go
PopulateDescriptors 'FerpaOptOut','de'
go
PopulateDescriptors 'FollowupCategory','de'
go
PopulateDescriptors 'FundingNeedsCategory','de'
go
PopulateDescriptors 'GradeLevel'
go
PopulateDescriptors 'GradeType'
go
PopulateDescriptors 'GradeTypeWhenTaken','de'
go
PopulateDescriptors 'GradingPeriod'
go
PopulateDescriptors 'GraduationPlanType'
go
PopulateDescriptors 'ImmunizationCode','de','0','DHSS'
go
PopulateDescriptors 'ImmunizationExemptReason','de'
go
PopulateDescriptors 'IncidentLocation'
go
PopulateDescriptors 'Injury','de'
go
PopulateDescriptors 'InstitutionTelephoneNumberType'
go
PopulateDescriptors 'Language'
go
PopulateDescriptors 'LanguageUse'
go
PopulateDescriptors 'LimitedEnglishProficiency'
go
PopulateDescriptors 'LocalEducationAgencyCategory'
go
PopulateDescriptors 'Location','de'
go
PopulateDescriptors 'MedicalAlertCategory','de'
go
PopulateDescriptors 'MedicalDisposition','de'
go
PopulateDescriptors 'MedicalTestCategory','de'
go
PopulateDescriptors 'MedicalTreatmentCode','de'
go
PopulateDescriptors 'MedicalVisitReason','de'
go
PopulateDescriptors 'ModalityTimeType','edfixlearningmodality'
go
PopulateDescriptors 'ModalityType','edfixlearningmodality'
go
PopulateDescriptors 'NonViolentTechnique','de'
go
PopulateDescriptors 'NotificationMethod','de'
go
PopulateDescriptors 'OperationalStatus'
go
PopulateDescriptors 'OtherNameType'
go
PopulateDescriptors 'PostSecondaryEventCategory'
go
PopulateDescriptors 'ProgramAssignment'
go
PopulateDescriptors 'ProgramCharacteristic'
go
PopulateDescriptors 'ProgramType'
go


PopulateDescriptors 'ProviderCategory'
go
PopulateDescriptors 'ProviderStatus'
go
PopulateDescriptors 'Race'
go
PopulateDescriptors 'ReasonExited'
go
PopulateDescriptors 'ReasonForLateIEP','de'
go
PopulateDescriptors 'ReasonNotApplied4PlusCollege','de'
go
--PopulateDescriptors 'Referral','de'
--go
PopulateDescriptors 'Relation'
go
PopulateDescriptors 'ReporterDescription'
go
PopulateDescriptors 'Responsibility'
go
PopulateDescriptors 'RestraintEventCategory','de'
go
PopulateDescriptors 'RestraintEventReason'
go
PopulateDescriptors 'SchoolCategory'
go
PopulateDescriptors 'SchoolType'
go
PopulateDescriptors 'SectionCharacteristic'
go
PopulateDescriptors 'ServiceStatus','de'
go
PopulateDescriptors 'Sex'
go
PopulateDescriptors 'SourceSystem'
go
PopulateDescriptors 'SpecialEducationProgramService'
go
PopulateDescriptors 'SpecialEducationSetting'
go
PopulateDescriptors 'StaffClassification'
go
PopulateDescriptors 'StaffIdentificationSystem'
go
PopulateDescriptors 'StaffRole','de'
go
PopulateDescriptors 'StateAbbreviation'
go
PopulateDescriptors 'StudentCharacteristic'
go
PopulateDescriptors 'StudentIdentificationSystem'
go
PopulateDescriptors 'StudentParticipationCode'
go
PopulateDescriptors 'SupportPlanChange','de'
go
PopulateDescriptors 'telephonenumbertype'
go
PopulateDescriptors 'Term'
go
PopulateDescriptors 'TravelDayOfWeek','de'
go
PopulateDescriptors 'TravelDirection','de'
go
PopulateDescriptors 'Treatment','de'
go


PopulateDescriptors 'DisciplineIncidentParticipationCode','edfi'
go
PopulateDescriptors 'ParticipationStatus','edfi'
go


PopulateDescriptors 'IncidentRelatedTo','de'
go

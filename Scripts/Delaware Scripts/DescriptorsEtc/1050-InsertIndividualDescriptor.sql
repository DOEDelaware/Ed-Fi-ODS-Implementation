

INSERT INTO edfi.AcademicSubjectDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%AcademicSubjectDescriptor%'

INSERT INTO de.AcceptanceStatusDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%AcceptanceStatusDescriptor'

INSERT INTO edfi.AddressTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%AddressTypeDescriptor'

INSERT INTO de.APExamCodeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%APExamCodeDescriptor'

INSERT INTO edfi.AttemptStatusDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%AttemptStatusDescriptor'

INSERT INTO de.AttendanceConfigurationCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%AttendanceConfigurationCategoryDescriptor'

INSERT INTO edfi.AttendanceEventCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%AttendanceEventCategoryDescriptor'

INSERT INTO edfi.BehaviorDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%BehaviorDescriptor'

INSERT INTO de.BullyingCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%BullyingCategoryDescriptor'

INSERT INTO edfi.CalendarTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CalendarTypeDescriptor'


INSERT INTO edfi.CareerPathwayDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CareerPathwayDescriptor'
and DescriptorId not in (select CareerPathWayDescriptorId from edfi.CareerPathwayDescriptor)

INSERT INTO edfi.CalendarEventDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CalendarEventDescriptor'

INSERT INTO de.CertificateCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CertificateCategoryDescriptor'

INSERT INTO de.CertificationDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CertificationDescriptor'


INSERT INTO edfi.CharterStatusDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CharterStatusDescriptor'

INSERT INTO de.ChoiceCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ChoiceCategoryDescriptor'

INSERT INTO edfi.ClassroomPositionDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ClassroomPositionDescriptor'

INSERT INTO edfi.ContactTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ContactTypeDescriptor%'

INSERT INTO edfi.CohortTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CohortTypeDescriptor'

INSERT INTO de.CoreSubjectDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CoreSubjectDescriptor'

INSERT INTO edfi.CourseAttemptResultDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CourseAttemptResultDescriptor'

INSERT INTO edfi.CourseDefinedByDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CourseDefinedByDescriptor'

INSERT INTO edfi.CourseLevelCharacteristicDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CourseLevelCharacteristicDescriptor'

INSERT INTO edfi.CourseIdentificationSystemDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CourseIdentificationSystemDescriptor'

INSERT INTO edfi.CountryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CountryDescriptor'

INSERT INTO edfi.CredentialFieldDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CredentialFieldDescriptor'

INSERT INTO edfi.CreditTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CreditTypeDescriptor'

INSERT INTO de.CycleDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%CycleDescriptor'

INSERT INTO de.DiplomaCertificateCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%DiplomaCertificateCategoryDescriptor'


-- INSERT INTO edfi.DiplomaTypeDescriptor
-- SELECT Descriptorid
-- FROM edfi.Descriptor
-- WHERE NameSpace like '%DiplomaTypeDescriptor'

INSERT INTO edfi.DisciplineActionLengthDifferenceReasonDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%DisciplineActionLengthDifferenceReasonDescriptor'

INSERT INTO de.DisciplineDispositionDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%DisciplineDispositionDescriptor'

INSERT INTO edfi.DisabilityDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%DisabilityDescriptor'

INSERT INTO edfi.DisciplineDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%DisciplineDescriptor'

INSERT INTO edfi.EducationOrganizationCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%EducationOrganizationCategoryDescriptor'

INSERT INTO edfi.EducationOrganizationIdentificationSystemDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%EducationOrganizationIdentificationSystemDescriptor'

INSERT INTO edfi.ElectronicMailTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ElectronicMailTypeDescriptor'

INSERT INTO de.EnrollmentTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%EnrollmentTypeDescriptor'

INSERT INTO edfi.EntryTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%EntryTypeDescriptor'

INSERT INTO edfi.ExitWithdrawTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ExitWithdrawTypeDescriptor'

INSERT INTO de.FerpaOptOutDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%FerpaOptOutDescriptor'

INSERT INTO de.FollowupCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%FollowupCategoryDescriptor'

INSERT INTO de.FundingNeedsCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%FundingNeedsCategoryDescriptor'

INSERT INTO edfi.GradeLevelDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%GradeLevelDescriptor'

INSERT INTO edfi.GradeTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%GradeTypeDescriptor'

INSERT INTO edfi.GradingPeriodDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%GradingPeriodDescriptor'

INSERT INTO de.GradeTypeWhenTakenDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%GradeTypeWhenTakenDescriptor'

INSERT INTO edfi.GraduationPlanTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%GraduationPlanTypeDescriptor'

INSERT INTO edfi.IncidentLocationDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%IncidentLocationDescriptor'

INSERT INTO de.ImmunizationCodeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ImmunizationCodeDescriptor'

INSERT INTO de.IncidentRelatedToDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%IncidentRelatedToDescriptor'

INSERT INTO de.InjuryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%InjuryDescriptor'

INSERT INTO edfi.InstitutionTelephoneNumberTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%InstitutionTelephoneNumberTypeDescriptor'

INSERT INTO edfi.LanguageDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%LanguageDescriptor'

INSERT INTO edfi.LanguageUseDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%LanguageUseDescriptor'

INSERT INTO edfi.LocalEducationAgencyCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%LocalEducationAgencyCategoryDescriptor'

-- INSERT INTO de.MedicalAlertCategoryDescriptor
-- SELECT Descriptorid
-- FROM edfi.Descriptor
-- WHERE NameSpace like '%MedicalAlertCategoryDescriptor'

INSERT INTO de.MedicalDispositionDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%MedicalDispositionDescriptor'

INSERT INTO de.MedicalTestCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%MedicalTestCategoryDescriptor'

INSERT INTO de.MedicalTreatmentCodeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%MedicalTreatmentCodeDescriptor'

INSERT INTO de.MedicalVisitReasonDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%MedicalVisitReasonDescriptor'

INSERT INTO de.NotificationMethodDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%NotificationMethodDescriptor'

INSERT INTO edfi.OperationalStatusDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%OperationalStatusDescriptor'

INSERT INTO edfi.OtherNameTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%OtherNameTypeDescriptor'

INSERT INTO de.ParticipationCodeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%/ParticipationCodeDescriptor'

INSERT INTO de.PersonCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%PersonCategoryDescriptor' 

INSERT INTO edfi.PostSecondaryEventCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%PostSecondaryEventCategoryDescriptor'

INSERT INTO edfi.ProgramAssignmentDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ProgramAssignmentDescriptor'

INSERT INTO edfi.ProgramCharacteristicDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ProgramCharacteristicDescriptor'

INSERT INTO edfi.ProgramTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ProgramTypeDescriptor' 

INSERT INTO edfi.RaceDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%RaceDescriptor%' 

INSERT INTO de.ReasonNotApplied4PlusCollegeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ReasonNotApplied4PlusCollegeDescriptor'

INSERT INTO edfi.ReasonExitedDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ReasonExitedDescriptor' 

INSERT INTO de.ReferralDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ReferralDescriptor'

INSERT INTO edfi.RelationDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%RelationDescriptor' 

INSERT INTO edfi.ResponsibilityDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ResponsibilityDescriptor'

INSERT INTO edfi.ReporterDescriptionDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ReporterDescriptionDescriptor'

INSERT INTO de.RestraintEventCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%RestraintEventCategoryDescriptor'

INSERT INTO edfi.RestraintEventReasonDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%RestraintEventReasonDescriptor'

INSERT INTO edfi.SchoolCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%SchoolCategoryDescriptor'

INSERT INTO edfi.SectionCharacteristicDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%SectionCharacteristicDescriptor'

INSERT INTO edfi.SchoolTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%SchoolTypeDescriptor'

INSERT INTO edfi.SchoolFoodServiceProgramServiceDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%SchoolFoodServiceProgramServiceDescriptor'

INSERT INTO de.ServiceStatusDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ServiceStatusDescriptor'

INSERT INTO edfi.SexDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%SexDescriptor'


INSERT INTO edfi.SpecialEducationProgramServiceDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%SpecialEducationProgramServiceDescriptor'

INSERT INTO edfi.SpecialEducationSettingDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%SpecialEducationSettingDescriptor'

INSERT INTO edfi.StaffClassificationDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%StaffClassificationDescriptor'

INSERT INTO edfi.StaffIdentificationSystemDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%StaffIdentificationSystemDescriptor'

INSERT INTO de.StaffRoleDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%StaffRoleDescriptor'

INSERT INTO edfi.StateAbbreviationDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%StateAbbreviationDescriptor'

INSERT INTO edfi.StudentCharacteristicDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%StudentCharacteristicDescriptor'

INSERT INTO edfi.StudentIdentificationSystemDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%StudentIdentificationSystemDescriptor'

INSERT INTO edfi.StudentParticipationCodeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%StudentParticipationCodeDescriptor'

INSERT INTO de.SupportPlanChangeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%SupportPlanChangeDescriptor'

-- INSERT INTO edfi.TechnicalSkillsAssessmentDescriptor
-- SELECT Descriptorid
-- FROM edfi.Descriptor
-- WHERE NameSpace like '%TechnicalSkillsAssessmentDescriptor'

INSERT INTO edfi.TermDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%TermDescriptor'

INSERT INTO edfi.TelephoneNumberTypeDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%TelephoneNumberTypeDescriptor'

INSERT INTO de.TravelDayOfWeekDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%TravelDayOfWeekDescriptor'

INSERT INTO de.TravelDirectionDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%TravelDirectionDescriptor'

INSERT INTO de.TreatmentDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%TreatmentDescriptor'

INSERT INTO de.VictimCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%VictimCategoryDescriptor'

insert into de.NonViolentTechniqueDescriptor select DescriptorId from edfi.Descriptor where namespace=N'uri://doe.k12.de.us/NonViolentTechnique'
go

insert into de.DeescalationTechniqueDescriptor select DescriptorId from edfi.Descriptor where namespace=N'uri://doe.k12.de.us/DeescalationTechniqueDescriptor'
go

insert into de.ReasonForLateIEPDescriptor select descriptorid from edfi.Descriptor where Namespace=N'uri://doe.k12.de.us/ReasonForLateIEPDescriptor'
go

INSERT INTO edfi.ProviderCategoryDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ProviderCategoryDescriptor%'
go
INSERT INTO edfi.ProviderStatusDescriptor
SELECT Descriptorid
FROM edfi.Descriptor
WHERE NameSpace like '%ProviderStatusDescriptor%'
go
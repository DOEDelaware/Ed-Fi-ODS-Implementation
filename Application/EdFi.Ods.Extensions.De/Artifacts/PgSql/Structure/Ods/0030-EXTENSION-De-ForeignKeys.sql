ALTER TABLE de.AcceptanceStatusDescriptor ADD CONSTRAINT FK_c2baeb_Descriptor FOREIGN KEY (AcceptanceStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.AllegedBullyingVictim ADD CONSTRAINT FK_629ab9_IncidentLocationDescriptor FOREIGN KEY (IncidentLocationDescriptorId)
REFERENCES edfi.IncidentLocationDescriptor (IncidentLocationDescriptorId)
;

CREATE INDEX FK_629ab9_IncidentLocationDescriptor
ON de.AllegedBullyingVictim (IncidentLocationDescriptorId ASC);

ALTER TABLE de.AllegedBullyingVictim ADD CONSTRAINT FK_629ab9_IncidentRelatedToDescriptor FOREIGN KEY (ReasonIncidentRelatedToDescriptorId)
REFERENCES de.IncidentRelatedToDescriptor (IncidentRelatedToDescriptorId)
;

CREATE INDEX FK_629ab9_IncidentRelatedToDescriptor
ON de.AllegedBullyingVictim (ReasonIncidentRelatedToDescriptorId ASC);

ALTER TABLE de.AllegedBullyingVictim ADD CONSTRAINT FK_629ab9_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_629ab9_School
ON de.AllegedBullyingVictim (SchoolId ASC);

ALTER TABLE de.AllegedBullyingVictim ADD CONSTRAINT FK_629ab9_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_629ab9_Student
ON de.AllegedBullyingVictim (StudentUSI ASC);

ALTER TABLE de.AllegedBullyingVictimBullyingCategory ADD CONSTRAINT FK_8fa51e_AllegedBullyingVictim FOREIGN KEY (AllegedIncidentDate, SchoolId, StudentUSI)
REFERENCES de.AllegedBullyingVictim (AllegedIncidentDate, SchoolId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_8fa51e_AllegedBullyingVictim
ON de.AllegedBullyingVictimBullyingCategory (AllegedIncidentDate ASC, SchoolId ASC, StudentUSI ASC);

ALTER TABLE de.AllegedBullyingVictimBullyingCategory ADD CONSTRAINT FK_8fa51e_BullyingCategoryDescriptor FOREIGN KEY (BullyingCategoryDescriptorId)
REFERENCES de.BullyingCategoryDescriptor (BullyingCategoryDescriptorId)
;

CREATE INDEX FK_8fa51e_BullyingCategoryDescriptor
ON de.AllegedBullyingVictimBullyingCategory (BullyingCategoryDescriptorId ASC);

ALTER TABLE de.APExamCodeDescriptor ADD CONSTRAINT FK_095f91_Descriptor FOREIGN KEY (APExamCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.AttendanceConfigurationCategoryDescriptor ADD CONSTRAINT FK_a59d58_Descriptor FOREIGN KEY (AttendanceConfigurationCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.BullyingCategoryDescriptor ADD CONSTRAINT FK_c163b1_Descriptor FOREIGN KEY (BullyingCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.CalendarDateExtension ADD CONSTRAINT FK_1a442d_CalendarDate FOREIGN KEY (CalendarCode, Date, SchoolId, SchoolYear)
REFERENCES edfi.CalendarDate (CalendarCode, Date, SchoolId, SchoolYear)
ON DELETE CASCADE
;

ALTER TABLE de.CalendarDateExtension ADD CONSTRAINT FK_1a442d_CycleDescriptor FOREIGN KEY (CycleDescriptorId)
REFERENCES de.CycleDescriptor (CycleDescriptorId)
;

CREATE INDEX FK_1a442d_CycleDescriptor
ON de.CalendarDateExtension (CycleDescriptorId ASC);

ALTER TABLE de.CertificateCategoryDescriptor ADD CONSTRAINT FK_99d3c3_Descriptor FOREIGN KEY (CertificateCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.CertificationDescriptor ADD CONSTRAINT FK_d65da4_Descriptor FOREIGN KEY (CertificationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.ChoiceCategoryDescriptor ADD CONSTRAINT FK_f1e696_Descriptor FOREIGN KEY (ChoiceCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.CIPCourse ADD CONSTRAINT FK_8fe144_LocalEducationAgency FOREIGN KEY (LocalEducationAgencyId)
REFERENCES edfi.LocalEducationAgency (LocalEducationAgencyId)
;

CREATE INDEX FK_8fe144_LocalEducationAgency
ON de.CIPCourse (LocalEducationAgencyId ASC);

ALTER TABLE de.ClassPeriodCycle ADD CONSTRAINT FK_c01094_ClassPeriod FOREIGN KEY (ClassPeriodName, SchoolId)
REFERENCES edfi.ClassPeriod (ClassPeriodName, SchoolId)
ON DELETE CASCADE
ON UPDATE CASCADE
;

CREATE INDEX FK_c01094_ClassPeriod
ON de.ClassPeriodCycle (ClassPeriodName ASC, SchoolId ASC);

ALTER TABLE de.ClassPeriodCycle ADD CONSTRAINT FK_c01094_CycleDescriptor FOREIGN KEY (CycleDescriptorId)
REFERENCES de.CycleDescriptor (CycleDescriptorId)
;

CREATE INDEX FK_c01094_CycleDescriptor
ON de.ClassPeriodCycle (CycleDescriptorId ASC);

ALTER TABLE de.ClassPeriodExtension ADD CONSTRAINT FK_59ba10_ClassPeriod FOREIGN KEY (ClassPeriodName, SchoolId)
REFERENCES edfi.ClassPeriod (ClassPeriodName, SchoolId)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE de.CoreSubjectDescriptor ADD CONSTRAINT FK_8155f3_Descriptor FOREIGN KEY (CoreSubjectDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.CourseExtension ADD CONSTRAINT FK_53d9b4_APExamCodeDescriptor FOREIGN KEY (APExamCodeDescriptorId)
REFERENCES de.APExamCodeDescriptor (APExamCodeDescriptorId)
;

CREATE INDEX FK_53d9b4_APExamCodeDescriptor
ON de.CourseExtension (APExamCodeDescriptorId ASC);

ALTER TABLE de.CourseExtension ADD CONSTRAINT FK_53d9b4_CoreSubjectDescriptor FOREIGN KEY (CoreSubjectDescriptorId)
REFERENCES de.CoreSubjectDescriptor (CoreSubjectDescriptorId)
;

CREATE INDEX FK_53d9b4_CoreSubjectDescriptor
ON de.CourseExtension (CoreSubjectDescriptorId ASC);

ALTER TABLE de.CourseExtension ADD CONSTRAINT FK_53d9b4_Course FOREIGN KEY (CourseCode, EducationOrganizationId)
REFERENCES edfi.Course (CourseCode, EducationOrganizationId)
ON DELETE CASCADE
;

ALTER TABLE de.CourseExtension ADD CONSTRAINT FK_53d9b4_CredentialFieldDescriptor FOREIGN KEY (StaffCredentialFieldDescriptorId)
REFERENCES edfi.CredentialFieldDescriptor (CredentialFieldDescriptorId)
;

CREATE INDEX FK_53d9b4_CredentialFieldDescriptor
ON de.CourseExtension (StaffCredentialFieldDescriptorId ASC);

ALTER TABLE de.CourseExtension ADD CONSTRAINT FK_53d9b4_CredentialFieldDescriptor1 FOREIGN KEY (SecondaryStaffCredentialFieldDescriptorId)
REFERENCES edfi.CredentialFieldDescriptor (CredentialFieldDescriptorId)
;

CREATE INDEX FK_53d9b4_CredentialFieldDescriptor1
ON de.CourseExtension (SecondaryStaffCredentialFieldDescriptorId ASC);

ALTER TABLE de.CourseExtension ADD CONSTRAINT FK_53d9b4_School FOREIGN KEY (UnitCountExceptionSchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_53d9b4_School
ON de.CourseExtension (UnitCountExceptionSchoolId ASC);

ALTER TABLE de.CourseExtension ADD CONSTRAINT FK_53d9b4_ServiceStatusDescriptor FOREIGN KEY (SecondaryStaffClassroomServiceStatusDescriptorId)
REFERENCES de.ServiceStatusDescriptor (ServiceStatusDescriptorId)
;

CREATE INDEX FK_53d9b4_ServiceStatusDescriptor
ON de.CourseExtension (SecondaryStaffClassroomServiceStatusDescriptorId ASC);

ALTER TABLE de.CourseExtension ADD CONSTRAINT FK_53d9b4_StaffRoleDescriptor FOREIGN KEY (SecondaryStaffRoleDescriptorId)
REFERENCES de.StaffRoleDescriptor (StaffRoleDescriptorId)
;

CREATE INDEX FK_53d9b4_StaffRoleDescriptor
ON de.CourseExtension (SecondaryStaffRoleDescriptorId ASC);

ALTER TABLE de.CycleDescriptor ADD CONSTRAINT FK_ca0d12_Descriptor FOREIGN KEY (CycleDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.DeescalationTechniqueDescriptor ADD CONSTRAINT FK_db7f21_Descriptor FOREIGN KEY (DeescalationTechniqueDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.DiplomaCertificateCategoryDescriptor ADD CONSTRAINT FK_758080_Descriptor FOREIGN KEY (DiplomaCertificateCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.DisciplineDispositionDescriptor ADD CONSTRAINT FK_76006d_Descriptor FOREIGN KEY (DisciplineDispositionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.DisciplineIncidentCode ADD CONSTRAINT FK_6867fd_BehaviorDescriptor FOREIGN KEY (BehaviorDescriptorId)
REFERENCES edfi.BehaviorDescriptor (BehaviorDescriptorId)
;

ALTER TABLE de.DisciplineIncidentExtension ADD CONSTRAINT FK_cde8b8_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId)
REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId)
ON DELETE CASCADE
;

ALTER TABLE de.DisciplineIncidentReason ADD CONSTRAINT FK_f06cfe_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId)
REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId)
ON DELETE CASCADE
;

CREATE INDEX FK_f06cfe_DisciplineIncident
ON de.DisciplineIncidentReason (IncidentIdentifier ASC, SchoolId ASC);

ALTER TABLE de.DisciplineIncidentReason ADD CONSTRAINT FK_f06cfe_IncidentRelatedToDescriptor FOREIGN KEY (IncidentRelatedToDescriptorId)
REFERENCES de.IncidentRelatedToDescriptor (IncidentRelatedToDescriptorId)
;

CREATE INDEX FK_f06cfe_IncidentRelatedToDescriptor
ON de.DisciplineIncidentReason (IncidentRelatedToDescriptorId ASC);

ALTER TABLE de.DisciplineIncidentReferral ADD CONSTRAINT FK_e59c6d_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId)
REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId)
ON DELETE CASCADE
;

CREATE INDEX FK_e59c6d_DisciplineIncident
ON de.DisciplineIncidentReferral (IncidentIdentifier ASC, SchoolId ASC);

ALTER TABLE de.DisciplineIncidentReferral ADD CONSTRAINT FK_e59c6d_ReferralDescriptor FOREIGN KEY (ReferralDescriptorId)
REFERENCES de.ReferralDescriptor (ReferralDescriptorId)
;

CREATE INDEX FK_e59c6d_ReferralDescriptor
ON de.DisciplineIncidentReferral (ReferralDescriptorId ASC);

ALTER TABLE de.EnrollmentTypeDescriptor ADD CONSTRAINT FK_d3c777_Descriptor FOREIGN KEY (EnrollmentTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.FerpaOptOutDescriptor ADD CONSTRAINT FK_f3bf87_Descriptor FOREIGN KEY (FerpaOptOutDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.FollowupCategoryDescriptor ADD CONSTRAINT FK_eb7ec9_Descriptor FOREIGN KEY (FollowupCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.FundingNeedsCategoryDescriptor ADD CONSTRAINT FK_174280_Descriptor FOREIGN KEY (FundingNeedsCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.GradeTypeDetail ADD CONSTRAINT FK_948884_GradeTypeDescriptor FOREIGN KEY (GradeTypeDescriptorId)
REFERENCES edfi.GradeTypeDescriptor (GradeTypeDescriptorId)
;

CREATE INDEX FK_948884_GradeTypeDescriptor
ON de.GradeTypeDetail (GradeTypeDescriptorId ASC);

ALTER TABLE de.GradeTypeDetail ADD CONSTRAINT FK_948884_GradeTypeWhenTakenDescriptor FOREIGN KEY (GradeTypeWhenTakenDescriptorId)
REFERENCES de.GradeTypeWhenTakenDescriptor (GradeTypeWhenTakenDescriptorId)
;

CREATE INDEX FK_948884_GradeTypeWhenTakenDescriptor
ON de.GradeTypeDetail (GradeTypeWhenTakenDescriptorId ASC);

ALTER TABLE de.GradeTypeDetail ADD CONSTRAINT FK_948884_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_948884_School
ON de.GradeTypeDetail (SchoolId ASC);

ALTER TABLE de.GradeTypeWhenTakenDescriptor ADD CONSTRAINT FK_e121d9_Descriptor FOREIGN KEY (GradeTypeWhenTakenDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.GradingPeriodExtension ADD CONSTRAINT FK_a41eef_GradingPeriod FOREIGN KEY (GradingPeriodDescriptorId, PeriodSequence, SchoolId, SchoolYear)
REFERENCES edfi.GradingPeriod (GradingPeriodDescriptorId, PeriodSequence, SchoolId, SchoolYear)
ON DELETE CASCADE
;

ALTER TABLE de.ImmunizationCodeDescriptor ADD CONSTRAINT FK_f7ffb5_Descriptor FOREIGN KEY (ImmunizationCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.IncidentRelatedToDescriptor ADD CONSTRAINT FK_d086c0_Descriptor FOREIGN KEY (IncidentRelatedToDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.InjuryDescriptor ADD CONSTRAINT FK_c3ffe4_Descriptor FOREIGN KEY (InjuryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.LevelDetail ADD CONSTRAINT FK_cf3970_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_cf3970_School
ON de.LevelDetail (SchoolId ASC);

ALTER TABLE de.LocationDescriptor ADD CONSTRAINT FK_343830_Descriptor FOREIGN KEY (LocationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.MedicalAlert ADD CONSTRAINT FK_54dd73_MedicalAlertCategoryDescriptor FOREIGN KEY (MedicalAlertCategoryDescriptorId)
REFERENCES de.MedicalAlertCategoryDescriptor (MedicalAlertCategoryDescriptorId)
;

ALTER TABLE de.MedicalAlertCategoryDescriptor ADD CONSTRAINT FK_9f66fc_Descriptor FOREIGN KEY (MedicalAlertCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.MedicalDispositionDescriptor ADD CONSTRAINT FK_b95a0e_Descriptor FOREIGN KEY (MedicalDispositionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.MedicalOfficeVisit ADD CONSTRAINT FK_7bbd92_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId)
REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId)
;

CREATE INDEX FK_7bbd92_Person
ON de.MedicalOfficeVisit (PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.MedicalOfficeVisit ADD CONSTRAINT FK_7bbd92_School FOREIGN KEY (SchoolOfServiceSchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_7bbd92_School
ON de.MedicalOfficeVisit (SchoolOfServiceSchoolId ASC);

ALTER TABLE de.MedicalOfficeVisitContactType ADD CONSTRAINT FK_f162a6_ContactTypeDescriptor FOREIGN KEY (ContactTypeDescriptorId)
REFERENCES edfi.ContactTypeDescriptor (ContactTypeDescriptorId)
;

CREATE INDEX FK_f162a6_ContactTypeDescriptor
ON de.MedicalOfficeVisitContactType (ContactTypeDescriptorId ASC);

ALTER TABLE de.MedicalOfficeVisitContactType ADD CONSTRAINT FK_f162a6_MedicalOfficeVisit FOREIGN KEY (OfficeInDate, PersonId, SourceSystemDescriptorId)
REFERENCES de.MedicalOfficeVisit (OfficeInDate, PersonId, SourceSystemDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_f162a6_MedicalOfficeVisit
ON de.MedicalOfficeVisitContactType (OfficeInDate ASC, PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.MedicalOfficeVisitMedicalDisposition ADD CONSTRAINT FK_81ba02_MedicalDispositionDescriptor FOREIGN KEY (MedicalDispositionDescriptorId)
REFERENCES de.MedicalDispositionDescriptor (MedicalDispositionDescriptorId)
;

CREATE INDEX FK_81ba02_MedicalDispositionDescriptor
ON de.MedicalOfficeVisitMedicalDisposition (MedicalDispositionDescriptorId ASC);

ALTER TABLE de.MedicalOfficeVisitMedicalDisposition ADD CONSTRAINT FK_81ba02_MedicalOfficeVisit FOREIGN KEY (OfficeInDate, PersonId, SourceSystemDescriptorId)
REFERENCES de.MedicalOfficeVisit (OfficeInDate, PersonId, SourceSystemDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_81ba02_MedicalOfficeVisit
ON de.MedicalOfficeVisitMedicalDisposition (OfficeInDate ASC, PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.MedicalOfficeVisitMedicalTreatmentCode ADD CONSTRAINT FK_4a372c_MedicalOfficeVisit FOREIGN KEY (OfficeInDate, PersonId, SourceSystemDescriptorId)
REFERENCES de.MedicalOfficeVisit (OfficeInDate, PersonId, SourceSystemDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_4a372c_MedicalOfficeVisit
ON de.MedicalOfficeVisitMedicalTreatmentCode (OfficeInDate ASC, PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.MedicalOfficeVisitMedicalTreatmentCode ADD CONSTRAINT FK_4a372c_MedicalTreatmentCodeDescriptor FOREIGN KEY (MedicalTreatmentCodeDescriptorId)
REFERENCES de.MedicalTreatmentCodeDescriptor (MedicalTreatmentCodeDescriptorId)
;

CREATE INDEX FK_4a372c_MedicalTreatmentCodeDescriptor
ON de.MedicalOfficeVisitMedicalTreatmentCode (MedicalTreatmentCodeDescriptorId ASC);

ALTER TABLE de.MedicalOfficeVisitMedicalVisitReason ADD CONSTRAINT FK_3b2b5a_MedicalOfficeVisit FOREIGN KEY (OfficeInDate, PersonId, SourceSystemDescriptorId)
REFERENCES de.MedicalOfficeVisit (OfficeInDate, PersonId, SourceSystemDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_3b2b5a_MedicalOfficeVisit
ON de.MedicalOfficeVisitMedicalVisitReason (OfficeInDate ASC, PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.MedicalOfficeVisitMedicalVisitReason ADD CONSTRAINT FK_3b2b5a_MedicalVisitReasonDescriptor FOREIGN KEY (MedicalVisitReasonDescriptorId)
REFERENCES de.MedicalVisitReasonDescriptor (MedicalVisitReasonDescriptorId)
;

CREATE INDEX FK_3b2b5a_MedicalVisitReasonDescriptor
ON de.MedicalOfficeVisitMedicalVisitReason (MedicalVisitReasonDescriptorId ASC);

ALTER TABLE de.MedicalReferralFollowUp ADD CONSTRAINT FK_d22e7d_FollowupCategoryDescriptor FOREIGN KEY (FollowupCategoryDescriptorId)
REFERENCES de.FollowupCategoryDescriptor (FollowupCategoryDescriptorId)
;

CREATE INDEX FK_d22e7d_FollowupCategoryDescriptor
ON de.MedicalReferralFollowUp (FollowupCategoryDescriptorId ASC);

ALTER TABLE de.MedicalReferralFollowUp ADD CONSTRAINT FK_d22e7d_MedicalTestCategoryDescriptor FOREIGN KEY (MedicalTestCategoryDescriptorId)
REFERENCES de.MedicalTestCategoryDescriptor (MedicalTestCategoryDescriptorId)
;

CREATE INDEX FK_d22e7d_MedicalTestCategoryDescriptor
ON de.MedicalReferralFollowUp (MedicalTestCategoryDescriptorId ASC);

ALTER TABLE de.MedicalReferralFollowUp ADD CONSTRAINT FK_d22e7d_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId)
REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId)
;

CREATE INDEX FK_d22e7d_Person
ON de.MedicalReferralFollowUp (PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.MedicalScreening ADD CONSTRAINT FK_afc675_EducationOrganization FOREIGN KEY (ScreeningEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_afc675_EducationOrganization
ON de.MedicalScreening (ScreeningEducationOrganizationId ASC);

ALTER TABLE de.MedicalScreening ADD CONSTRAINT FK_afc675_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_afc675_GradeLevelDescriptor
ON de.MedicalScreening (GradeLevelDescriptorId ASC);

ALTER TABLE de.MedicalScreening ADD CONSTRAINT FK_afc675_LocationDescriptor FOREIGN KEY (ScreeningLocationDescriptorId)
REFERENCES de.LocationDescriptor (LocationDescriptorId)
;

CREATE INDEX FK_afc675_LocationDescriptor
ON de.MedicalScreening (ScreeningLocationDescriptorId ASC);

ALTER TABLE de.MedicalScreening ADD CONSTRAINT FK_afc675_MedicalTestCategoryDescriptor FOREIGN KEY (MedicalTestCategoryDescriptorId)
REFERENCES de.MedicalTestCategoryDescriptor (MedicalTestCategoryDescriptorId)
;

CREATE INDEX FK_afc675_MedicalTestCategoryDescriptor
ON de.MedicalScreening (MedicalTestCategoryDescriptorId ASC);

ALTER TABLE de.MedicalScreening ADD CONSTRAINT FK_afc675_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId)
REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId)
;

CREATE INDEX FK_afc675_Person
ON de.MedicalScreening (PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.MedicalScreening ADD CONSTRAINT FK_afc675_School FOREIGN KEY (SchoolOfServiceSchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_afc675_School
ON de.MedicalScreening (SchoolOfServiceSchoolId ASC);

ALTER TABLE de.MedicalTestCategoryDescriptor ADD CONSTRAINT FK_0bf45c_Descriptor FOREIGN KEY (MedicalTestCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.MedicalTreatmentCodeDescriptor ADD CONSTRAINT FK_cf0ef3_Descriptor FOREIGN KEY (MedicalTreatmentCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.MedicalVisitReasonDescriptor ADD CONSTRAINT FK_71efaa_Descriptor FOREIGN KEY (MedicalVisitReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.MedicationBox ADD CONSTRAINT FK_f55449_LocalEducationAgency FOREIGN KEY (LocalEducationAgencyId)
REFERENCES edfi.LocalEducationAgency (LocalEducationAgencyId)
;

CREATE INDEX FK_f55449_LocalEducationAgency
ON de.MedicationBox (LocalEducationAgencyId ASC);

ALTER TABLE de.NonStudent ADD CONSTRAINT FK_8d6131_CountryDescriptor FOREIGN KEY (BirthCountryDescriptorId)
REFERENCES edfi.CountryDescriptor (CountryDescriptorId)
;

CREATE INDEX FK_8d6131_CountryDescriptor
ON de.NonStudent (BirthCountryDescriptorId ASC);

ALTER TABLE de.NonStudent ADD CONSTRAINT FK_8d6131_LocalEducationAgency FOREIGN KEY (LocalEducationAgencyId)
REFERENCES edfi.LocalEducationAgency (LocalEducationAgencyId)
;

CREATE INDEX FK_8d6131_LocalEducationAgency
ON de.NonStudent (LocalEducationAgencyId ASC);

ALTER TABLE de.NonStudent ADD CONSTRAINT FK_8d6131_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId)
REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId)
;

CREATE INDEX FK_8d6131_Person
ON de.NonStudent (PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.NonStudent ADD CONSTRAINT FK_8d6131_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_8d6131_School
ON de.NonStudent (SchoolId ASC);

ALTER TABLE de.NonStudent ADD CONSTRAINT FK_8d6131_SexDescriptor FOREIGN KEY (BirthSexDescriptorId)
REFERENCES edfi.SexDescriptor (SexDescriptorId)
;

CREATE INDEX FK_8d6131_SexDescriptor
ON de.NonStudent (BirthSexDescriptorId ASC);

ALTER TABLE de.NonStudent ADD CONSTRAINT FK_8d6131_SexDescriptor1 FOREIGN KEY (SexDescriptorId)
REFERENCES edfi.SexDescriptor (SexDescriptorId)
;

CREATE INDEX FK_8d6131_SexDescriptor1
ON de.NonStudent (SexDescriptorId ASC);

ALTER TABLE de.NonStudent ADD CONSTRAINT FK_8d6131_StateAbbreviationDescriptor FOREIGN KEY (BirthStateAbbreviationDescriptorId)
REFERENCES edfi.StateAbbreviationDescriptor (StateAbbreviationDescriptorId)
;

CREATE INDEX FK_8d6131_StateAbbreviationDescriptor
ON de.NonStudent (BirthStateAbbreviationDescriptorId ASC);

ALTER TABLE de.NonStudentEthnicity ADD CONSTRAINT FK_d4f2db_NonStudent FOREIGN KEY (LocalEducationAgencyId, NonStudentLocalId)
REFERENCES de.NonStudent (LocalEducationAgencyId, NonStudentLocalId)
ON DELETE CASCADE
;

ALTER TABLE de.NonStudentEthnicity ADD CONSTRAINT FK_d4f2db_RaceDescriptor FOREIGN KEY (RaceDescriptorId)
REFERENCES edfi.RaceDescriptor (RaceDescriptorId)
;

CREATE INDEX FK_d4f2db_RaceDescriptor
ON de.NonStudentEthnicity (RaceDescriptorId ASC);

ALTER TABLE de.NonStudentEthnicity ADD CONSTRAINT FK_d4f2db_RaceDescriptor1 FOREIGN KEY (FederalRaceDescriptorId)
REFERENCES edfi.RaceDescriptor (RaceDescriptorId)
;

CREATE INDEX FK_d4f2db_RaceDescriptor1
ON de.NonStudentEthnicity (FederalRaceDescriptorId ASC);

ALTER TABLE de.NonStudentPersonalIdentificationDocument ADD CONSTRAINT FK_71b461_CountryDescriptor FOREIGN KEY (IssuerCountryDescriptorId)
REFERENCES edfi.CountryDescriptor (CountryDescriptorId)
;

CREATE INDEX FK_71b461_CountryDescriptor
ON de.NonStudentPersonalIdentificationDocument (IssuerCountryDescriptorId ASC);

ALTER TABLE de.NonStudentPersonalIdentificationDocument ADD CONSTRAINT FK_71b461_IdentificationDocumentUseDescriptor FOREIGN KEY (IdentificationDocumentUseDescriptorId)
REFERENCES edfi.IdentificationDocumentUseDescriptor (IdentificationDocumentUseDescriptorId)
;

CREATE INDEX FK_71b461_IdentificationDocumentUseDescriptor
ON de.NonStudentPersonalIdentificationDocument (IdentificationDocumentUseDescriptorId ASC);

ALTER TABLE de.NonStudentPersonalIdentificationDocument ADD CONSTRAINT FK_71b461_NonStudent FOREIGN KEY (LocalEducationAgencyId, NonStudentLocalId)
REFERENCES de.NonStudent (LocalEducationAgencyId, NonStudentLocalId)
ON DELETE CASCADE
;

CREATE INDEX FK_71b461_NonStudent
ON de.NonStudentPersonalIdentificationDocument (LocalEducationAgencyId ASC, NonStudentLocalId ASC);

ALTER TABLE de.NonStudentPersonalIdentificationDocument ADD CONSTRAINT FK_71b461_PersonalInformationVerificationDescriptor FOREIGN KEY (PersonalInformationVerificationDescriptorId)
REFERENCES edfi.PersonalInformationVerificationDescriptor (PersonalInformationVerificationDescriptorId)
;

CREATE INDEX FK_71b461_PersonalInformationVerificationDescriptor
ON de.NonStudentPersonalIdentificationDocument (PersonalInformationVerificationDescriptorId ASC);

ALTER TABLE de.NonViolentTechniqueDescriptor ADD CONSTRAINT FK_75f192_Descriptor FOREIGN KEY (NonViolentTechniqueDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.NotificationMethodDescriptor ADD CONSTRAINT FK_a8cb18_Descriptor FOREIGN KEY (NotificationMethodDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.ParentAddressExtension ADD CONSTRAINT FK_6737b9_ParentAddress FOREIGN KEY (AddressTypeDescriptorId, City, ParentUSI, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
REFERENCES edfi.ParentAddress (AddressTypeDescriptorId, City, ParentUSI, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
ON DELETE CASCADE
;

ALTER TABLE de.ParticipationCodeDescriptor ADD CONSTRAINT FK_425017_Descriptor FOREIGN KEY (ParticipationCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.PersonCategoryDescriptor ADD CONSTRAINT FK_466a50_Descriptor FOREIGN KEY (PersonCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.PersonDisciplineAction ADD CONSTRAINT FK_073b20_DisciplineActionLengthDifferenceReasonDescriptor FOREIGN KEY (DisciplineActionLengthDifferenceReasonDescriptorId)
REFERENCES edfi.DisciplineActionLengthDifferenceReasonDescriptor (DisciplineActionLengthDifferenceReasonDescriptorId)
;

CREATE INDEX FK_073b20_DisciplineActionLengthDifferenceReasonDescriptor
ON de.PersonDisciplineAction (DisciplineActionLengthDifferenceReasonDescriptorId ASC);

ALTER TABLE de.PersonDisciplineAction ADD CONSTRAINT FK_073b20_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId)
REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId)
;

CREATE INDEX FK_073b20_DisciplineIncident
ON de.PersonDisciplineAction (IncidentIdentifier ASC, SchoolId ASC);

ALTER TABLE de.PersonDisciplineAction ADD CONSTRAINT FK_073b20_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId)
REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId)
;

CREATE INDEX FK_073b20_Person
ON de.PersonDisciplineAction (PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.PersonDisciplineAction ADD CONSTRAINT FK_073b20_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_073b20_School
ON de.PersonDisciplineAction (SchoolId ASC);

ALTER TABLE de.PersonDisciplineActionDiscipline ADD CONSTRAINT FK_1ed487_DisciplineDescriptor FOREIGN KEY (DisciplineDescriptorId)
REFERENCES edfi.DisciplineDescriptor (DisciplineDescriptorId)
;

CREATE INDEX FK_1ed487_DisciplineDescriptor
ON de.PersonDisciplineActionDiscipline (DisciplineDescriptorId ASC);

ALTER TABLE de.PersonDisciplineActionDiscipline ADD CONSTRAINT FK_1ed487_PersonDisciplineAction FOREIGN KEY (ActionIdentifier, ActionStartDate, IncidentIdentifier, PersonId, SchoolId, SourceSystemDescriptorId)
REFERENCES de.PersonDisciplineAction (ActionIdentifier, ActionStartDate, IncidentIdentifier, PersonId, SchoolId, SourceSystemDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_1ed487_PersonDisciplineAction
ON de.PersonDisciplineActionDiscipline (ActionIdentifier ASC, ActionStartDate ASC, IncidentIdentifier ASC, PersonId ASC, SchoolId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.PersonDisciplineActionDisciplineDisposition ADD CONSTRAINT FK_5550db_DisciplineDispositionDescriptor FOREIGN KEY (DisciplineDispositionDescriptorId)
REFERENCES de.DisciplineDispositionDescriptor (DisciplineDispositionDescriptorId)
;

CREATE INDEX FK_5550db_DisciplineDispositionDescriptor
ON de.PersonDisciplineActionDisciplineDisposition (DisciplineDispositionDescriptorId ASC);

ALTER TABLE de.PersonDisciplineActionDisciplineDisposition ADD CONSTRAINT FK_5550db_PersonDisciplineAction FOREIGN KEY (ActionIdentifier, ActionStartDate, IncidentIdentifier, PersonId, SchoolId, SourceSystemDescriptorId)
REFERENCES de.PersonDisciplineAction (ActionIdentifier, ActionStartDate, IncidentIdentifier, PersonId, SchoolId, SourceSystemDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_5550db_PersonDisciplineAction
ON de.PersonDisciplineActionDisciplineDisposition (ActionIdentifier ASC, ActionStartDate ASC, IncidentIdentifier ASC, PersonId ASC, SchoolId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.PersonDisciplineIncidentAssociation ADD CONSTRAINT FK_fcc994_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId)
REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId)
;

CREATE INDEX FK_fcc994_DisciplineIncident
ON de.PersonDisciplineIncidentAssociation (IncidentIdentifier ASC, SchoolId ASC);

ALTER TABLE de.PersonDisciplineIncidentAssociation ADD CONSTRAINT FK_fcc994_ParticipationCodeDescriptor FOREIGN KEY (ParticipationCodeDescriptorId)
REFERENCES de.ParticipationCodeDescriptor (ParticipationCodeDescriptorId)
;

CREATE INDEX FK_fcc994_ParticipationCodeDescriptor
ON de.PersonDisciplineIncidentAssociation (ParticipationCodeDescriptorId ASC);

ALTER TABLE de.PersonDisciplineIncidentAssociation ADD CONSTRAINT FK_fcc994_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId)
REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId)
;

CREATE INDEX FK_fcc994_Person
ON de.PersonDisciplineIncidentAssociation (PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.PersonDisciplineIncidentAssociation ADD CONSTRAINT FK_fcc994_VictimCategoryDescriptor FOREIGN KEY (VictimCategoryDescriptorId)
REFERENCES de.VictimCategoryDescriptor (VictimCategoryDescriptorId)
;

CREATE INDEX FK_fcc994_VictimCategoryDescriptor
ON de.PersonDisciplineIncidentAssociation (VictimCategoryDescriptorId ASC);

ALTER TABLE de.PersonDisciplineIncidentAssociationOffenderBehavior ADD CONSTRAINT FK_22d7e4_BehaviorDescriptor FOREIGN KEY (BehaviorDescriptorId)
REFERENCES edfi.BehaviorDescriptor (BehaviorDescriptorId)
;

CREATE INDEX FK_22d7e4_BehaviorDescriptor
ON de.PersonDisciplineIncidentAssociationOffenderBehavior (BehaviorDescriptorId ASC);

ALTER TABLE de.PersonDisciplineIncidentAssociationOffenderBehavior ADD CONSTRAINT FK_22d7e4_PersonDisciplineIncidentAssociation FOREIGN KEY (IncidentIdentifier, ParticipantNumber, ParticipationCodeDescriptorId, PersonId, SchoolId, SourceSystemDescriptorId)
REFERENCES de.PersonDisciplineIncidentAssociation (IncidentIdentifier, ParticipantNumber, ParticipationCodeDescriptorId, PersonId, SchoolId, SourceSystemDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_22d7e4_PersonDisciplineIncidentAssociation
ON de.PersonDisciplineIncidentAssociationOffenderBehavior (IncidentIdentifier ASC, ParticipantNumber ASC, ParticipationCodeDescriptorId ASC, PersonId ASC, SchoolId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.PersonDisciplineIncidentAssociationVictimInjury ADD CONSTRAINT FK_468096_InjuryDescriptor FOREIGN KEY (InjuryDescriptorId)
REFERENCES de.InjuryDescriptor (InjuryDescriptorId)
;

CREATE INDEX FK_468096_InjuryDescriptor
ON de.PersonDisciplineIncidentAssociationVictimInjury (InjuryDescriptorId ASC);

ALTER TABLE de.PersonDisciplineIncidentAssociationVictimInjury ADD CONSTRAINT FK_468096_PersonDisciplineIncidentAssociation FOREIGN KEY (IncidentIdentifier, ParticipantNumber, ParticipationCodeDescriptorId, PersonId, SchoolId, SourceSystemDescriptorId)
REFERENCES de.PersonDisciplineIncidentAssociation (IncidentIdentifier, ParticipantNumber, ParticipationCodeDescriptorId, PersonId, SchoolId, SourceSystemDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_468096_PersonDisciplineIncidentAssociation
ON de.PersonDisciplineIncidentAssociationVictimInjury (IncidentIdentifier ASC, ParticipantNumber ASC, ParticipationCodeDescriptorId ASC, PersonId ASC, SchoolId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.PersonImmunization ADD CONSTRAINT FK_f28934_ImmunizationCodeDescriptor FOREIGN KEY (ImmunizationCodeDescriptorId)
REFERENCES de.ImmunizationCodeDescriptor (ImmunizationCodeDescriptorId)
;

CREATE INDEX FK_f28934_ImmunizationCodeDescriptor
ON de.PersonImmunization (ImmunizationCodeDescriptorId ASC);

ALTER TABLE de.PersonImmunization ADD CONSTRAINT FK_f28934_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId)
REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId)
;

CREATE INDEX FK_f28934_Person
ON de.PersonImmunization (PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.PersonMedicalAlert ADD CONSTRAINT FK_02d654_MedicalAlert FOREIGN KEY (MedicalAlertCategoryDescriptorId)
REFERENCES de.MedicalAlert (MedicalAlertCategoryDescriptorId)
;

CREATE INDEX FK_02d654_MedicalAlert
ON de.PersonMedicalAlert (MedicalAlertCategoryDescriptorId ASC);

ALTER TABLE de.PersonMedicalAlert ADD CONSTRAINT FK_02d654_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId)
REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId)
;

CREATE INDEX FK_02d654_Person
ON de.PersonMedicalAlert (PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.PersonMedicationBoxAssociation ADD CONSTRAINT FK_4ee256_MedicationBox FOREIGN KEY (LocalEducationAgencyId, MedicationBoxId)
REFERENCES de.MedicationBox (LocalEducationAgencyId, MedicationBoxId)
;

CREATE INDEX FK_4ee256_MedicationBox
ON de.PersonMedicationBoxAssociation (LocalEducationAgencyId ASC, MedicationBoxId ASC);

ALTER TABLE de.PersonMedicationBoxAssociation ADD CONSTRAINT FK_4ee256_Person FOREIGN KEY (PersonId, SourceSystemDescriptorId)
REFERENCES edfi.Person (PersonId, SourceSystemDescriptorId)
;

CREATE INDEX FK_4ee256_Person
ON de.PersonMedicationBoxAssociation (PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.PersonMedicationBoxAssociationIssue ADD CONSTRAINT FK_a05436_PersonMedicationBoxAssociation FOREIGN KEY (LocalEducationAgencyId, MedicationBoxId, PersonId, SourceSystemDescriptorId)
REFERENCES de.PersonMedicationBoxAssociation (LocalEducationAgencyId, MedicationBoxId, PersonId, SourceSystemDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_a05436_PersonMedicationBoxAssociation
ON de.PersonMedicationBoxAssociationIssue (LocalEducationAgencyId ASC, MedicationBoxId ASC, PersonId ASC, SourceSystemDescriptorId ASC);

ALTER TABLE de.PostSecondaryDetail ADD CONSTRAINT FK_e1d001_PostSecondaryEventCategoryDescriptor FOREIGN KEY (PostSecondaryEventCategoryDescriptorId)
REFERENCES edfi.PostSecondaryEventCategoryDescriptor (PostSecondaryEventCategoryDescriptorId)
;

CREATE INDEX FK_e1d001_PostSecondaryEventCategoryDescriptor
ON de.PostSecondaryDetail (PostSecondaryEventCategoryDescriptorId ASC);

ALTER TABLE de.PostSecondaryDetail ADD CONSTRAINT FK_e1d001_ReasonNotApplied4PlusCollegeDescriptor FOREIGN KEY (ReasonNotApplied4PlusCollegeDescriptorId)
REFERENCES de.ReasonNotApplied4PlusCollegeDescriptor (ReasonNotApplied4PlusCollegeDescriptorId)
;

CREATE INDEX FK_e1d001_ReasonNotApplied4PlusCollegeDescriptor
ON de.PostSecondaryDetail (ReasonNotApplied4PlusCollegeDescriptorId ASC);

ALTER TABLE de.PostSecondaryDetail ADD CONSTRAINT FK_e1d001_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_e1d001_School
ON de.PostSecondaryDetail (SchoolId ASC);

ALTER TABLE de.PostSecondaryDetail ADD CONSTRAINT FK_e1d001_SchoolYearType FOREIGN KEY (SchoolYear)
REFERENCES edfi.SchoolYearType (SchoolYear)
;

CREATE INDEX FK_e1d001_SchoolYearType
ON de.PostSecondaryDetail (SchoolYear ASC);

ALTER TABLE de.PostSecondaryDetail ADD CONSTRAINT FK_e1d001_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_e1d001_Student
ON de.PostSecondaryDetail (StudentUSI ASC);

ALTER TABLE de.PostSecondaryDetailInstitution ADD CONSTRAINT FK_619adc_AcceptanceStatusDescriptor FOREIGN KEY (AcceptanceStatusDescriptorId)
REFERENCES de.AcceptanceStatusDescriptor (AcceptanceStatusDescriptorId)
;

CREATE INDEX FK_619adc_AcceptanceStatusDescriptor
ON de.PostSecondaryDetailInstitution (AcceptanceStatusDescriptorId ASC);

ALTER TABLE de.PostSecondaryDetailInstitution ADD CONSTRAINT FK_619adc_PostSecondaryDetail FOREIGN KEY (PostSecondaryEventCategoryDescriptorId, SchoolId, SchoolYear, StudentUSI)
REFERENCES de.PostSecondaryDetail (PostSecondaryEventCategoryDescriptorId, SchoolId, SchoolYear, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_619adc_PostSecondaryDetail
ON de.PostSecondaryDetailInstitution (PostSecondaryEventCategoryDescriptorId ASC, SchoolId ASC, SchoolYear ASC, StudentUSI ASC);

ALTER TABLE de.PostSecondaryDetailInstitution ADD CONSTRAINT FK_619adc_PostSecondaryInstitution FOREIGN KEY (PostSecondaryInstitutionId)
REFERENCES edfi.PostSecondaryInstitution (PostSecondaryInstitutionId)
;

CREATE INDEX FK_619adc_PostSecondaryInstitution
ON de.PostSecondaryDetailInstitution (PostSecondaryInstitutionId ASC);

ALTER TABLE de.ReasonForLateIEPDescriptor ADD CONSTRAINT FK_982118_Descriptor FOREIGN KEY (ReasonForLateIEPDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.ReasonNotApplied4PlusCollegeDescriptor ADD CONSTRAINT FK_855ef3_Descriptor FOREIGN KEY (ReasonNotApplied4PlusCollegeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.ReferralDescriptor ADD CONSTRAINT FK_6c8964_Descriptor FOREIGN KEY (ReferralDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.RestraintEventCategoryDescriptor ADD CONSTRAINT FK_e245f7_Descriptor FOREIGN KEY (RestraintEventCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_DeescalationTechniqueDescriptor FOREIGN KEY (DeescalationTechniqueDescriptorId)
REFERENCES de.DeescalationTechniqueDescriptor (DeescalationTechniqueDescriptorId)
;

CREATE INDEX FK_b9f994_DeescalationTechniqueDescriptor
ON de.RestraintSeclusion (DeescalationTechniqueDescriptorId ASC);

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_IncidentLocationDescriptor FOREIGN KEY (IncidentLocationDescriptorId)
REFERENCES edfi.IncidentLocationDescriptor (IncidentLocationDescriptorId)
;

CREATE INDEX FK_b9f994_IncidentLocationDescriptor
ON de.RestraintSeclusion (IncidentLocationDescriptorId ASC);

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_NonViolentTechniqueDescriptor FOREIGN KEY (NonViolentTechniqueDescriptorId)
REFERENCES de.NonViolentTechniqueDescriptor (NonViolentTechniqueDescriptorId)
;

CREATE INDEX FK_b9f994_NonViolentTechniqueDescriptor
ON de.RestraintSeclusion (NonViolentTechniqueDescriptorId ASC);

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_NotificationMethodDescriptor FOREIGN KEY (NotificationMethodDescriptorId)
REFERENCES de.NotificationMethodDescriptor (NotificationMethodDescriptorId)
;

CREATE INDEX FK_b9f994_NotificationMethodDescriptor
ON de.RestraintSeclusion (NotificationMethodDescriptorId ASC);

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_RestraintEventCategoryDescriptor FOREIGN KEY (RestraintEventCategoryDescriptorId)
REFERENCES de.RestraintEventCategoryDescriptor (RestraintEventCategoryDescriptorId)
;

CREATE INDEX FK_b9f994_RestraintEventCategoryDescriptor
ON de.RestraintSeclusion (RestraintEventCategoryDescriptorId ASC);

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_RestraintEventReasonDescriptor FOREIGN KEY (RestraintEventReasonDescriptorId)
REFERENCES edfi.RestraintEventReasonDescriptor (RestraintEventReasonDescriptorId)
;

CREATE INDEX FK_b9f994_RestraintEventReasonDescriptor
ON de.RestraintSeclusion (RestraintEventReasonDescriptorId ASC);

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_b9f994_School
ON de.RestraintSeclusion (SchoolId ASC);

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_b9f994_Student
ON de.RestraintSeclusion (StudentUSI ASC);

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_SupportPlanChangeDescriptor FOREIGN KEY (SupportPlanChangeDescriptorId)
REFERENCES de.SupportPlanChangeDescriptor (SupportPlanChangeDescriptorId)
;

CREATE INDEX FK_b9f994_SupportPlanChangeDescriptor
ON de.RestraintSeclusion (SupportPlanChangeDescriptorId ASC);

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_TreatmentDescriptor FOREIGN KEY (StaffTreatmentDescriptorId)
REFERENCES de.TreatmentDescriptor (TreatmentDescriptorId)
;

CREATE INDEX FK_b9f994_TreatmentDescriptor
ON de.RestraintSeclusion (StaffTreatmentDescriptorId ASC);

ALTER TABLE de.RestraintSeclusion ADD CONSTRAINT FK_b9f994_TreatmentDescriptor1 FOREIGN KEY (StudentTreatmentDescriptorId)
REFERENCES de.TreatmentDescriptor (TreatmentDescriptorId)
;

CREATE INDEX FK_b9f994_TreatmentDescriptor1
ON de.RestraintSeclusion (StudentTreatmentDescriptorId ASC);

ALTER TABLE de.RestraintSeclusionStaffProvidingRestraint ADD CONSTRAINT FK_183c8d_RestraintSeclusion FOREIGN KEY (EventDate, EventTime, RestraintEventCategoryDescriptorId, RestraintEventReasonDescriptorId, SchoolId, StudentUSI)
REFERENCES de.RestraintSeclusion (EventDate, EventTime, RestraintEventCategoryDescriptorId, RestraintEventReasonDescriptorId, SchoolId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_183c8d_RestraintSeclusion
ON de.RestraintSeclusionStaffProvidingRestraint (EventDate ASC, EventTime ASC, RestraintEventCategoryDescriptorId ASC, RestraintEventReasonDescriptorId ASC, SchoolId ASC, StudentUSI ASC);

ALTER TABLE de.SchoolExtension ADD CONSTRAINT FK_2199be_AttendanceConfigurationCategoryDescriptor FOREIGN KEY (AttendanceConfigurationCategoryDescriptorId)
REFERENCES de.AttendanceConfigurationCategoryDescriptor (AttendanceConfigurationCategoryDescriptorId)
;

CREATE INDEX FK_2199be_AttendanceConfigurationCategoryDescriptor
ON de.SchoolExtension (AttendanceConfigurationCategoryDescriptorId ASC);

ALTER TABLE de.SchoolExtension ADD CONSTRAINT FK_2199be_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
ON DELETE CASCADE
;

ALTER TABLE de.SectionExtension ADD CONSTRAINT FK_86dfb3_Section FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
REFERENCES edfi.Section (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE de.SectionMarkingPeriod ADD CONSTRAINT FK_947832_GradingPeriodDescriptor FOREIGN KEY (GradingPeriodDescriptorId)
REFERENCES edfi.GradingPeriodDescriptor (GradingPeriodDescriptorId)
;

CREATE INDEX FK_947832_GradingPeriodDescriptor
ON de.SectionMarkingPeriod (GradingPeriodDescriptorId ASC);

ALTER TABLE de.SectionMarkingPeriod ADD CONSTRAINT FK_947832_Section FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
REFERENCES edfi.Section (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
ON DELETE CASCADE
ON UPDATE CASCADE
;

CREATE INDEX FK_947832_Section
ON de.SectionMarkingPeriod (LocalCourseCode ASC, SchoolId ASC, SchoolYear ASC, SectionIdentifier ASC, SessionName ASC);

ALTER TABLE de.SectionSubjectArea ADD CONSTRAINT FK_ae1566_AcademicSubjectDescriptor FOREIGN KEY (AcademicSubjectDescriptorId)
REFERENCES edfi.AcademicSubjectDescriptor (AcademicSubjectDescriptorId)
;

CREATE INDEX FK_ae1566_AcademicSubjectDescriptor
ON de.SectionSubjectArea (AcademicSubjectDescriptorId ASC);

ALTER TABLE de.SectionSubjectArea ADD CONSTRAINT FK_ae1566_Section FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
REFERENCES edfi.Section (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
ON DELETE CASCADE
ON UPDATE CASCADE
;

CREATE INDEX FK_ae1566_Section
ON de.SectionSubjectArea (LocalCourseCode ASC, SchoolId ASC, SchoolYear ASC, SectionIdentifier ASC, SessionName ASC);

ALTER TABLE de.ServiceStatusDescriptor ADD CONSTRAINT FK_692c96_Descriptor FOREIGN KEY (ServiceStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.StaffEducationOrganizationAssignmentAssociationExtension ADD CONSTRAINT FK_6ea356_StaffEducationOrganizationAssignmentAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationAssignmentAssociation (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StaffProgramAssociationExtension ADD CONSTRAINT FK_607dd8_LanguageDescriptor FOREIGN KEY (ImmersionLanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_607dd8_LanguageDescriptor
ON de.StaffProgramAssociationExtension (ImmersionLanguageDescriptorId ASC);

ALTER TABLE de.StaffProgramAssociationExtension ADD CONSTRAINT FK_607dd8_StaffProgramAssociation FOREIGN KEY (BeginDate, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StaffUSI)
REFERENCES edfi.StaffProgramAssociation (BeginDate, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StaffRoleDescriptor ADD CONSTRAINT FK_41068b_Descriptor FOREIGN KEY (StaffRoleDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.Student504ProgramAssociation ADD CONSTRAINT FK_aa1f35_DisabilityDescriptor FOREIGN KEY (DisabilityDescriptorId)
REFERENCES edfi.DisabilityDescriptor (DisabilityDescriptorId)
;

CREATE INDEX FK_aa1f35_DisabilityDescriptor
ON de.Student504ProgramAssociation (DisabilityDescriptorId ASC);

ALTER TABLE de.Student504ProgramAssociation ADD CONSTRAINT FK_aa1f35_GeneralStudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentCTEProgramAssociationCTEProgramExtension ADD CONSTRAINT FK_953dba_CertificationDescriptor FOREIGN KEY (FirstCertificationDescriptorId)
REFERENCES de.CertificationDescriptor (CertificationDescriptorId)
;

CREATE INDEX FK_953dba_CertificationDescriptor
ON de.StudentCTEProgramAssociationCTEProgramExtension (FirstCertificationDescriptorId ASC);

ALTER TABLE de.StudentCTEProgramAssociationCTEProgramExtension ADD CONSTRAINT FK_953dba_CertificationDescriptor1 FOREIGN KEY (SecondCertificationDescriptorId)
REFERENCES de.CertificationDescriptor (CertificationDescriptorId)
;

CREATE INDEX FK_953dba_CertificationDescriptor1
ON de.StudentCTEProgramAssociationCTEProgramExtension (SecondCertificationDescriptorId ASC);

ALTER TABLE de.StudentCTEProgramAssociationCTEProgramExtension ADD CONSTRAINT FK_953dba_CertificationDescriptor2 FOREIGN KEY (ThirdCertificationDescriptorId)
REFERENCES de.CertificationDescriptor (CertificationDescriptorId)
;

CREATE INDEX FK_953dba_CertificationDescriptor2
ON de.StudentCTEProgramAssociationCTEProgramExtension (ThirdCertificationDescriptorId ASC);

ALTER TABLE de.StudentCTEProgramAssociationCTEProgramExtension ADD CONSTRAINT FK_953dba_StudentCTEProgramAssociationCTEProgram FOREIGN KEY (BeginDate, CareerPathwayDescriptorId, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentCTEProgramAssociationCTEProgram (BeginDate, CareerPathwayDescriptorId, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentEarlyChildhoodProgramAssociation ADD CONSTRAINT FK_8f13fc_GeneralStudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentEarlyChildhoodProgramAssociation ADD CONSTRAINT FK_8f13fc_ReasonForLateIEPDescriptor FOREIGN KEY (ReasonForLateIEPDescriptorId)
REFERENCES de.ReasonForLateIEPDescriptor (ReasonForLateIEPDescriptorId)
;

CREATE INDEX FK_8f13fc_ReasonForLateIEPDescriptor
ON de.StudentEarlyChildhoodProgramAssociation (ReasonForLateIEPDescriptorId ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationAddressExtension ADD CONSTRAINT FK_c905b3_StudentEducationOrganizationAssociationAddress FOREIGN KEY (AddressTypeDescriptorId, City, EducationOrganizationId, PostalCode, StateAbbreviationDescriptorId, StreetNumberName, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociationAddress (AddressTypeDescriptorId, City, EducationOrganizationId, PostalCode, StateAbbreviationDescriptorId, StreetNumberName, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_ChoiceCategoryDescriptor FOREIGN KEY (ChoiceCategoryDescriptorId)
REFERENCES de.ChoiceCategoryDescriptor (ChoiceCategoryDescriptorId)
;

CREATE INDEX FK_2c2930_ChoiceCategoryDescriptor
ON de.StudentEducationOrganizationAssociationExtension (ChoiceCategoryDescriptorId ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_FerpaOptOutDescriptor FOREIGN KEY (FerpaOptOutDescriptorId)
REFERENCES de.FerpaOptOutDescriptor (FerpaOptOutDescriptorId)
;

CREATE INDEX FK_2c2930_FerpaOptOutDescriptor
ON de.StudentEducationOrganizationAssociationExtension (FerpaOptOutDescriptorId ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_SchoolYearType FOREIGN KEY (SchoolYear)
REFERENCES edfi.SchoolYearType (SchoolYear)
;

CREATE INDEX FK_2c2930_SchoolYearType
ON de.StudentEducationOrganizationAssociationExtension (SchoolYear ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentEducationOrganizationAssociationMultiliteracy ADD CONSTRAINT FK_29dbdc_CertificateCategoryDescriptor FOREIGN KEY (CertificateCategoryDescriptorId)
REFERENCES de.CertificateCategoryDescriptor (CertificateCategoryDescriptorId)
;

CREATE INDEX FK_29dbdc_CertificateCategoryDescriptor
ON de.StudentEducationOrganizationAssociationMultiliteracy (CertificateCategoryDescriptorId ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationMultiliteracy ADD CONSTRAINT FK_29dbdc_LanguageDescriptor FOREIGN KEY (LanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_29dbdc_LanguageDescriptor
ON de.StudentEducationOrganizationAssociationMultiliteracy (LanguageDescriptorId ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationMultiliteracy ADD CONSTRAINT FK_29dbdc_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_29dbdc_StudentEducationOrganizationAssociation
ON de.StudentEducationOrganizationAssociationMultiliteracy (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationScholarship ADD CONSTRAINT FK_9478b3_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_9478b3_StudentEducationOrganizationAssociation
ON de.StudentEducationOrganizationAssociationScholarship (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE de.StudentEducationOrganizationResponsibilityAssociationTransfer ADD CONSTRAINT FK_fa0525_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_fa0525_GradeLevelDescriptor
ON de.StudentEducationOrganizationResponsibilityAssociationTransfer (GradeLevelDescriptorId ASC);

ALTER TABLE de.StudentEducationOrganizationResponsibilityAssociationTransfer ADD CONSTRAINT FK_fa0525_StudentEducationOrganizationResponsibilityAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ResponsibilityDescriptorId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationResponsibilityAssociation (BeginDate, EducationOrganizationId, ResponsibilityDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_fa0525_StudentEducationOrganizationResponsibilityAssociation
ON de.StudentEducationOrganizationResponsibilityAssociationTransfer (BeginDate ASC, EducationOrganizationId ASC, ResponsibilityDescriptorId ASC, StudentUSI ASC);

ALTER TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion ADD CONSTRAINT FK_0f3e4a_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_0f3e4a_GradeLevelDescriptor
ON de.StudentLanguageInstructionProgramAssociationLanguageImmersion (GradeLevelDescriptorId ASC);

ALTER TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion ADD CONSTRAINT FK_0f3e4a_LanguageDescriptor FOREIGN KEY (ImmersionLanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_0f3e4a_LanguageDescriptor
ON de.StudentLanguageInstructionProgramAssociationLanguageImmersion (ImmersionLanguageDescriptorId ASC);

ALTER TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion ADD CONSTRAINT FK_0f3e4a_SchoolYearType FOREIGN KEY (SchoolYear)
REFERENCES edfi.SchoolYearType (SchoolYear)
;

CREATE INDEX FK_0f3e4a_SchoolYearType
ON de.StudentLanguageInstructionProgramAssociationLanguageImmersion (SchoolYear ASC);

ALTER TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion ADD CONSTRAINT FK_0f3e4a_StudentLanguageInstructionProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentLanguageInstructionProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_0f3e4a_StudentLanguageInstructionProgramAssociation
ON de.StudentLanguageInstructionProgramAssociationLanguageImmersion (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE de.StudentParentAssociationExtension ADD CONSTRAINT FK_676aa0_ContactTypeDescriptor FOREIGN KEY (ContactTypeDescriptorId)
REFERENCES edfi.ContactTypeDescriptor (ContactTypeDescriptorId)
;

CREATE INDEX FK_676aa0_ContactTypeDescriptor
ON de.StudentParentAssociationExtension (ContactTypeDescriptorId ASC);

ALTER TABLE de.StudentParentAssociationExtension ADD CONSTRAINT FK_676aa0_StudentParentAssociation FOREIGN KEY (ParentUSI, StudentUSI)
REFERENCES edfi.StudentParentAssociation (ParentUSI, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_EnrollmentTypeDescriptor FOREIGN KEY (EnrollmentTypeDescriptorId)
REFERENCES de.EnrollmentTypeDescriptor (EnrollmentTypeDescriptorId)
;

CREATE INDEX FK_880cb1_EnrollmentTypeDescriptor
ON de.StudentSchoolAssociationExtension (EnrollmentTypeDescriptorId ASC);

ALTER TABLE de.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_StudentSchoolAssociation FOREIGN KEY (EntryDate, SchoolId, StudentUSI)
REFERENCES edfi.StudentSchoolAssociation (EntryDate, SchoolId, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE de.StudentSchoolAttendanceEventExtension ADD CONSTRAINT FK_85b337_StudentSchoolAttendanceEvent FOREIGN KEY (AttendanceEventCategoryDescriptorId, EventDate, SchoolId, SchoolYear, SessionName, StudentUSI)
REFERENCES edfi.StudentSchoolAttendanceEvent (AttendanceEventCategoryDescriptorId, EventDate, SchoolId, SchoolYear, SessionName, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE de.StudentSectionClassPeriodAttendanceEvent ADD CONSTRAINT FK_86ec01_AttendanceEventCategoryDescriptor FOREIGN KEY (AttendanceEventCategoryDescriptorId)
REFERENCES edfi.AttendanceEventCategoryDescriptor (AttendanceEventCategoryDescriptorId)
;

CREATE INDEX FK_86ec01_AttendanceEventCategoryDescriptor
ON de.StudentSectionClassPeriodAttendanceEvent (AttendanceEventCategoryDescriptorId ASC);

ALTER TABLE de.StudentSectionClassPeriodAttendanceEvent ADD CONSTRAINT FK_86ec01_ClassPeriod FOREIGN KEY (ClassPeriodName, SchoolId)
REFERENCES edfi.ClassPeriod (ClassPeriodName, SchoolId)
ON UPDATE CASCADE
;

CREATE INDEX FK_86ec01_ClassPeriod
ON de.StudentSectionClassPeriodAttendanceEvent (ClassPeriodName ASC, SchoolId ASC);

ALTER TABLE de.StudentSectionClassPeriodAttendanceEvent ADD CONSTRAINT FK_86ec01_EducationalEnvironmentDescriptor FOREIGN KEY (EducationalEnvironmentDescriptorId)
REFERENCES edfi.EducationalEnvironmentDescriptor (EducationalEnvironmentDescriptorId)
;

CREATE INDEX FK_86ec01_EducationalEnvironmentDescriptor
ON de.StudentSectionClassPeriodAttendanceEvent (EducationalEnvironmentDescriptorId ASC);

ALTER TABLE de.StudentSectionClassPeriodAttendanceEvent ADD CONSTRAINT FK_86ec01_Section FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
REFERENCES edfi.Section (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
ON UPDATE CASCADE
;

CREATE INDEX FK_86ec01_Section
ON de.StudentSectionClassPeriodAttendanceEvent (LocalCourseCode ASC, SchoolId ASC, SchoolYear ASC, SectionIdentifier ASC, SessionName ASC);

ALTER TABLE de.StudentSectionClassPeriodAttendanceEvent ADD CONSTRAINT FK_86ec01_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_86ec01_Student
ON de.StudentSectionClassPeriodAttendanceEvent (StudentUSI ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_DiplomaCertificateCategoryDescriptor FOREIGN KEY (DiplomaCertificateCategoryDescriptorId)
REFERENCES de.DiplomaCertificateCategoryDescriptor (DiplomaCertificateCategoryDescriptorId)
;

CREATE INDEX FK_3da84f_DiplomaCertificateCategoryDescriptor
ON de.StudentSpecialEducationProgramAssociationExtension (DiplomaCertificateCategoryDescriptorId ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_FundingNeedsCategoryDescriptor FOREIGN KEY (FundingNeedsCategoryDescriptorId)
REFERENCES de.FundingNeedsCategoryDescriptor (FundingNeedsCategoryDescriptorId)
;

CREATE INDEX FK_3da84f_FundingNeedsCategoryDescriptor
ON de.StudentSpecialEducationProgramAssociationExtension (FundingNeedsCategoryDescriptorId ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_School FOREIGN KEY (PrivateSchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_3da84f_School
ON de.StudentSpecialEducationProgramAssociationExtension (PrivateSchoolId ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_ServiceStatusDescriptor FOREIGN KEY (ServiceStatusDescriptorId)
REFERENCES de.ServiceStatusDescriptor (ServiceStatusDescriptorId)
;

CREATE INDEX FK_3da84f_ServiceStatusDescriptor
ON de.StudentSpecialEducationProgramAssociationExtension (ServiceStatusDescriptorId ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_StudentSpecialEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentTransportation ADD CONSTRAINT FK_68afad_LocalEducationAgency FOREIGN KEY (LocalEducationAgencyId)
REFERENCES edfi.LocalEducationAgency (LocalEducationAgencyId)
;

CREATE INDEX FK_68afad_LocalEducationAgency
ON de.StudentTransportation (LocalEducationAgencyId ASC);

ALTER TABLE de.StudentTransportation ADD CONSTRAINT FK_68afad_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_68afad_Student
ON de.StudentTransportation (StudentUSI ASC);

ALTER TABLE de.StudentTransportation ADD CONSTRAINT FK_68afad_TravelDayOfWeekDescriptor FOREIGN KEY (TravelDayOfWeekDescriptorId)
REFERENCES de.TravelDayOfWeekDescriptor (TravelDayOfWeekDescriptorId)
;

CREATE INDEX FK_68afad_TravelDayOfWeekDescriptor
ON de.StudentTransportation (TravelDayOfWeekDescriptorId ASC);

ALTER TABLE de.StudentTransportation ADD CONSTRAINT FK_68afad_TravelDirectionDescriptor FOREIGN KEY (TravelDirectionDescriptorId)
REFERENCES de.TravelDirectionDescriptor (TravelDirectionDescriptorId)
;

CREATE INDEX FK_68afad_TravelDirectionDescriptor
ON de.StudentTransportation (TravelDirectionDescriptorId ASC);

ALTER TABLE de.SupportPlanChangeDescriptor ADD CONSTRAINT FK_7505f3_Descriptor FOREIGN KEY (SupportPlanChangeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.TravelDayOfWeekDescriptor ADD CONSTRAINT FK_d0741b_Descriptor FOREIGN KEY (TravelDayOfWeekDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.TravelDirectionDescriptor ADD CONSTRAINT FK_6a3bc0_Descriptor FOREIGN KEY (TravelDirectionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.TreatmentDescriptor ADD CONSTRAINT FK_c8e303_Descriptor FOREIGN KEY (TreatmentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.VictimCategoryDescriptor ADD CONSTRAINT FK_b221f2_Descriptor FOREIGN KEY (VictimCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;


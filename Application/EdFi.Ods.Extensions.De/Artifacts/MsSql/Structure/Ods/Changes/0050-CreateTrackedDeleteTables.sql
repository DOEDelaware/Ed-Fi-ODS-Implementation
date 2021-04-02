CREATE TABLE [tracked_deletes_de].[APExamCodeDescriptor]
(
       APExamCodeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_APExamCodeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[AcceptanceStatusDescriptor]
(
       AcceptanceStatusDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_AcceptanceStatusDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[AllegedBullyingVictim]
(
       AllegedIncidentDate [DATE] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_AllegedBullyingVictim PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[AttendanceConfigurationCategoryDescriptor]
(
       AttendanceConfigurationCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_AttendanceConfigurationCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[BullyingCategoryDescriptor]
(
       BullyingCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_BullyingCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[CIPCourse]
(
       CIPCode [NVARCHAR](120) NOT NULL,
       LocalEducationAgencyId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CIPCourse PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[CertificateCategoryDescriptor]
(
       CertificateCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CertificateCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[CertificationDescriptor]
(
       CertificationDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CertificationDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[ChoiceCategoryDescriptor]
(
       ChoiceCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ChoiceCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[CoreSubjectDescriptor]
(
       CoreSubjectDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CoreSubjectDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[CycleDescriptor]
(
       CycleDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CycleDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[DeescalationTechniqueDescriptor]
(
       DeescalationTechniqueDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_DeescalationTechniqueDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[DiplomaCertificateCategoryDescriptor]
(
       DiplomaCertificateCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_DiplomaCertificateCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[DisciplineDispositionDescriptor]
(
       DisciplineDispositionDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_DisciplineDispositionDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[DisciplineIncidentCode]
(
       BehaviorDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_DisciplineIncidentCode PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[EnrollmentTypeDescriptor]
(
       EnrollmentTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_EnrollmentTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[FerpaOptOutDescriptor]
(
       FerpaOptOutDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FerpaOptOutDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[FollowupCategoryDescriptor]
(
       FollowupCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FollowupCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[FundingNeedsCategoryDescriptor]
(
       FundingNeedsCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FundingNeedsCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[GradeTypeDetail]
(
       GradeTypeDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_GradeTypeDetail PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[GradeTypeWhenTakenDescriptor]
(
       GradeTypeWhenTakenDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_GradeTypeWhenTakenDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[ImmunizationCodeDescriptor]
(
       ImmunizationCodeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ImmunizationCodeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[IncidentRelatedToDescriptor]
(
       IncidentRelatedToDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_IncidentRelatedToDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[InjuryDescriptor]
(
       InjuryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_InjuryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[LevelDetail]
(
       LevelNumber [INT] NOT NULL,
       Mark [NVARCHAR](3) NOT NULL,
       SchoolId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_LevelDetail PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[LocationDescriptor]
(
       LocationDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_LocationDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[MedicalAlert]
(
       MedicalAlertCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MedicalAlert PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[MedicalAlertCategoryDescriptor]
(
       MedicalAlertCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MedicalAlertCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[MedicalDispositionDescriptor]
(
       MedicalDispositionDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MedicalDispositionDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[MedicalOfficeVisit]
(
       OfficeInDate [DATETIME2](7) NOT NULL,
       PersonId [NVARCHAR](32) NOT NULL,
       SourceSystemDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MedicalOfficeVisit PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[MedicalReferralFollowUp]
(
       FollowupCategoryDescriptorId [INT] NOT NULL,
       MedicalTestCategoryDescriptorId [INT] NOT NULL,
       PersonId [NVARCHAR](32) NOT NULL,
       SourceSystemDescriptorId [INT] NOT NULL,
       TestDate [DATETIME2](7) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MedicalReferralFollowUp PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[MedicalScreening]
(
       MedicalTestCategoryDescriptorId [INT] NOT NULL,
       PersonId [NVARCHAR](32) NOT NULL,
       SourceSystemDescriptorId [INT] NOT NULL,
       TestDate [DATETIME2](7) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MedicalScreening PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[MedicalTestCategoryDescriptor]
(
       MedicalTestCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MedicalTestCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[MedicalTreatmentCodeDescriptor]
(
       MedicalTreatmentCodeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MedicalTreatmentCodeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[MedicalVisitReasonDescriptor]
(
       MedicalVisitReasonDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MedicalVisitReasonDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[MedicationBox]
(
       LocalEducationAgencyId [INT] NOT NULL,
       MedicationBoxId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MedicationBox PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[NonStudent]
(
       LocalEducationAgencyId [INT] NOT NULL,
       NonStudentLocalId [NVARCHAR](60) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_NonStudent PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[NonViolentTechniqueDescriptor]
(
       NonViolentTechniqueDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_NonViolentTechniqueDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[NotificationMethodDescriptor]
(
       NotificationMethodDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_NotificationMethodDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[ParticipationCodeDescriptor]
(
       ParticipationCodeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ParticipationCodeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[PersonCategoryDescriptor]
(
       PersonCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PersonCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[PersonDisciplineAction]
(
       ActionIdentifier [INT] NOT NULL,
       ActionStartDate [DATE] NOT NULL,
       IncidentIdentifier [NVARCHAR](20) NOT NULL,
       PersonId [NVARCHAR](32) NOT NULL,
       SchoolId [INT] NOT NULL,
       SourceSystemDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PersonDisciplineAction PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[PersonDisciplineIncidentAssociation]
(
       IncidentIdentifier [NVARCHAR](20) NOT NULL,
       ParticipantNumber [INT] NOT NULL,
       ParticipationCodeDescriptorId [INT] NOT NULL,
       PersonId [NVARCHAR](32) NOT NULL,
       SchoolId [INT] NOT NULL,
       SourceSystemDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PersonDisciplineIncidentAssociation PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[PersonImmunization]
(
       ImmunizationCodeDescriptorId [INT] NOT NULL,
       ImmunizationDate [DATE] NOT NULL,
       PersonId [NVARCHAR](32) NOT NULL,
       SourceSystemDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PersonImmunization PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[PersonMedicalAlert]
(
       MedicalAlertCategoryDescriptorId [INT] NOT NULL,
       StartDate [DATE] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PersonMedicalAlert PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[PersonMedicationBoxAssociation]
(
       LocalEducationAgencyId [INT] NOT NULL,
       MedicationBoxId [INT] NOT NULL,
       PersonId [NVARCHAR](32) NOT NULL,
       SourceSystemDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PersonMedicationBoxAssociation PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[PostSecondaryDetail]
(
       PostSecondaryEventCategoryDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       SchoolYear [SMALLINT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PostSecondaryDetail PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[ReasonForLateIEPDescriptor]
(
       ReasonForLateIEPDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ReasonForLateIEPDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[ReasonNotApplied4PlusCollegeDescriptor]
(
       ReasonNotApplied4PlusCollegeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ReasonNotApplied4PlusCollegeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[ReferralDescriptor]
(
       ReferralDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ReferralDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[RestraintEventCategoryDescriptor]
(
       RestraintEventCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_RestraintEventCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[RestraintSeclusion]
(
       EventDate [DATE] NOT NULL,
       EventTime [TIME](7) NOT NULL,
       RestraintEventCategoryDescriptorId [INT] NOT NULL,
       RestraintEventReasonDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_RestraintSeclusion PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[ServiceStatusDescriptor]
(
       ServiceStatusDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ServiceStatusDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[StaffRoleDescriptor]
(
       StaffRoleDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_StaffRoleDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[Student504ProgramAssociation]
(
       BeginDate [DATE] NOT NULL,
       EducationOrganizationId [INT] NOT NULL,
       ProgramEducationOrganizationId [INT] NOT NULL,
       ProgramName [NVARCHAR](60) NOT NULL,
       ProgramTypeDescriptorId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_Student504ProgramAssociation PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[StudentEarlyChildhoodProgramAssociation]
(
       BeginDate [DATE] NOT NULL,
       EducationOrganizationId [INT] NOT NULL,
       ProgramEducationOrganizationId [INT] NOT NULL,
       ProgramName [NVARCHAR](60) NOT NULL,
       ProgramTypeDescriptorId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_StudentEarlyChildhoodProgramAssociation PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[StudentSectionClassPeriodAttendanceEvent]
(
       AttendanceEventCategoryDescriptorId [INT] NOT NULL,
       ClassPeriodName [NVARCHAR](60) NOT NULL,
       EventDate [DATE] NOT NULL,
       LocalCourseCode [NVARCHAR](60) NOT NULL,
       SchoolId [INT] NOT NULL,
       SchoolYear [SMALLINT] NOT NULL,
       SectionIdentifier [NVARCHAR](255) NOT NULL,
       SessionName [NVARCHAR](60) NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_StudentSectionClassPeriodAttendanceEvent PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[StudentTransportation]
(
       LocalEducationAgencyId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       TravelDayOfWeekDescriptorId [INT] NOT NULL,
       TravelDirectionDescriptorId [INT] NOT NULL,
       TravelSegment [INT] NOT NULL,
       TravelTrip [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_StudentTransportation PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[SupportPlanChangeDescriptor]
(
       SupportPlanChangeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_SupportPlanChangeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[TravelDayOfWeekDescriptor]
(
       TravelDayOfWeekDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_TravelDayOfWeekDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[TravelDirectionDescriptor]
(
       TravelDirectionDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_TravelDirectionDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[TreatmentDescriptor]
(
       TreatmentDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_TreatmentDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)

CREATE TABLE [tracked_deletes_de].[VictimCategoryDescriptor]
(
       VictimCategoryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_VictimCategoryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)


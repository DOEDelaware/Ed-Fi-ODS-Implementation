CREATE TABLE tracked_deletes_de.APExamCodeDescriptor
(
       APExamCodeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT APExamCodeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.AcceptanceStatusDescriptor
(
       AcceptanceStatusDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT AcceptanceStatusDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.AllegedBullyingVictim
(
       AllegedIncidentDate DATE NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT AllegedBullyingVictim_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.AttendanceConfigurationCategoryDescriptor
(
       AttendanceConfigurationCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT AttendanceConfigurationCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.BullyingCategoryDescriptor
(
       BullyingCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT BullyingCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.CIPCourse
(
       CIPCode VARCHAR(120) NOT NULL,
       LocalEducationAgencyId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CIPCourse_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.CertificateCategoryDescriptor
(
       CertificateCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CertificateCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.CertificationDescriptor
(
       CertificationDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CertificationDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.ChoiceCategoryDescriptor
(
       ChoiceCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ChoiceCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.CoreSubjectDescriptor
(
       CoreSubjectDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CoreSubjectDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.CycleDescriptor
(
       CycleDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CycleDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.DeescalationTechniqueDescriptor
(
       DeescalationTechniqueDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT DeescalationTechniqueDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.DiplomaCertificateCategoryDescriptor
(
       DiplomaCertificateCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT DiplomaCertificateCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.DisciplineDispositionDescriptor
(
       DisciplineDispositionDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT DisciplineDispositionDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.DisciplineIncidentCode
(
       BehaviorDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT DisciplineIncidentCode_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.EnrollmentTypeDescriptor
(
       EnrollmentTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT EnrollmentTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.FerpaOptOutDescriptor
(
       FerpaOptOutDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FerpaOptOutDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.FollowupCategoryDescriptor
(
       FollowupCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FollowupCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.FundingNeedsCategoryDescriptor
(
       FundingNeedsCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FundingNeedsCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.GradeTypeDetail
(
       GradeTypeDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT GradeTypeDetail_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.GradeTypeWhenTakenDescriptor
(
       GradeTypeWhenTakenDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT GradeTypeWhenTakenDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.ImmunizationCodeDescriptor
(
       ImmunizationCodeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ImmunizationCodeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.IncidentRelatedToDescriptor
(
       IncidentRelatedToDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT IncidentRelatedToDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.InjuryDescriptor
(
       InjuryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT InjuryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.LevelDetail
(
       LevelNumber INT NOT NULL,
       Mark VARCHAR(3) NOT NULL,
       SchoolId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT LevelDetail_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.LocationDescriptor
(
       LocationDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT LocationDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.MedicalAlert
(
       MedicalAlertCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MedicalAlert_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.MedicalAlertCategoryDescriptor
(
       MedicalAlertCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MedicalAlertCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.MedicalDispositionDescriptor
(
       MedicalDispositionDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MedicalDispositionDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.MedicalOfficeVisit
(
       OfficeInDate TIMESTAMP NOT NULL,
       PersonId VARCHAR(32) NOT NULL,
       SourceSystemDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MedicalOfficeVisit_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.MedicalReferralFollowUp
(
       FollowupCategoryDescriptorId INT NOT NULL,
       MedicalTestCategoryDescriptorId INT NOT NULL,
       PersonId VARCHAR(32) NOT NULL,
       SourceSystemDescriptorId INT NOT NULL,
       TestDate TIMESTAMP NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MedicalReferralFollowUp_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.MedicalScreening
(
       MedicalTestCategoryDescriptorId INT NOT NULL,
       PersonId VARCHAR(32) NOT NULL,
       SourceSystemDescriptorId INT NOT NULL,
       TestDate TIMESTAMP NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MedicalScreening_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.MedicalTestCategoryDescriptor
(
       MedicalTestCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MedicalTestCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.MedicalTreatmentCodeDescriptor
(
       MedicalTreatmentCodeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MedicalTreatmentCodeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.MedicalVisitReasonDescriptor
(
       MedicalVisitReasonDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MedicalVisitReasonDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.MedicationBox
(
       LocalEducationAgencyId INT NOT NULL,
       MedicationBoxId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MedicationBox_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.NonStudent
(
       LocalEducationAgencyId INT NOT NULL,
       NonStudentLocalId VARCHAR(60) NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT NonStudent_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.NonViolentTechniqueDescriptor
(
       NonViolentTechniqueDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT NonViolentTechniqueDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.NotificationMethodDescriptor
(
       NotificationMethodDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT NotificationMethodDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.ParticipationCodeDescriptor
(
       ParticipationCodeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ParticipationCodeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.PersonCategoryDescriptor
(
       PersonCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PersonCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.PersonDisciplineAction
(
       ActionIdentifier INT NOT NULL,
       ActionStartDate DATE NOT NULL,
       IncidentIdentifier VARCHAR(20) NOT NULL,
       PersonId VARCHAR(32) NOT NULL,
       SchoolId INT NOT NULL,
       SourceSystemDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PersonDisciplineAction_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.PersonDisciplineIncidentAssociation
(
       IncidentIdentifier VARCHAR(20) NOT NULL,
       ParticipantNumber INT NOT NULL,
       ParticipationCodeDescriptorId INT NOT NULL,
       PersonId VARCHAR(32) NOT NULL,
       SchoolId INT NOT NULL,
       SourceSystemDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PersonDisciplineIncidentAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.PersonImmunization
(
       ImmunizationCodeDescriptorId INT NOT NULL,
       ImmunizationDate DATE NOT NULL,
       PersonId VARCHAR(32) NOT NULL,
       SourceSystemDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PersonImmunization_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.PersonMedicalAlert
(
       MedicalAlertCategoryDescriptorId INT NOT NULL,
       PersonId VARCHAR(32) NOT NULL,
       SourceSystemDescriptorId INT NOT NULL,
       StartDate DATE NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PersonMedicalAlert_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.PersonMedicationBoxAssociation
(
       LocalEducationAgencyId INT NOT NULL,
       MedicationBoxId INT NOT NULL,
       PersonId VARCHAR(32) NOT NULL,
       SourceSystemDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PersonMedicationBoxAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.PostSecondaryDetail
(
       PostSecondaryEventCategoryDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       SchoolYear SMALLINT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PostSecondaryDetail_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.ReasonForLateIEPDescriptor
(
       ReasonForLateIEPDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ReasonForLateIEPDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.ReasonNotApplied4PlusCollegeDescriptor
(
       ReasonNotApplied4PlusCollegeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ReasonNotApplied4PlusCollegeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.ReferralDescriptor
(
       ReferralDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ReferralDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.RestraintEventCategoryDescriptor
(
       RestraintEventCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT RestraintEventCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.RestraintSeclusion
(
       EventDate DATE NOT NULL,
       EventTime TIME NOT NULL,
       RestraintEventCategoryDescriptorId INT NOT NULL,
       RestraintEventReasonDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT RestraintSeclusion_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.ServiceStatusDescriptor
(
       ServiceStatusDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ServiceStatusDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.StaffRoleDescriptor
(
       StaffRoleDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT StaffRoleDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.Student504ProgramAssociation
(
       BeginDate DATE NOT NULL,
       EducationOrganizationId INT NOT NULL,
       ProgramEducationOrganizationId INT NOT NULL,
       ProgramName VARCHAR(60) NOT NULL,
       ProgramTypeDescriptorId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT Student504ProgramAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.StudentEarlyChildhoodProgramAssociation
(
       BeginDate DATE NOT NULL,
       EducationOrganizationId INT NOT NULL,
       ProgramEducationOrganizationId INT NOT NULL,
       ProgramName VARCHAR(60) NOT NULL,
       ProgramTypeDescriptorId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT StudentEarlyChildhoodProgramAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.StudentSectionClassPeriodAttendanceEvent
(
       AttendanceEventCategoryDescriptorId INT NOT NULL,
       ClassPeriodName VARCHAR(60) NOT NULL,
       EventDate DATE NOT NULL,
       LocalCourseCode VARCHAR(60) NOT NULL,
       SchoolId INT NOT NULL,
       SchoolYear SMALLINT NOT NULL,
       SectionIdentifier VARCHAR(255) NOT NULL,
       SessionName VARCHAR(60) NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT StudentSectionClassPeriodAttendanceEvent_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.StudentTransportation
(
       LocalEducationAgencyId INT NOT NULL,
       StudentUSI INT NOT NULL,
       TravelDayOfWeekDescriptorId INT NOT NULL,
       TravelDirectionDescriptorId INT NOT NULL,
       TravelSegment INT NOT NULL,
       TravelTrip INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT StudentTransportation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.SupportPlanChangeDescriptor
(
       SupportPlanChangeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT SupportPlanChangeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.TravelDayOfWeekDescriptor
(
       TravelDayOfWeekDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT TravelDayOfWeekDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.TravelDirectionDescriptor
(
       TravelDirectionDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT TravelDirectionDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.TreatmentDescriptor
(
       TreatmentDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT TreatmentDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_de.VictimCategoryDescriptor
(
       VictimCategoryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT VictimCategoryDescriptor_PK PRIMARY KEY (ChangeVersion)
);


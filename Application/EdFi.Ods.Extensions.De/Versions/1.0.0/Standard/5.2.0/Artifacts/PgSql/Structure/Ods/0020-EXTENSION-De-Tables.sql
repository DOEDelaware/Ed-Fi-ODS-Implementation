-- Table de.AddressCharacteristicDescriptor --
CREATE TABLE de.AddressCharacteristicDescriptor (
    AddressCharacteristicDescriptorId INT NOT NULL,
    CONSTRAINT AddressCharacteristicDescriptor_PK PRIMARY KEY (AddressCharacteristicDescriptorId)
);

-- Table de.AlternateCalendarProgramDescriptor --
CREATE TABLE de.AlternateCalendarProgramDescriptor (
    AlternateCalendarProgramDescriptorId INT NOT NULL,
    CONSTRAINT AlternateCalendarProgramDescriptor_PK PRIMARY KEY (AlternateCalendarProgramDescriptorId)
);

-- Table de.ArrestInformationDescriptor --
CREATE TABLE de.ArrestInformationDescriptor (
    ArrestInformationDescriptorId INT NOT NULL,
    CONSTRAINT ArrestInformationDescriptor_PK PRIMARY KEY (ArrestInformationDescriptorId)
);

-- Table de.BirthMandateDescriptor --
CREATE TABLE de.BirthMandateDescriptor (
    BirthMandateDescriptorId INT NOT NULL,
    CONSTRAINT BirthMandateDescriptor_PK PRIMARY KEY (BirthMandateDescriptorId)
);

-- Table de.BullyingCategoryDescriptor --
CREATE TABLE de.BullyingCategoryDescriptor (
    BullyingCategoryDescriptorId INT NOT NULL,
    CONSTRAINT BullyingCategoryDescriptor_PK PRIMARY KEY (BullyingCategoryDescriptorId)
);

-- Table de.ChoiceBasisDescriptor --
CREATE TABLE de.ChoiceBasisDescriptor (
    ChoiceBasisDescriptorId INT NOT NULL,
    CONSTRAINT ChoiceBasisDescriptor_PK PRIMARY KEY (ChoiceBasisDescriptorId)
);

-- Table de.ClassPeriodExtension --
CREATE TABLE de.ClassPeriodExtension (
    ClassPeriodName VARCHAR(60) NOT NULL,
    SchoolId BIGINT NOT NULL,
    AttendancePeriodOrder INT NULL,
    Description VARCHAR(1024) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT ClassPeriodExtension_PK PRIMARY KEY (ClassPeriodName, SchoolId)
);
ALTER TABLE de.ClassPeriodExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.ContactAddressCharacteristic --
CREATE TABLE de.ContactAddressCharacteristic (
    ContactUSI INT NOT NULL,
    AddressTypeDescriptorId INT NOT NULL,
    City VARCHAR(30) NOT NULL,
    PostalCode VARCHAR(17) NOT NULL,
    StateAbbreviationDescriptorId INT NOT NULL,
    StreetNumberName VARCHAR(150) NOT NULL,
    AddressCharacteristicDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT ContactAddressCharacteristic_PK PRIMARY KEY (ContactUSI, AddressTypeDescriptorId, City, PostalCode, StateAbbreviationDescriptorId, StreetNumberName, AddressCharacteristicDescriptorId)
);
ALTER TABLE de.ContactAddressCharacteristic ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.CTECertificationDescriptor --
CREATE TABLE de.CTECertificationDescriptor (
    CTECertificationDescriptorId INT NOT NULL,
    CONSTRAINT CTECertificationDescriptor_PK PRIMARY KEY (CTECertificationDescriptorId)
);

-- Table de.DeescalationTechniqueDescriptor --
CREATE TABLE de.DeescalationTechniqueDescriptor (
    DeescalationTechniqueDescriptorId INT NOT NULL,
    CONSTRAINT DeescalationTechniqueDescriptor_PK PRIMARY KEY (DeescalationTechniqueDescriptorId)
);

-- Table de.DiplomaCertificateCategoryDescriptor --
CREATE TABLE de.DiplomaCertificateCategoryDescriptor (
    DiplomaCertificateCategoryDescriptorId INT NOT NULL,
    CONSTRAINT DiplomaCertificateCategoryDescriptor_PK PRIMARY KEY (DiplomaCertificateCategoryDescriptorId)
);

-- Table de.DisciplineActionExtension --
CREATE TABLE de.DisciplineActionExtension (
    DisciplineActionIdentifier VARCHAR(36) NOT NULL,
    DisciplineDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    DisciplineActionPlacementTypeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineActionExtension_PK PRIMARY KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
);
ALTER TABLE de.DisciplineActionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.DisciplineActionPlacementTypeDescriptor --
CREATE TABLE de.DisciplineActionPlacementTypeDescriptor (
    DisciplineActionPlacementTypeDescriptorId INT NOT NULL,
    CONSTRAINT DisciplineActionPlacementTypeDescriptor_PK PRIMARY KEY (DisciplineActionPlacementTypeDescriptorId)
);

-- Table de.FerpaOptOutDescriptor --
CREATE TABLE de.FerpaOptOutDescriptor (
    FerpaOptOutDescriptorId INT NOT NULL,
    CONSTRAINT FerpaOptOutDescriptor_PK PRIMARY KEY (FerpaOptOutDescriptorId)
);

-- Table de.FollowupCategoryDescriptor --
CREATE TABLE de.FollowupCategoryDescriptor (
    FollowupCategoryDescriptorId INT NOT NULL,
    CONSTRAINT FollowupCategoryDescriptor_PK PRIMARY KEY (FollowupCategoryDescriptorId)
);

-- Table de.FundingNeedsCategoryDescriptor --
CREATE TABLE de.FundingNeedsCategoryDescriptor (
    FundingNeedsCategoryDescriptorId INT NOT NULL,
    CONSTRAINT FundingNeedsCategoryDescriptor_PK PRIMARY KEY (FundingNeedsCategoryDescriptorId)
);

-- Table de.HealthAlertCategoryDescriptor --
CREATE TABLE de.HealthAlertCategoryDescriptor (
    HealthAlertCategoryDescriptorId INT NOT NULL,
    CONSTRAINT HealthAlertCategoryDescriptor_PK PRIMARY KEY (HealthAlertCategoryDescriptorId)
);

-- Table de.IEPImplementationAfterThirdBirthdayReasonDescriptor --
CREATE TABLE de.IEPImplementationAfterThirdBirthdayReasonDescriptor (
    IEPImplementationAfterThirdBirthdayReasonDescriptorId INT NOT NULL,
    CONSTRAINT IEPImplementationAfterThirdBirthdayReasonDescriptor_PK PRIMARY KEY (IEPImplementationAfterThirdBirthdayReasonDescriptorId)
);

-- Table de.IncidentRelatedToDescriptor --
CREATE TABLE de.IncidentRelatedToDescriptor (
    IncidentRelatedToDescriptorId INT NOT NULL,
    CONSTRAINT IncidentRelatedToDescriptor_PK PRIMARY KEY (IncidentRelatedToDescriptorId)
);

-- Table de.LocationDescriptor --
CREATE TABLE de.LocationDescriptor (
    LocationDescriptorId INT NOT NULL,
    CONSTRAINT LocationDescriptor_PK PRIMARY KEY (LocationDescriptorId)
);

-- Table de.MultiliteracyCertificateCategoryDescriptor --
CREATE TABLE de.MultiliteracyCertificateCategoryDescriptor (
    MultiliteracyCertificateCategoryDescriptorId INT NOT NULL,
    CONSTRAINT MultiliteracyCertificateCategoryDescriptor_PK PRIMARY KEY (MultiliteracyCertificateCategoryDescriptorId)
);

-- Table de.NonViolentTechniqueDescriptor --
CREATE TABLE de.NonViolentTechniqueDescriptor (
    NonViolentTechniqueDescriptorId INT NOT NULL,
    CONSTRAINT NonViolentTechniqueDescriptor_PK PRIMARY KEY (NonViolentTechniqueDescriptorId)
);

-- Table de.NotificationMethodDescriptor --
CREATE TABLE de.NotificationMethodDescriptor (
    NotificationMethodDescriptorId INT NOT NULL,
    CONSTRAINT NotificationMethodDescriptor_PK PRIMARY KEY (NotificationMethodDescriptorId)
);

-- Table de.OutOfTimelineReasonDescriptor --
CREATE TABLE de.OutOfTimelineReasonDescriptor (
    OutOfTimelineReasonDescriptorId INT NOT NULL,
    CONSTRAINT OutOfTimelineReasonDescriptor_PK PRIMARY KEY (OutOfTimelineReasonDescriptorId)
);

-- Table de.ReasonForLateIEPDescriptor --
CREATE TABLE de.ReasonForLateIEPDescriptor (
    ReasonForLateIEPDescriptorId INT NOT NULL,
    CONSTRAINT ReasonForLateIEPDescriptor_PK PRIMARY KEY (ReasonForLateIEPDescriptorId)
);

-- Table de.RestraintEventCategoryDescriptor --
CREATE TABLE de.RestraintEventCategoryDescriptor (
    RestraintEventCategoryDescriptorId INT NOT NULL,
    CONSTRAINT RestraintEventCategoryDescriptor_PK PRIMARY KEY (RestraintEventCategoryDescriptorId)
);

-- Table de.RestraintEventExtension --
CREATE TABLE de.RestraintEventExtension (
    RestraintEventIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    AdditionalDetail VARCHAR(255) NULL,
    BehaviorDuringRestraintDetail VARCHAR(255) NULL,
    ChangeDescription VARCHAR(1024) NULL,
    ConsecutiveRestraintCount INT NULL,
    DeescalationTechniqueDescriptorId INT NOT NULL,
    EventTime TIME NOT NULL,
    IncidentLocationDescriptorId INT NULL,
    NonViolentTechniqueDescriptorId INT NULL,
    NotificationMethodDescriptorId INT NULL,
    ParentGuardianNotified BOOLEAN NULL,
    ParentGuardianNotifiedDate DATE NULL,
    ParentGuardianNotifiedTime TIME NULL,
    PolicyChangeDetail VARCHAR(255) NULL,
    PriorToEventDetail VARCHAR(255) NULL,
    RestraintDuration VARCHAR(30) NULL,
    RestraintEventCategoryDescriptorId INT NOT NULL,
    RestraintReportDate DATE NULL,
    StaffTrainingDetail VARCHAR(255) NULL,
    StudentInjured BOOLEAN NULL,
    StudentInterviewDetail VARCHAR(255) NULL,
    StudentTreatmentDescriptorId INT NULL,
    SupportPlanChangeDescriptorId INT NULL,
    UsedCrisisResponseTeam BOOLEAN NULL,
    WitnessInterviewDetail VARCHAR(255) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT RestraintEventExtension_PK PRIMARY KEY (RestraintEventIdentifier, SchoolId, StudentUSI)
);
ALTER TABLE de.RestraintEventExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.RestraintEventStaffParticipation --
CREATE TABLE de.RestraintEventStaffParticipation (
    RestraintEventIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    StaffUSI INT NOT NULL,
    StaffInjured BOOLEAN NULL,
    StaffTreatmentDescriptorId INT NULL,
    TrainedActionTechnique BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT RestraintEventStaffParticipation_PK PRIMARY KEY (RestraintEventIdentifier, SchoolId, StudentUSI, StaffUSI)
);
ALTER TABLE de.RestraintEventStaffParticipation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.SectionExtension --
CREATE TABLE de.SectionExtension (
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    AveragePassTimeMinutesPerWeek VARCHAR(20) NULL,
    FractionOfYearOffered VARCHAR(20) NULL,
    MinutesPerWeekAverage VARCHAR(20) NULL,
    UnitCountExceptionSchoolId BIGINT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SectionExtension_PK PRIMARY KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
);
ALTER TABLE de.SectionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.SpecialEducationFundingDescriptor --
CREATE TABLE de.SpecialEducationFundingDescriptor (
    SpecialEducationFundingDescriptorId INT NOT NULL,
    CONSTRAINT SpecialEducationFundingDescriptor_PK PRIMARY KEY (SpecialEducationFundingDescriptorId)
);

-- Table de.StaffEducationOrganizationAssignmentAssociationExtension --
CREATE TABLE de.StaffEducationOrganizationAssignmentAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    StaffClassificationDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    Active BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationAssignmentAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
);
ALTER TABLE de.StaffEducationOrganizationAssignmentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentContactAssociationExtension --
CREATE TABLE de.StudentContactAssociationExtension (
    ContactUSI INT NOT NULL,
    StudentUSI INT NOT NULL,
    LocalEducationAgencyId BIGINT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentContactAssociationExtension_PK PRIMARY KEY (ContactUSI, StudentUSI)
);
ALTER TABLE de.StudentContactAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentCTEProgramAssociationCTECertification --
CREATE TABLE de.StudentCTEProgramAssociationCTECertification (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CTECertificationDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCTEProgramAssociationCTECertification_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, CTECertificationDescriptorId)
);
ALTER TABLE de.StudentCTEProgramAssociationCTECertification ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentCTEProgramAssociationCTEProgramServiceExtension --
CREATE TABLE de.StudentCTEProgramAssociationCTEProgramServiceExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CTEProgramServiceDescriptorId INT NOT NULL,
    CTEProgramCompletionIndicator BOOLEAN NULL,
    LocalArticulation BOOLEAN NULL,
    PathwayConcentrator BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCTEProgramAssociationCTEProgramServiceExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, CTEProgramServiceDescriptorId)
);
ALTER TABLE de.StudentCTEProgramAssociationCTEProgramServiceExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentDisciplineIncidentBehaviorAssociationExtension --
CREATE TABLE de.StudentDisciplineIncidentBehaviorAssociationExtension (
    BehaviorDescriptorId INT NOT NULL,
    IncidentIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    ArrestInformationDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentDisciplineIncidentBehaviorAssociationExtension_PK PRIMARY KEY (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
);
ALTER TABLE de.StudentDisciplineIncidentBehaviorAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory --
CREATE TABLE de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory (
    IncidentIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    BullyingCategoryDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentDisciplineIncidentNonOffenderAssociationBul_be69d7_PK PRIMARY KEY (IncidentIdentifier, SchoolId, StudentUSI, BullyingCategoryDescriptorId)
);
ALTER TABLE de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentDisciplineIncidentNonOffenderAssociationExtension --
CREATE TABLE de.StudentDisciplineIncidentNonOffenderAssociationExtension (
    IncidentIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    BullyingVictimIncidentDetail VARCHAR(255) NULL,
    ReasonIncidentRelatedToDescriptorId INT NOT NULL,
    ReportDate DATE NOT NULL,
    StaffUSI INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentDisciplineIncidentNonOffenderAssociationExtension_PK PRIMARY KEY (IncidentIdentifier, SchoolId, StudentUSI)
);
ALTER TABLE de.StudentDisciplineIncidentNonOffenderAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentEarlyChildhoodProgramAssociation --
CREATE TABLE de.StudentEarlyChildhoodProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CONSTRAINT StudentEarlyChildhoodProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);

-- Table de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding --
CREATE TABLE de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    SpecialEducationFundingDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEarlyChildhoodProgramAssociationSpecialEduc_e0b3cd_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, SpecialEducationFundingDescriptorId)
);
ALTER TABLE de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentEducationOrganizationAssociationAddressCharacteristic --
CREATE TABLE de.StudentEducationOrganizationAssociationAddressCharacteristic (
    EducationOrganizationId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    AddressTypeDescriptorId INT NOT NULL,
    City VARCHAR(30) NOT NULL,
    PostalCode VARCHAR(17) NOT NULL,
    StateAbbreviationDescriptorId INT NOT NULL,
    StreetNumberName VARCHAR(150) NOT NULL,
    AddressCharacteristicDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationAddressCharacteristic_PK PRIMARY KEY (EducationOrganizationId, StudentUSI, AddressTypeDescriptorId, City, PostalCode, StateAbbreviationDescriptorId, StreetNumberName, AddressCharacteristicDescriptorId)
);
ALTER TABLE de.StudentEducationOrganizationAssociationAddressCharacteristic ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentEducationOrganizationAssociationExtension --
CREATE TABLE de.StudentEducationOrganizationAssociationExtension (
    EducationOrganizationId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    SchoolYear SMALLINT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, StudentUSI)
);
ALTER TABLE de.StudentEducationOrganizationAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentEducationOrganizationAssociationMultiliteracy --
CREATE TABLE de.StudentEducationOrganizationAssociationMultiliteracy (
    EducationOrganizationId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    AssessmentTitle VARCHAR(255) NOT NULL,
    LanguageDescriptorId INT NOT NULL,
    MultiliteracyCertificateCategoryDescriptorId INT NOT NULL,
    CertificateIssueConfirm BOOLEAN NULL,
    CertificateReviewDate DATE NULL,
    DateEarned DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationMultiliteracy_PK PRIMARY KEY (EducationOrganizationId, StudentUSI, AssessmentTitle, LanguageDescriptorId, MultiliteracyCertificateCategoryDescriptorId)
);
ALTER TABLE de.StudentEducationOrganizationAssociationMultiliteracy ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentEducationOrganizationAssociationPriorId --
CREATE TABLE de.StudentEducationOrganizationAssociationPriorId (
    EducationOrganizationId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    PriorId VARCHAR(32) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationPriorId_PK PRIMARY KEY (EducationOrganizationId, StudentUSI, PriorId)
);
ALTER TABLE de.StudentEducationOrganizationAssociationPriorId ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentHealthAlert --
CREATE TABLE de.StudentHealthAlert (
    EducationOrganizationId BIGINT NOT NULL,
    HealthAlertCategoryDescriptorId INT NOT NULL,
    StartDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    Comment VARCHAR(1024) NULL,
    EndDate DATE NULL,
    Instructions VARCHAR(255) NULL,
    Sequence INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentHealthAlert_PK PRIMARY KEY (EducationOrganizationId, HealthAlertCategoryDescriptorId, StartDate, StudentUSI)
);
ALTER TABLE de.StudentHealthAlert ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE de.StudentHealthAlert ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.StudentHealthAlert ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentLanguageInstructionProgramAssociationLanguageImmersion --
CREATE TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ImmersionLanguageDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentLanguageInstructionProgramAssociationLangua_0f3e4a_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, ImmersionLanguageDescriptorId)
);
ALTER TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentMedicaidProgramAssociation --
CREATE TABLE de.StudentMedicaidProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EligibilityStatus BOOLEAN NOT NULL,
    StudentMCINumber VARCHAR(60) NOT NULL,
    CONSTRAINT StudentMedicaidProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);

-- Table de.StudentSection504ProgramAssociationExtension --
CREATE TABLE de.StudentSection504ProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    InitialDNQDate DATE NULL,
    LastEvaluationDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSection504ProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE de.StudentSection504ProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.StudentSpecialEducationProgramAssociationExtension --
CREATE TABLE de.StudentSpecialEducationProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    AlternateCalendarProgramDescriptorId INT NULL,
    BirthMandateDescriptorId INT NULL,
    DiplomaCertificateCategoryDescriptorId INT NULL,
    DSTPAccommodation BOOLEAN NULL,
    EligbleNotReceivingService BOOLEAN NULL,
    EvaluatedNoDisability BOOLEAN NULL,
    FundingNeedsCategoryDescriptorId INT NULL,
    IEPImplementationAfterThirdBirthdayReasonDescriptorId INT NULL,
    IEPPartB619ServicesImplementationDate DATE NULL,
    InitialConsentToEvaluateDate DATE NULL,
    InitialEvaluationDate DATE NULL,
    LastSpecialistEvaluationDate DATE NULL,
    OutOfTimelineReasonDescriptorId INT NULL,
    PartB619Eligible BOOLEAN NULL,
    PartCEligibilityDate DATE NULL,
    PartCEligibilityWithin90DaysOfThirdBirthday BOOLEAN NULL,
    PPPSISPInitiationDate DATE NULL,
    PPPSMeetingDate DATE NULL,
    ReferraltoPartB619Date DATE NULL,
    ReferraltoPartCDate DATE NULL,
    ReferralToPartCWithin90DaysOfThirdBirthday BOOLEAN NULL,
    SpecialEducationFundingCountException BOOLEAN NULL,
    TransitionConferenceDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table de.SupportPlanChangeDescriptor --
CREATE TABLE de.SupportPlanChangeDescriptor (
    SupportPlanChangeDescriptorId INT NOT NULL,
    CONSTRAINT SupportPlanChangeDescriptor_PK PRIMARY KEY (SupportPlanChangeDescriptorId)
);

-- Table de.TreatmentDescriptor --
CREATE TABLE de.TreatmentDescriptor (
    TreatmentDescriptorId INT NOT NULL,
    CONSTRAINT TreatmentDescriptor_PK PRIMARY KEY (TreatmentDescriptorId)
);


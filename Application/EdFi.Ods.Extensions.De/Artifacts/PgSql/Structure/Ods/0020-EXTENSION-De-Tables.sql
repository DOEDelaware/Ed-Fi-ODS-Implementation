-- Table de.AcceptanceStatusDescriptor --
CREATE TABLE de.AcceptanceStatusDescriptor (
    AcceptanceStatusDescriptorId INT NOT NULL,
    CONSTRAINT AcceptanceStatusDescriptor_PK PRIMARY KEY (AcceptanceStatusDescriptorId)
); 

-- Table de.AllegedBullyingVictim --
CREATE TABLE de.AllegedBullyingVictim (
    AllegedIncidentDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    FollowupComment VARCHAR(1024) NULL,
    IncidentDescription VARCHAR(1024) NULL,
    IncidentLocationDescriptorId INT NULL,
    MultiplePriorEvent BOOLEAN NULL,
    ReasonIncidentRelatedToDescriptorId INT NOT NULL,
    ReportDate DATE NOT NULL,
    ReportedBy VARCHAR(50) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT AllegedBullyingVictim_PK PRIMARY KEY (AllegedIncidentDate, SchoolId, StudentUSI)
); 
ALTER TABLE de.AllegedBullyingVictim ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.AllegedBullyingVictim ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.AllegedBullyingVictim ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.AllegedBullyingVictimBullyingCategory --
CREATE TABLE de.AllegedBullyingVictimBullyingCategory (
    AllegedIncidentDate DATE NOT NULL,
    BullyingCategoryDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT AllegedBullyingVictimBullyingCategory_PK PRIMARY KEY (AllegedIncidentDate, BullyingCategoryDescriptorId, SchoolId, StudentUSI)
); 
ALTER TABLE de.AllegedBullyingVictimBullyingCategory ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.APExamCodeDescriptor --
CREATE TABLE de.APExamCodeDescriptor (
    APExamCodeDescriptorId INT NOT NULL,
    CONSTRAINT APExamCodeDescriptor_PK PRIMARY KEY (APExamCodeDescriptorId)
); 

-- Table de.AttendanceConfigurationCategoryDescriptor --
CREATE TABLE de.AttendanceConfigurationCategoryDescriptor (
    AttendanceConfigurationCategoryDescriptorId INT NOT NULL,
    CONSTRAINT AttendanceConfigurationCategoryDescriptor_PK PRIMARY KEY (AttendanceConfigurationCategoryDescriptorId)
); 

-- Table de.BullyingCategoryDescriptor --
CREATE TABLE de.BullyingCategoryDescriptor (
    BullyingCategoryDescriptorId INT NOT NULL,
    CONSTRAINT BullyingCategoryDescriptor_PK PRIMARY KEY (BullyingCategoryDescriptorId)
); 

-- Table de.CalendarDateExtension --
CREATE TABLE de.CalendarDateExtension (
    CalendarCode VARCHAR(60) NOT NULL,
    Date DATE NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    CycleDescriptorId INT NULL,
    MembershipDayValue DECIMAL(4, 3) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CalendarDateExtension_PK PRIMARY KEY (CalendarCode, Date, SchoolId, SchoolYear)
); 
ALTER TABLE de.CalendarDateExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.CertificateCategoryDescriptor --
CREATE TABLE de.CertificateCategoryDescriptor (
    CertificateCategoryDescriptorId INT NOT NULL,
    CONSTRAINT CertificateCategoryDescriptor_PK PRIMARY KEY (CertificateCategoryDescriptorId)
); 

-- Table de.CertificationDescriptor --
CREATE TABLE de.CertificationDescriptor (
    CertificationDescriptorId INT NOT NULL,
    CONSTRAINT CertificationDescriptor_PK PRIMARY KEY (CertificationDescriptorId)
); 

-- Table de.ChoiceCategoryDescriptor --
CREATE TABLE de.ChoiceCategoryDescriptor (
    ChoiceCategoryDescriptorId INT NOT NULL,
    CONSTRAINT ChoiceCategoryDescriptor_PK PRIMARY KEY (ChoiceCategoryDescriptorId)
); 

-- Table de.CIPCourse --
CREATE TABLE de.CIPCourse (
    CIPCode VARCHAR(120) NOT NULL,
    LocalEducationAgencyId INT NOT NULL,
    Pathway INT NULL,
    FundingLevel INT NULL,
    Cluster INT NULL,
    CourseName VARCHAR(255) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT CIPCourse_PK PRIMARY KEY (CIPCode, LocalEducationAgencyId)
); 
ALTER TABLE de.CIPCourse ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.CIPCourse ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.CIPCourse ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.ClassPeriodCycle --
CREATE TABLE de.ClassPeriodCycle (
    ClassPeriodName VARCHAR(60) NOT NULL,
    CycleDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    Timeslot INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT ClassPeriodCycle_PK PRIMARY KEY (ClassPeriodName, CycleDescriptorId, SchoolId, Timeslot)
); 
ALTER TABLE de.ClassPeriodCycle ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.ClassPeriodExtension --
CREATE TABLE de.ClassPeriodExtension (
    ClassPeriodName VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    AttendancePeriodOrder INT NULL,
    Description VARCHAR(1024) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT ClassPeriodExtension_PK PRIMARY KEY (ClassPeriodName, SchoolId)
); 
ALTER TABLE de.ClassPeriodExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.CoreSubjectDescriptor --
CREATE TABLE de.CoreSubjectDescriptor (
    CoreSubjectDescriptorId INT NOT NULL,
    CONSTRAINT CoreSubjectDescriptor_PK PRIMARY KEY (CoreSubjectDescriptorId)
); 

-- Table de.CourseExtension --
CREATE TABLE de.CourseExtension (
    CourseCode VARCHAR(60) NOT NULL,
    EducationOrganizationId INT NOT NULL,
    Active BOOLEAN NULL,
    APExamCodeDescriptorId INT NULL,
    AveragePassTimeMinutesPerWeek VARCHAR(20) NULL,
    CoreSubjectDescriptorId INT NULL,
    FractionOfYearOffered VARCHAR(20) NULL,
    MinutesPerWeekAverage VARCHAR(20) NULL,
    SecondaryStaffClassroomServiceStatusDescriptorId INT NULL,
    StaffCredentialFieldDescriptorId INT NULL,
    SecondaryStaffCredentialFieldDescriptorId INT NULL,
    SecondaryStaffRoleDescriptorId INT NULL,
    UnitCountExceptionSchoolId INT NULL,
    LevelNumber INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CourseExtension_PK PRIMARY KEY (CourseCode, EducationOrganizationId)
); 
ALTER TABLE de.CourseExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.CycleDescriptor --
CREATE TABLE de.CycleDescriptor (
    CycleDescriptorId INT NOT NULL,
    CONSTRAINT CycleDescriptor_PK PRIMARY KEY (CycleDescriptorId)
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

-- Table de.DisciplineDispositionDescriptor --
CREATE TABLE de.DisciplineDispositionDescriptor (
    DisciplineDispositionDescriptorId INT NOT NULL,
    CONSTRAINT DisciplineDispositionDescriptor_PK PRIMARY KEY (DisciplineDispositionDescriptorId)
); 

-- Table de.DisciplineIncidentCode --
CREATE TABLE de.DisciplineIncidentCode (
    BehaviorDescriptorId INT NOT NULL,
    Felony BOOLEAN NULL,
    VictimRequired BOOLEAN NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT DisciplineIncidentCode_PK PRIMARY KEY (BehaviorDescriptorId)
); 
ALTER TABLE de.DisciplineIncidentCode ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.DisciplineIncidentCode ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.DisciplineIncidentCode ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.DisciplineIncidentExtension --
CREATE TABLE de.DisciplineIncidentExtension (
    IncidentIdentifier VARCHAR(20) NOT NULL,
    SchoolId INT NOT NULL,
    LawEnforcementBadgeNumber VARCHAR(10) NULL,
    LawEnforcementDepartment VARCHAR(255) NULL,
    LawEnforcementNotifyDate DATE NULL,
    LawEnforcementOfficerName VARCHAR(100) NULL,
    DisciplineIncidentLastModifiedDate TIMESTAMP NULL,
    DisciplineIncidentChangeUID VARCHAR(20) NULL,
    DisciplineIncidentCreationUID VARCHAR(20) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineIncidentExtension_PK PRIMARY KEY (IncidentIdentifier, SchoolId)
); 
ALTER TABLE de.DisciplineIncidentExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.DisciplineIncidentReason --
CREATE TABLE de.DisciplineIncidentReason (
    IncidentIdentifier VARCHAR(20) NOT NULL,
    IncidentRelatedToDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    IncidentRelatedToChangeUID VARCHAR(20) NULL,
    IncidentRelatedToLastModifiedDate TIMESTAMP NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineIncidentReason_PK PRIMARY KEY (IncidentIdentifier, IncidentRelatedToDescriptorId, SchoolId)
); 
ALTER TABLE de.DisciplineIncidentReason ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.DisciplineIncidentReferral --
CREATE TABLE de.DisciplineIncidentReferral (
    IncidentIdentifier VARCHAR(20) NOT NULL,
    ReferralDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineIncidentReferral_PK PRIMARY KEY (IncidentIdentifier, ReferralDescriptorId, SchoolId)
); 
ALTER TABLE de.DisciplineIncidentReferral ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.EnrollmentTypeDescriptor --
CREATE TABLE de.EnrollmentTypeDescriptor (
    EnrollmentTypeDescriptorId INT NOT NULL,
    CONSTRAINT EnrollmentTypeDescriptor_PK PRIMARY KEY (EnrollmentTypeDescriptorId)
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

-- Table de.GradeTypeDetail --
CREATE TABLE de.GradeTypeDetail (
    GradeTypeDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    GradeTypeOrder INT NULL,
    GradeTypeWhenTakenDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT GradeTypeDetail_PK PRIMARY KEY (GradeTypeDescriptorId, SchoolId)
); 
ALTER TABLE de.GradeTypeDetail ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.GradeTypeDetail ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.GradeTypeDetail ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.GradeTypeWhenTakenDescriptor --
CREATE TABLE de.GradeTypeWhenTakenDescriptor (
    GradeTypeWhenTakenDescriptorId INT NOT NULL,
    CONSTRAINT GradeTypeWhenTakenDescriptor_PK PRIMARY KEY (GradeTypeWhenTakenDescriptorId)
); 

-- Table de.GradingPeriodExtension --
CREATE TABLE de.GradingPeriodExtension (
    GradingPeriodDescriptorId INT NOT NULL,
    PeriodSequence INT NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    EndWeek INT NULL,
    StartWeek INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT GradingPeriodExtension_PK PRIMARY KEY (GradingPeriodDescriptorId, PeriodSequence, SchoolId, SchoolYear)
); 
ALTER TABLE de.GradingPeriodExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.ImmunizationCodeDescriptor --
CREATE TABLE de.ImmunizationCodeDescriptor (
    ImmunizationCodeDescriptorId INT NOT NULL,
    CONSTRAINT ImmunizationCodeDescriptor_PK PRIMARY KEY (ImmunizationCodeDescriptorId)
); 

-- Table de.IncidentRelatedToDescriptor --
CREATE TABLE de.IncidentRelatedToDescriptor (
    IncidentRelatedToDescriptorId INT NOT NULL,
    CONSTRAINT IncidentRelatedToDescriptor_PK PRIMARY KEY (IncidentRelatedToDescriptorId)
); 

-- Table de.InjuryDescriptor --
CREATE TABLE de.InjuryDescriptor (
    InjuryDescriptorId INT NOT NULL,
    CONSTRAINT InjuryDescriptor_PK PRIMARY KEY (InjuryDescriptorId)
); 

-- Table de.LevelDetail --
CREATE TABLE de.LevelDetail (
    LevelNumber INT NOT NULL,
    Mark VARCHAR(3) NOT NULL,
    SchoolId INT NOT NULL,
    LevelDescription VARCHAR(1024) NULL,
    PassingMark BOOLEAN NULL,
    PointValue DECIMAL(7, 4) NULL,
    ReportCardPrintValue VARCHAR(3) NULL,
    TranscriptPrintValue VARCHAR(3) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT LevelDetail_PK PRIMARY KEY (LevelNumber, Mark, SchoolId)
); 
ALTER TABLE de.LevelDetail ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.LevelDetail ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.LevelDetail ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.LocationDescriptor --
CREATE TABLE de.LocationDescriptor (
    LocationDescriptorId INT NOT NULL,
    CONSTRAINT LocationDescriptor_PK PRIMARY KEY (LocationDescriptorId)
); 

-- Table de.MedicalAlert --
CREATE TABLE de.MedicalAlert (
    MedicalAlertCategoryDescriptorId INT NOT NULL,
    Sensitive BOOLEAN NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT MedicalAlert_PK PRIMARY KEY (MedicalAlertCategoryDescriptorId)
); 
ALTER TABLE de.MedicalAlert ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.MedicalAlert ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.MedicalAlert ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.MedicalAlertCategoryDescriptor --
CREATE TABLE de.MedicalAlertCategoryDescriptor (
    MedicalAlertCategoryDescriptorId INT NOT NULL,
    CONSTRAINT MedicalAlertCategoryDescriptor_PK PRIMARY KEY (MedicalAlertCategoryDescriptorId)
); 

-- Table de.MedicalDispositionDescriptor --
CREATE TABLE de.MedicalDispositionDescriptor (
    MedicalDispositionDescriptorId INT NOT NULL,
    CONSTRAINT MedicalDispositionDescriptor_PK PRIMARY KEY (MedicalDispositionDescriptorId)
); 

-- Table de.MedicalOfficeVisit --
CREATE TABLE de.MedicalOfficeVisit (
    OfficeInDate TIMESTAMP NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    OfficeOutDate TIMESTAMP NULL,
    SchoolOfServiceSchoolId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT MedicalOfficeVisit_PK PRIMARY KEY (OfficeInDate, PersonId, SourceSystemDescriptorId)
); 
ALTER TABLE de.MedicalOfficeVisit ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.MedicalOfficeVisit ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.MedicalOfficeVisit ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.MedicalOfficeVisitContactType --
CREATE TABLE de.MedicalOfficeVisitContactType (
    ContactTypeDescriptorId INT NOT NULL,
    OfficeInDate TIMESTAMP NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT MedicalOfficeVisitContactType_PK PRIMARY KEY (ContactTypeDescriptorId, OfficeInDate, PersonId, SourceSystemDescriptorId)
); 
ALTER TABLE de.MedicalOfficeVisitContactType ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.MedicalOfficeVisitMedicalDisposition --
CREATE TABLE de.MedicalOfficeVisitMedicalDisposition (
    MedicalDispositionDescriptorId INT NOT NULL,
    OfficeInDate TIMESTAMP NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT MedicalOfficeVisitMedicalDisposition_PK PRIMARY KEY (MedicalDispositionDescriptorId, OfficeInDate, PersonId, SourceSystemDescriptorId)
); 
ALTER TABLE de.MedicalOfficeVisitMedicalDisposition ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.MedicalOfficeVisitMedicalTreatmentCode --
CREATE TABLE de.MedicalOfficeVisitMedicalTreatmentCode (
    MedicalTreatmentCodeDescriptorId INT NOT NULL,
    OfficeInDate TIMESTAMP NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT MedicalOfficeVisitMedicalTreatmentCode_PK PRIMARY KEY (MedicalTreatmentCodeDescriptorId, OfficeInDate, PersonId, SourceSystemDescriptorId)
); 
ALTER TABLE de.MedicalOfficeVisitMedicalTreatmentCode ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.MedicalOfficeVisitMedicalVisitReason --
CREATE TABLE de.MedicalOfficeVisitMedicalVisitReason (
    MedicalVisitReasonDescriptorId INT NOT NULL,
    OfficeInDate TIMESTAMP NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT MedicalOfficeVisitMedicalVisitReason_PK PRIMARY KEY (MedicalVisitReasonDescriptorId, OfficeInDate, PersonId, SourceSystemDescriptorId)
); 
ALTER TABLE de.MedicalOfficeVisitMedicalVisitReason ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.MedicalReferralFollowUp --
CREATE TABLE de.MedicalReferralFollowUp (
    FollowupCategoryDescriptorId INT NOT NULL,
    MedicalTestCategoryDescriptorId INT NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    TestDate TIMESTAMP NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT MedicalReferralFollowUp_PK PRIMARY KEY (FollowupCategoryDescriptorId, MedicalTestCategoryDescriptorId, PersonId, SourceSystemDescriptorId, TestDate)
); 
ALTER TABLE de.MedicalReferralFollowUp ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.MedicalReferralFollowUp ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.MedicalReferralFollowUp ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.MedicalScreening --
CREATE TABLE de.MedicalScreening (
    MedicalTestCategoryDescriptorId INT NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    TestDate TIMESTAMP NOT NULL,
    AthleticStatus BOOLEAN NULL,
    GradeLevelDescriptorId INT NULL,
    SchoolOfServiceSchoolId INT NULL,
    ScreeningEducationOrganizationId INT NULL,
    ScreeningLocationDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT MedicalScreening_PK PRIMARY KEY (MedicalTestCategoryDescriptorId, PersonId, SourceSystemDescriptorId, TestDate)
); 
ALTER TABLE de.MedicalScreening ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.MedicalScreening ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.MedicalScreening ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.MedicalTestCategoryDescriptor --
CREATE TABLE de.MedicalTestCategoryDescriptor (
    MedicalTestCategoryDescriptorId INT NOT NULL,
    CONSTRAINT MedicalTestCategoryDescriptor_PK PRIMARY KEY (MedicalTestCategoryDescriptorId)
); 

-- Table de.MedicalTreatmentCodeDescriptor --
CREATE TABLE de.MedicalTreatmentCodeDescriptor (
    MedicalTreatmentCodeDescriptorId INT NOT NULL,
    CONSTRAINT MedicalTreatmentCodeDescriptor_PK PRIMARY KEY (MedicalTreatmentCodeDescriptorId)
); 

-- Table de.MedicalVisitReasonDescriptor --
CREATE TABLE de.MedicalVisitReasonDescriptor (
    MedicalVisitReasonDescriptorId INT NOT NULL,
    CONSTRAINT MedicalVisitReasonDescriptor_PK PRIMARY KEY (MedicalVisitReasonDescriptorId)
); 

-- Table de.MedicationBox --
CREATE TABLE de.MedicationBox (
    LocalEducationAgencyId INT NOT NULL,
    MedicationBoxId INT NOT NULL,
    MedicationCode VARCHAR(10) NULL,
    MedicationDescription VARCHAR(1024) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT MedicationBox_PK PRIMARY KEY (LocalEducationAgencyId, MedicationBoxId)
); 
ALTER TABLE de.MedicationBox ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.MedicationBox ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.MedicationBox ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.NonStudent --
CREATE TABLE de.NonStudent (
    LocalEducationAgencyId INT NOT NULL,
    NonStudentLocalId VARCHAR(60) NOT NULL,
    PersonalTitlePrefix VARCHAR(30) NULL,
    FirstName VARCHAR(75) NULL,
    MiddleName VARCHAR(75) NULL,
    LastSurname VARCHAR(75) NULL,
    GenerationCodeSuffix VARCHAR(10) NULL,
    MaidenName VARCHAR(75) NULL,
    BirthDate DATE NULL,
    BirthCity VARCHAR(30) NULL,
    BirthStateAbbreviationDescriptorId INT NULL,
    BirthInternationalProvince VARCHAR(150) NULL,
    BirthCountryDescriptorId INT NULL,
    DateEnteredUS DATE NULL,
    MultipleBirthStatus BOOLEAN NULL,
    BirthSexDescriptorId INT NULL,
    HispanicLatinoEthnicity BOOLEAN NULL,
    SexDescriptorId INT NULL,
    SchoolId INT NULL,
    PersonId VARCHAR(32) NULL,
    SourceSystemDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT NonStudent_PK PRIMARY KEY (LocalEducationAgencyId, NonStudentLocalId)
); 
ALTER TABLE de.NonStudent ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.NonStudent ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.NonStudent ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.NonStudentEthnicity --
CREATE TABLE de.NonStudentEthnicity (
    LocalEducationAgencyId INT NOT NULL,
    NonStudentLocalId VARCHAR(60) NOT NULL,
    RaceDescriptorId INT NOT NULL,
    RaceOrder INT NULL,
    RacePercentage INT NULL,
    FederalRaceDescriptorId INT NULL,
    EthnicityLastModifiedDate TIMESTAMP NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT NonStudentEthnicity_PK PRIMARY KEY (LocalEducationAgencyId, NonStudentLocalId)
); 
ALTER TABLE de.NonStudentEthnicity ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.NonStudentPersonalIdentificationDocument --
CREATE TABLE de.NonStudentPersonalIdentificationDocument (
    IdentificationDocumentUseDescriptorId INT NOT NULL,
    LocalEducationAgencyId INT NOT NULL,
    NonStudentLocalId VARCHAR(60) NOT NULL,
    PersonalInformationVerificationDescriptorId INT NOT NULL,
    DocumentTitle VARCHAR(60) NULL,
    DocumentExpirationDate DATE NULL,
    IssuerDocumentIdentificationCode VARCHAR(60) NULL,
    IssuerName VARCHAR(150) NULL,
    IssuerCountryDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT NonStudentPersonalIdentificationDocument_PK PRIMARY KEY (IdentificationDocumentUseDescriptorId, LocalEducationAgencyId, NonStudentLocalId, PersonalInformationVerificationDescriptorId)
); 
ALTER TABLE de.NonStudentPersonalIdentificationDocument ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

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

-- Table de.ParentAddressExtension --
CREATE TABLE de.ParentAddressExtension (
    AddressTypeDescriptorId INT NOT NULL,
    City VARCHAR(30) NOT NULL,
    ParentUSI INT NOT NULL,
    PostalCode VARCHAR(17) NOT NULL,
    StateAbbreviationDescriptorId INT NOT NULL,
    StreetNumberName VARCHAR(150) NOT NULL,
    Complex VARCHAR(255) NULL,
    Development VARCHAR(255) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT ParentAddressExtension_PK PRIMARY KEY (AddressTypeDescriptorId, City, ParentUSI, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
); 
ALTER TABLE de.ParentAddressExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.ParticipationCodeDescriptor --
CREATE TABLE de.ParticipationCodeDescriptor (
    ParticipationCodeDescriptorId INT NOT NULL,
    CONSTRAINT ParticipationCodeDescriptor_PK PRIMARY KEY (ParticipationCodeDescriptorId)
); 

-- Table de.PersonCategoryDescriptor --
CREATE TABLE de.PersonCategoryDescriptor (
    PersonCategoryDescriptorId INT NOT NULL,
    CONSTRAINT PersonCategoryDescriptor_PK PRIMARY KEY (PersonCategoryDescriptorId)
); 

-- Table de.PersonDisciplineAction --
CREATE TABLE de.PersonDisciplineAction (
    ActionIdentifier INT NOT NULL,
    ActionStartDate DATE NOT NULL,
    IncidentIdentifier VARCHAR(20) NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SchoolId INT NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    ActionEndDate DATE NULL,
    ActualActionDuration DECIMAL(5, 2) NULL,
    ScheduledActionDuration DECIMAL(5, 2) NULL,
    DisciplineActionLengthDifferenceReasonDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PersonDisciplineAction_PK PRIMARY KEY (ActionIdentifier, ActionStartDate, IncidentIdentifier, PersonId, SchoolId, SourceSystemDescriptorId)
); 
ALTER TABLE de.PersonDisciplineAction ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.PersonDisciplineAction ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.PersonDisciplineAction ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.PersonDisciplineActionDiscipline --
CREATE TABLE de.PersonDisciplineActionDiscipline (
    ActionIdentifier INT NOT NULL,
    ActionStartDate DATE NOT NULL,
    DisciplineDescriptorId INT NOT NULL,
    IncidentIdentifier VARCHAR(20) NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SchoolId INT NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PersonDisciplineActionDiscipline_PK PRIMARY KEY (ActionIdentifier, ActionStartDate, DisciplineDescriptorId, IncidentIdentifier, PersonId, SchoolId, SourceSystemDescriptorId)
); 
ALTER TABLE de.PersonDisciplineActionDiscipline ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.PersonDisciplineActionDisciplineDisposition --
CREATE TABLE de.PersonDisciplineActionDisciplineDisposition (
    ActionIdentifier INT NOT NULL,
    ActionStartDate DATE NOT NULL,
    DisciplineDispositionDescriptorId INT NOT NULL,
    IncidentIdentifier VARCHAR(20) NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SchoolId INT NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PersonDisciplineActionDisciplineDisposition_PK PRIMARY KEY (ActionIdentifier, ActionStartDate, DisciplineDispositionDescriptorId, IncidentIdentifier, PersonId, SchoolId, SourceSystemDescriptorId)
); 
ALTER TABLE de.PersonDisciplineActionDisciplineDisposition ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.PersonDisciplineIncidentAssociation --
CREATE TABLE de.PersonDisciplineIncidentAssociation (
    IncidentIdentifier VARCHAR(20) NOT NULL,
    ParticipantNumber INT NOT NULL,
    ParticipationCodeDescriptorId INT NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SchoolId INT NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    VictimCategoryDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PersonDisciplineIncidentAssociation_PK PRIMARY KEY (IncidentIdentifier, ParticipantNumber, ParticipationCodeDescriptorId, PersonId, SchoolId, SourceSystemDescriptorId)
); 
ALTER TABLE de.PersonDisciplineIncidentAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.PersonDisciplineIncidentAssociation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.PersonDisciplineIncidentAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.PersonDisciplineIncidentAssociationOffenderBehavior --
CREATE TABLE de.PersonDisciplineIncidentAssociationOffenderBehavior (
    BehaviorDescriptorId INT NOT NULL,
    IncidentIdentifier VARCHAR(20) NOT NULL,
    ParticipantNumber INT NOT NULL,
    ParticipationCodeDescriptorId INT NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SchoolId INT NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    BehaviorDetailDescription VARCHAR(1024) NULL,
    OffenseNumber INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PersonDisciplineIncidentAssociationOffenderBehavior_PK PRIMARY KEY (BehaviorDescriptorId, IncidentIdentifier, ParticipantNumber, ParticipationCodeDescriptorId, PersonId, SchoolId, SourceSystemDescriptorId)
); 
ALTER TABLE de.PersonDisciplineIncidentAssociationOffenderBehavior ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.PersonDisciplineIncidentAssociationVictimInjury --
CREATE TABLE de.PersonDisciplineIncidentAssociationVictimInjury (
    IncidentIdentifier VARCHAR(20) NOT NULL,
    InjuryDescriptorId INT NOT NULL,
    ParticipantNumber INT NOT NULL,
    ParticipationCodeDescriptorId INT NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SchoolId INT NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PersonDisciplineIncidentAssociationVictimInjury_PK PRIMARY KEY (IncidentIdentifier, InjuryDescriptorId, ParticipantNumber, ParticipationCodeDescriptorId, PersonId, SchoolId, SourceSystemDescriptorId)
); 
ALTER TABLE de.PersonDisciplineIncidentAssociationVictimInjury ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.PersonImmunization --
CREATE TABLE de.PersonImmunization (
    ImmunizationCodeDescriptorId INT NOT NULL,
    ImmunizationDate DATE NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PersonImmunization_PK PRIMARY KEY (ImmunizationCodeDescriptorId, ImmunizationDate, PersonId, SourceSystemDescriptorId)
); 
ALTER TABLE de.PersonImmunization ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.PersonImmunization ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.PersonImmunization ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.PersonMedicalAlert --
CREATE TABLE de.PersonMedicalAlert (
    MedicalAlertCategoryDescriptorId INT NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NULL,
    Sequence INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PersonMedicalAlert_PK PRIMARY KEY (MedicalAlertCategoryDescriptorId, PersonId, SourceSystemDescriptorId, StartDate)
); 
ALTER TABLE de.PersonMedicalAlert ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.PersonMedicalAlert ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.PersonMedicalAlert ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.PersonMedicationBoxAssociation --
CREATE TABLE de.PersonMedicationBoxAssociation (
    LocalEducationAgencyId INT NOT NULL,
    MedicationBoxId INT NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    MedicationRequired BOOLEAN NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PersonMedicationBoxAssociation_PK PRIMARY KEY (LocalEducationAgencyId, MedicationBoxId, PersonId, SourceSystemDescriptorId)
); 
ALTER TABLE de.PersonMedicationBoxAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.PersonMedicationBoxAssociation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.PersonMedicationBoxAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.PersonMedicationBoxAssociationIssue --
CREATE TABLE de.PersonMedicationBoxAssociationIssue (
    IssueDate TIMESTAMP NOT NULL,
    LocalEducationAgencyId INT NOT NULL,
    MedicationBoxId INT NOT NULL,
    PersonId VARCHAR(32) NOT NULL,
    SourceSystemDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PersonMedicationBoxAssociationIssue_PK PRIMARY KEY (IssueDate, LocalEducationAgencyId, MedicationBoxId, PersonId, SourceSystemDescriptorId)
); 
ALTER TABLE de.PersonMedicationBoxAssociationIssue ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.PostSecondaryDetail --
CREATE TABLE de.PostSecondaryDetail (
    PostSecondaryEventCategoryDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUSI INT NOT NULL,
    ReasonNotApplied4PlusCollegeDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PostSecondaryDetail_PK PRIMARY KEY (PostSecondaryEventCategoryDescriptorId, SchoolId, SchoolYear, StudentUSI)
); 
ALTER TABLE de.PostSecondaryDetail ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.PostSecondaryDetail ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.PostSecondaryDetail ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.PostSecondaryDetailInstitution --
CREATE TABLE de.PostSecondaryDetailInstitution (
    PostSecondaryEventCategoryDescriptorId INT NOT NULL,
    PostSecondaryInstitutionId INT NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUSI INT NOT NULL,
    AcceptanceStatusDescriptorId INT NULL,
    DateTranscriptMailed DATE NULL,
    PlansToAttend BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PostSecondaryDetailInstitution_PK PRIMARY KEY (PostSecondaryEventCategoryDescriptorId, PostSecondaryInstitutionId, SchoolId, SchoolYear, StudentUSI)
); 
ALTER TABLE de.PostSecondaryDetailInstitution ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.ReasonForLateIEPDescriptor --
CREATE TABLE de.ReasonForLateIEPDescriptor (
    ReasonForLateIEPDescriptorId INT NOT NULL,
    CONSTRAINT ReasonForLateIEPDescriptor_PK PRIMARY KEY (ReasonForLateIEPDescriptorId)
); 

-- Table de.ReasonNotApplied4PlusCollegeDescriptor --
CREATE TABLE de.ReasonNotApplied4PlusCollegeDescriptor (
    ReasonNotApplied4PlusCollegeDescriptorId INT NOT NULL,
    CONSTRAINT ReasonNotApplied4PlusCollegeDescriptor_PK PRIMARY KEY (ReasonNotApplied4PlusCollegeDescriptorId)
); 

-- Table de.ReferralDescriptor --
CREATE TABLE de.ReferralDescriptor (
    ReferralDescriptorId INT NOT NULL,
    CONSTRAINT ReferralDescriptor_PK PRIMARY KEY (ReferralDescriptorId)
); 

-- Table de.RestraintEventCategoryDescriptor --
CREATE TABLE de.RestraintEventCategoryDescriptor (
    RestraintEventCategoryDescriptorId INT NOT NULL,
    CONSTRAINT RestraintEventCategoryDescriptor_PK PRIMARY KEY (RestraintEventCategoryDescriptorId)
); 

-- Table de.RestraintSeclusion --
CREATE TABLE de.RestraintSeclusion (
    EventDate DATE NOT NULL,
    EventTime TIME NOT NULL,
    RestraintEventCategoryDescriptorId INT NOT NULL,
    RestraintEventReasonDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    AdditionalDetail VARCHAR(255) NULL,
    BehaviorDuringRestraintDetail VARCHAR(255) NOT NULL,
    ChangeDescription VARCHAR(1024) NULL,
    DeescalationTechniqueDescriptorId INT NULL,
    IncidentLocationDescriptorId INT NULL,
    RestraintReportDate DATE NULL,
    RestraintDuration VARCHAR(30) NULL,
    ConsecutiveRestraintCount INT NULL,
    NotificationMethodDescriptorId INT NOT NULL,
    NonViolentTechniqueDescriptorId INT NULL,
    ParentGuardianNotified BOOLEAN NULL,
    ParentGuardianNotifiedDate DATE NOT NULL,
    ParentGuardianNotifiedTime TIME NOT NULL,
    PolicyChangeDetail VARCHAR(255) NULL,
    PriorToEventDetail VARCHAR(255) NOT NULL,
    StaffInjured BOOLEAN NULL,
    StaffTreatmentDescriptorId INT NULL,
    StaffTrainingDetail VARCHAR(255) NULL,
    StudentInjured BOOLEAN NULL,
    StudentTreatmentDescriptorId INT NULL,
    StudentInterviewDetail VARCHAR(255) NULL,
    SupportPlanChangeDescriptorId INT NOT NULL,
    UsedCrisisResponseTeam BOOLEAN NULL,
    WitnessInterviewDetail VARCHAR(255) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT RestraintSeclusion_PK PRIMARY KEY (EventDate, EventTime, RestraintEventCategoryDescriptorId, RestraintEventReasonDescriptorId, SchoolId, StudentUSI)
); 
ALTER TABLE de.RestraintSeclusion ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.RestraintSeclusion ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.RestraintSeclusion ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.RestraintSeclusionStaffProvidingRestraint --
CREATE TABLE de.RestraintSeclusionStaffProvidingRestraint (
    EventDate DATE NOT NULL,
    EventTime TIME NOT NULL,
    RestraintEventCategoryDescriptorId INT NOT NULL,
    RestraintEventReasonDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StaffOrdinal INT NOT NULL,
    StudentUSI INT NOT NULL,
    TrainedActionTechnique BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT RestraintSeclusionStaffProvidingRestraint_PK PRIMARY KEY (EventDate, EventTime, RestraintEventCategoryDescriptorId, RestraintEventReasonDescriptorId, SchoolId, StaffOrdinal, StudentUSI)
); 
ALTER TABLE de.RestraintSeclusionStaffProvidingRestraint ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.SchoolExtension --
CREATE TABLE de.SchoolExtension (
    SchoolId INT NOT NULL,
    AttendanceConfigurationCategoryDescriptorId INT NULL,
    UnitCountException BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolExtension_PK PRIMARY KEY (SchoolId)
); 
ALTER TABLE de.SchoolExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.SectionExtension --
CREATE TABLE de.SectionExtension (
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    Description VARCHAR(1024) NULL,
    LevelDetail INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SectionExtension_PK PRIMARY KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
); 
ALTER TABLE de.SectionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.SectionMarkingPeriod --
CREATE TABLE de.SectionMarkingPeriod (
    GradingPeriodDescriptorId INT NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    UsedSeat INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SectionMarkingPeriod_PK PRIMARY KEY (GradingPeriodDescriptorId, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
); 
ALTER TABLE de.SectionMarkingPeriod ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.SectionSubjectArea --
CREATE TABLE de.SectionSubjectArea (
    AcademicSubjectDescriptorId INT NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    SubjectOrder INT NULL,
    SubjectAreaLastModifiedDate TIMESTAMP NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SectionSubjectArea_PK PRIMARY KEY (AcademicSubjectDescriptorId, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
); 
ALTER TABLE de.SectionSubjectArea ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.ServiceStatusDescriptor --
CREATE TABLE de.ServiceStatusDescriptor (
    ServiceStatusDescriptorId INT NOT NULL,
    CONSTRAINT ServiceStatusDescriptor_PK PRIMARY KEY (ServiceStatusDescriptorId)
); 

-- Table de.StaffEducationOrganizationAssignmentAssociationExtension --
CREATE TABLE de.StaffEducationOrganizationAssignmentAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StaffClassificationDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    Active BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationAssignmentAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
); 
ALTER TABLE de.StaffEducationOrganizationAssignmentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StaffProgramAssociationExtension --
CREATE TABLE de.StaffProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    ImmersionLanguageDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffProgramAssociationExtension_PK PRIMARY KEY (BeginDate, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StaffUSI)
); 
ALTER TABLE de.StaffProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StaffRoleDescriptor --
CREATE TABLE de.StaffRoleDescriptor (
    StaffRoleDescriptorId INT NOT NULL,
    CONSTRAINT StaffRoleDescriptor_PK PRIMARY KEY (StaffRoleDescriptorId)
); 

-- Table de.Student504ProgramAssociation --
CREATE TABLE de.Student504ProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    AccommodatioPlan BOOLEAN NULL,
    DisabilityDescriptorId INT NULL,
    InitialDNQDate DATE NULL,
    LastEvaluationDate DATE NULL,
    MeetingDate DATE NULL,
    CONSTRAINT Student504ProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
); 

-- Table de.StudentCTEProgramAssociationCTEProgramExtension --
CREATE TABLE de.StudentCTEProgramAssociationCTEProgramExtension (
    BeginDate DATE NOT NULL,
    CareerPathwayDescriptorId INT NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    PathwayConcentrator BOOLEAN NULL,
    FirstCertificationDescriptorId INT NULL,
    SecondCertificationDescriptorId INT NULL,
    ThirdCertificationDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCTEProgramAssociationCTEProgramExtension_PK PRIMARY KEY (BeginDate, CareerPathwayDescriptorId, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
); 
ALTER TABLE de.StudentCTEProgramAssociationCTEProgramExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentEarlyChildhoodProgramAssociation --
CREATE TABLE de.StudentEarlyChildhoodProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    Regulation619DeterminedEligible BOOLEAN NULL,
    Regulation619PartCReferralDate DATE NULL,
    DistrictNotificationDate DATE NULL,
    IEPMeetingDate DATE NULL,
    IEPImplementationDate DATE NULL,
    ReasonForLateIEPDescriptorId INT NULL,
    CONSTRAINT StudentEarlyChildhoodProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
); 

-- Table de.StudentEducationOrganizationAssociationAddressExtension --
CREATE TABLE de.StudentEducationOrganizationAssociationAddressExtension (
    AddressTypeDescriptorId INT NOT NULL,
    City VARCHAR(30) NOT NULL,
    EducationOrganizationId INT NOT NULL,
    PostalCode VARCHAR(17) NOT NULL,
    StateAbbreviationDescriptorId INT NOT NULL,
    StreetNumberName VARCHAR(150) NOT NULL,
    StudentUSI INT NOT NULL,
    Complex VARCHAR(255) NULL,
    Development VARCHAR(255) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationAddressExtension_PK PRIMARY KEY (AddressTypeDescriptorId, City, EducationOrganizationId, PostalCode, StateAbbreviationDescriptorId, StreetNumberName, StudentUSI)
); 
ALTER TABLE de.StudentEducationOrganizationAssociationAddressExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentEducationOrganizationAssociationExtension --
CREATE TABLE de.StudentEducationOrganizationAssociationExtension (
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ChoiceCategoryDescriptorId INT NULL,
    FerpaName BOOLEAN NULL,
    FerpaAddress BOOLEAN NULL,
    FerpaPhone BOOLEAN NULL,
    FerpaPhoto BOOLEAN NULL,
    FerpaOptOutDescriptorId INT NULL,
    SchoolYear SMALLINT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, StudentUSI)
); 
ALTER TABLE de.StudentEducationOrganizationAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentEducationOrganizationAssociationMultiliteracy --
CREATE TABLE de.StudentEducationOrganizationAssociationMultiliteracy (
    AssessmentTitle VARCHAR(100) NOT NULL,
    CertificateCategoryDescriptorId INT NOT NULL,
    EducationOrganizationId INT NOT NULL,
    LanguageDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CertificateIssueConfirm BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationMultiliteracy_PK PRIMARY KEY (AssessmentTitle, CertificateCategoryDescriptorId, EducationOrganizationId, LanguageDescriptorId, StudentUSI)
); 
ALTER TABLE de.StudentEducationOrganizationAssociationMultiliteracy ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentEducationOrganizationAssociationScholarship --
CREATE TABLE de.StudentEducationOrganizationAssociationScholarship (
    EducationOrganizationId INT NOT NULL,
    ScholarshipAmount INT NOT NULL,
    ScholarshipName VARCHAR(60) NOT NULL,
    StudentUSI INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationScholarship_PK PRIMARY KEY (EducationOrganizationId, ScholarshipAmount, ScholarshipName, StudentUSI)
); 
ALTER TABLE de.StudentEducationOrganizationAssociationScholarship ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentEducationOrganizationResponsibilityAssociationTransfer --
CREATE TABLE de.StudentEducationOrganizationResponsibilityAssociationTransfer (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ExternalEducationOrganizationName VARCHAR(75) NOT NULL,
    ResponsibilityDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    GradeLevelDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationResponsibilityAssociat_fa0525_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ExternalEducationOrganizationName, ResponsibilityDescriptorId, StudentUSI)
); 
ALTER TABLE de.StudentEducationOrganizationResponsibilityAssociationTransfer ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentLanguageInstructionProgramAssociationLanguageImmersion --
CREATE TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ImmersionLanguageDescriptorId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    Comment VARCHAR(1024) NULL,
    GradeLevelDescriptorId INT NULL,
    SchoolYear SMALLINT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentLanguageInstructionProgramAssociationLangua_0f3e4a_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ImmersionLanguageDescriptorId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
); 
ALTER TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentParentAssociationExtension --
CREATE TABLE de.StudentParentAssociationExtension (
    ParentUSI INT NOT NULL,
    StudentUSI INT NOT NULL,
    ContactTypeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentParentAssociationExtension_PK PRIMARY KEY (ParentUSI, StudentUSI)
); 
ALTER TABLE de.StudentParentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentSchoolAssociationExtension --
CREATE TABLE de.StudentSchoolAssociationExtension (
    EntryDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EnrollmentTypeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolAssociationExtension_PK PRIMARY KEY (EntryDate, SchoolId, StudentUSI)
); 
ALTER TABLE de.StudentSchoolAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentSchoolAttendanceEventExtension --
CREATE TABLE de.StudentSchoolAttendanceEventExtension (
    AttendanceEventCategoryDescriptorId INT NOT NULL,
    EventDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StudentUSI INT NOT NULL,
    AbsentTime INT NULL,
    ScheduledTime INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolAttendanceEventExtension_PK PRIMARY KEY (AttendanceEventCategoryDescriptorId, EventDate, SchoolId, SchoolYear, SessionName, StudentUSI)
); 
ALTER TABLE de.StudentSchoolAttendanceEventExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentSectionClassPeriodAttendanceEvent --
CREATE TABLE de.StudentSectionClassPeriodAttendanceEvent (
    AttendanceEventCategoryDescriptorId INT NOT NULL,
    ClassPeriodName VARCHAR(60) NOT NULL,
    EventDate DATE NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StudentUSI INT NOT NULL,
    AttendanceEventReason VARCHAR(255) NULL,
    EducationalEnvironmentDescriptorId INT NULL,
    EventDuration DECIMAL(3, 2) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentSectionClassPeriodAttendanceEvent_PK PRIMARY KEY (AttendanceEventCategoryDescriptorId, ClassPeriodName, EventDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
); 
ALTER TABLE de.StudentSectionClassPeriodAttendanceEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.StudentSectionClassPeriodAttendanceEvent ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.StudentSectionClassPeriodAttendanceEvent ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.StudentSpecialEducationProgramAssociationExtension --
CREATE TABLE de.StudentSpecialEducationProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    DiplomaCertificateCategoryDescriptorId INT NULL,
    SpecialEducationFundingCountException BOOLEAN NULL,
    DSTPAccommodation BOOLEAN NULL,
    EligbleNotReceivingService BOOLEAN NULL,
    EvaluatedNoDisability BOOLEAN NULL,
    FundingNeedsCategoryDescriptorId INT NULL,
    InitialConsentToEvaluateDate DATE NULL,
    InitialEvaluationDate DATE NULL,
    LastSpecialistEvaluationDate DATE NULL,
    PercentOutOfRegularClass DECIMAL(5, 2) NULL,
    PPPSISPInitiationDate DATE NULL,
    PPPSMeetingDate DATE NULL,
    ServiceStatusDescriptorId INT NULL,
    PrivateSchoolId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
); 
ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table de.StudentTransportation --
CREATE TABLE de.StudentTransportation (
    LocalEducationAgencyId INT NOT NULL,
    StudentUSI INT NOT NULL,
    TravelDayOfWeekDescriptorId INT NOT NULL,
    TravelDirectionDescriptorId INT NOT NULL,
    TravelSegment INT NOT NULL,
    TravelTrip INT NOT NULL,
    BusNumber VARCHAR(10) NULL,
    BusRouteNumber VARCHAR(10) NULL,
    ShuttleStop VARCHAR(6) NULL,
    StopDescription VARCHAR(1024) NULL,
    StopNumber VARCHAR(10) NULL,
    StopTime TIME NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentTransportation_PK PRIMARY KEY (LocalEducationAgencyId, StudentUSI, TravelDayOfWeekDescriptorId, TravelDirectionDescriptorId, TravelSegment, TravelTrip)
); 
ALTER TABLE de.StudentTransportation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE de.StudentTransportation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE de.StudentTransportation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table de.SupportPlanChangeDescriptor --
CREATE TABLE de.SupportPlanChangeDescriptor (
    SupportPlanChangeDescriptorId INT NOT NULL,
    CONSTRAINT SupportPlanChangeDescriptor_PK PRIMARY KEY (SupportPlanChangeDescriptorId)
); 

-- Table de.TravelDayOfWeekDescriptor --
CREATE TABLE de.TravelDayOfWeekDescriptor (
    TravelDayOfWeekDescriptorId INT NOT NULL,
    CONSTRAINT TravelDayOfWeekDescriptor_PK PRIMARY KEY (TravelDayOfWeekDescriptorId)
); 

-- Table de.TravelDirectionDescriptor --
CREATE TABLE de.TravelDirectionDescriptor (
    TravelDirectionDescriptorId INT NOT NULL,
    CONSTRAINT TravelDirectionDescriptor_PK PRIMARY KEY (TravelDirectionDescriptorId)
); 

-- Table de.TreatmentDescriptor --
CREATE TABLE de.TreatmentDescriptor (
    TreatmentDescriptorId INT NOT NULL,
    CONSTRAINT TreatmentDescriptor_PK PRIMARY KEY (TreatmentDescriptorId)
); 

-- Table de.VictimCategoryDescriptor --
CREATE TABLE de.VictimCategoryDescriptor (
    VictimCategoryDescriptorId INT NOT NULL,
    CONSTRAINT VictimCategoryDescriptor_PK PRIMARY KEY (VictimCategoryDescriptorId)
); 


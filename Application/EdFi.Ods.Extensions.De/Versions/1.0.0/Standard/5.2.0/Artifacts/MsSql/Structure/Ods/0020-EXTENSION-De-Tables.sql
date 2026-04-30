-- Table [de].[AddressCharacteristicDescriptor] --
CREATE TABLE [de].[AddressCharacteristicDescriptor] (
    [AddressCharacteristicDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AddressCharacteristicDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AddressCharacteristicDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[AlternateCalendarProgramDescriptor] --
CREATE TABLE [de].[AlternateCalendarProgramDescriptor] (
    [AlternateCalendarProgramDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AlternateCalendarProgramDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AlternateCalendarProgramDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[ArrestInformationDescriptor] --
CREATE TABLE [de].[ArrestInformationDescriptor] (
    [ArrestInformationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ArrestInformationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ArrestInformationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[BirthMandateDescriptor] --
CREATE TABLE [de].[BirthMandateDescriptor] (
    [BirthMandateDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BirthMandateDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BirthMandateDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[BullyingCategoryDescriptor] --
CREATE TABLE [de].[BullyingCategoryDescriptor] (
    [BullyingCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BullyingCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BullyingCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[ChoiceBasisDescriptor] --
CREATE TABLE [de].[ChoiceBasisDescriptor] (
    [ChoiceBasisDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ChoiceBasisDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ChoiceBasisDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[ClassPeriodExtension] --
CREATE TABLE [de].[ClassPeriodExtension] (
    [ClassPeriodName] [NVARCHAR](60) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [AttendancePeriodOrder] [INT] NULL,
    [Description] [NVARCHAR](1024) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [ClassPeriodExtension_PK] PRIMARY KEY CLUSTERED (
        [ClassPeriodName] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[ClassPeriodExtension] ADD CONSTRAINT [ClassPeriodExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[ContactAddressCharacteristic] --
CREATE TABLE [de].[ContactAddressCharacteristic] (
    [ContactUSI] [INT] NOT NULL,
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [StateAbbreviationDescriptorId] [INT] NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [AddressCharacteristicDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [ContactAddressCharacteristic_PK] PRIMARY KEY CLUSTERED (
        [ContactUSI] ASC,
        [AddressTypeDescriptorId] ASC,
        [City] ASC,
        [PostalCode] ASC,
        [StateAbbreviationDescriptorId] ASC,
        [StreetNumberName] ASC,
        [AddressCharacteristicDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[ContactAddressCharacteristic] ADD CONSTRAINT [ContactAddressCharacteristic_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[CTECertificationDescriptor] --
CREATE TABLE [de].[CTECertificationDescriptor] (
    [CTECertificationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CTECertificationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CTECertificationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[DeescalationTechniqueDescriptor] --
CREATE TABLE [de].[DeescalationTechniqueDescriptor] (
    [DeescalationTechniqueDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DeescalationTechniqueDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DeescalationTechniqueDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[DiplomaCertificateCategoryDescriptor] --
CREATE TABLE [de].[DiplomaCertificateCategoryDescriptor] (
    [DiplomaCertificateCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DiplomaCertificateCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DiplomaCertificateCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[DisciplineActionExtension] --
CREATE TABLE [de].[DisciplineActionExtension] (
    [DisciplineActionIdentifier] [NVARCHAR](36) NOT NULL,
    [DisciplineDate] [DATE] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DisciplineActionPlacementTypeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [DisciplineActionExtension_PK] PRIMARY KEY CLUSTERED (
        [DisciplineActionIdentifier] ASC,
        [DisciplineDate] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[DisciplineActionExtension] ADD CONSTRAINT [DisciplineActionExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[DisciplineActionPlacementTypeDescriptor] --
CREATE TABLE [de].[DisciplineActionPlacementTypeDescriptor] (
    [DisciplineActionPlacementTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DisciplineActionPlacementTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DisciplineActionPlacementTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[FerpaOptOutDescriptor] --
CREATE TABLE [de].[FerpaOptOutDescriptor] (
    [FerpaOptOutDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FerpaOptOutDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FerpaOptOutDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[FollowupCategoryDescriptor] --
CREATE TABLE [de].[FollowupCategoryDescriptor] (
    [FollowupCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FollowupCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FollowupCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[FundingNeedsCategoryDescriptor] --
CREATE TABLE [de].[FundingNeedsCategoryDescriptor] (
    [FundingNeedsCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FundingNeedsCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FundingNeedsCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[HealthAlertCategoryDescriptor] --
CREATE TABLE [de].[HealthAlertCategoryDescriptor] (
    [HealthAlertCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [HealthAlertCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [HealthAlertCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[IEPImplementationAfterThirdBirthdayReasonDescriptor] --
CREATE TABLE [de].[IEPImplementationAfterThirdBirthdayReasonDescriptor] (
    [IEPImplementationAfterThirdBirthdayReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IEPImplementationAfterThirdBirthdayReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IEPImplementationAfterThirdBirthdayReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[IncidentRelatedToDescriptor] --
CREATE TABLE [de].[IncidentRelatedToDescriptor] (
    [IncidentRelatedToDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IncidentRelatedToDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IncidentRelatedToDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[LocationDescriptor] --
CREATE TABLE [de].[LocationDescriptor] (
    [LocationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [LocationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [LocationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[MultiliteracyCertificateCategoryDescriptor] --
CREATE TABLE [de].[MultiliteracyCertificateCategoryDescriptor] (
    [MultiliteracyCertificateCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [MultiliteracyCertificateCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [MultiliteracyCertificateCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[NonViolentTechniqueDescriptor] --
CREATE TABLE [de].[NonViolentTechniqueDescriptor] (
    [NonViolentTechniqueDescriptorId] [INT] NOT NULL,
    CONSTRAINT [NonViolentTechniqueDescriptor_PK] PRIMARY KEY CLUSTERED (
        [NonViolentTechniqueDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[NotificationMethodDescriptor] --
CREATE TABLE [de].[NotificationMethodDescriptor] (
    [NotificationMethodDescriptorId] [INT] NOT NULL,
    CONSTRAINT [NotificationMethodDescriptor_PK] PRIMARY KEY CLUSTERED (
        [NotificationMethodDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[OutOfTimelineReasonDescriptor] --
CREATE TABLE [de].[OutOfTimelineReasonDescriptor] (
    [OutOfTimelineReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [OutOfTimelineReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [OutOfTimelineReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[ReasonForLateIEPDescriptor] --
CREATE TABLE [de].[ReasonForLateIEPDescriptor] (
    [ReasonForLateIEPDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ReasonForLateIEPDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ReasonForLateIEPDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[RestraintEventCategoryDescriptor] --
CREATE TABLE [de].[RestraintEventCategoryDescriptor] (
    [RestraintEventCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [RestraintEventCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RestraintEventCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[RestraintEventExtension] --
CREATE TABLE [de].[RestraintEventExtension] (
    [RestraintEventIdentifier] [NVARCHAR](36) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AdditionalDetail] [NVARCHAR](255) NULL,
    [BehaviorDuringRestraintDetail] [NVARCHAR](255) NULL,
    [ChangeDescription] [NVARCHAR](1024) NULL,
    [ConsecutiveRestraintCount] [INT] NULL,
    [DeescalationTechniqueDescriptorId] [INT] NOT NULL,
    [EventTime] [TIME](7) NOT NULL,
    [IncidentLocationDescriptorId] [INT] NULL,
    [NonViolentTechniqueDescriptorId] [INT] NULL,
    [NotificationMethodDescriptorId] [INT] NULL,
    [ParentGuardianNotified] [BIT] NULL,
    [ParentGuardianNotifiedDate] [DATE] NULL,
    [ParentGuardianNotifiedTime] [TIME](7) NULL,
    [PolicyChangeDetail] [NVARCHAR](255) NULL,
    [PriorToEventDetail] [NVARCHAR](255) NULL,
    [RestraintDuration] [NVARCHAR](30) NULL,
    [RestraintEventCategoryDescriptorId] [INT] NOT NULL,
    [RestraintReportDate] [DATE] NULL,
    [StaffTrainingDetail] [NVARCHAR](255) NULL,
    [StudentInjured] [BIT] NULL,
    [StudentInterviewDetail] [NVARCHAR](255) NULL,
    [StudentTreatmentDescriptorId] [INT] NULL,
    [SupportPlanChangeDescriptorId] [INT] NULL,
    [UsedCrisisResponseTeam] [BIT] NULL,
    [WitnessInterviewDetail] [NVARCHAR](255) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [RestraintEventExtension_PK] PRIMARY KEY CLUSTERED (
        [RestraintEventIdentifier] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[RestraintEventExtension] ADD CONSTRAINT [RestraintEventExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[RestraintEventStaffParticipation] --
CREATE TABLE [de].[RestraintEventStaffParticipation] (
    [RestraintEventIdentifier] [NVARCHAR](36) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [StaffInjured] [BIT] NULL,
    [StaffTreatmentDescriptorId] [INT] NULL,
    [TrainedActionTechnique] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [RestraintEventStaffParticipation_PK] PRIMARY KEY CLUSTERED (
        [RestraintEventIdentifier] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[RestraintEventStaffParticipation] ADD CONSTRAINT [RestraintEventStaffParticipation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[SectionExtension] --
CREATE TABLE [de].[SectionExtension] (
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [AveragePassTimeMinutesPerWeek] [NVARCHAR](20) NULL,
    [FractionOfYearOffered] [NVARCHAR](20) NULL,
    [MinutesPerWeekAverage] [NVARCHAR](20) NULL,
    [UnitCountExceptionSchoolId] [BIGINT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SectionExtension_PK] PRIMARY KEY CLUSTERED (
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[SectionExtension] ADD CONSTRAINT [SectionExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[SpecialEducationFundingDescriptor] --
CREATE TABLE [de].[SpecialEducationFundingDescriptor] (
    [SpecialEducationFundingDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SpecialEducationFundingDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SpecialEducationFundingDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[StaffEducationOrganizationAssignmentAssociationExtension] --
CREATE TABLE [de].[StaffEducationOrganizationAssignmentAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [StaffClassificationDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [Active] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationAssignmentAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [StaffClassificationDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StaffEducationOrganizationAssignmentAssociationExtension] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentContactAssociationExtension] --
CREATE TABLE [de].[StudentContactAssociationExtension] (
    [ContactUSI] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [LocalEducationAgencyId] [BIGINT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentContactAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [ContactUSI] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentContactAssociationExtension] ADD CONSTRAINT [StudentContactAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentCTEProgramAssociationCTECertification] --
CREATE TABLE [de].[StudentCTEProgramAssociationCTECertification] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CTECertificationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCTEProgramAssociationCTECertification_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [CTECertificationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentCTEProgramAssociationCTECertification] ADD CONSTRAINT [StudentCTEProgramAssociationCTECertification_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentCTEProgramAssociationCTEProgramServiceExtension] --
CREATE TABLE [de].[StudentCTEProgramAssociationCTEProgramServiceExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CTEProgramServiceDescriptorId] [INT] NOT NULL,
    [CTEProgramCompletionIndicator] [BIT] NULL,
    [LocalArticulation] [BIT] NULL,
    [PathwayConcentrator] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCTEProgramAssociationCTEProgramServiceExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [CTEProgramServiceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentCTEProgramAssociationCTEProgramServiceExtension] ADD CONSTRAINT [StudentCTEProgramAssociationCTEProgramServiceExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentDisciplineIncidentBehaviorAssociationExtension] --
CREATE TABLE [de].[StudentDisciplineIncidentBehaviorAssociationExtension] (
    [BehaviorDescriptorId] [INT] NOT NULL,
    [IncidentIdentifier] [NVARCHAR](36) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ArrestInformationDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BehaviorDescriptorId] ASC,
        [IncidentIdentifier] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentDisciplineIncidentBehaviorAssociationExtension] ADD CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentDisciplineIncidentNonOffenderAssociationBullyingCategory] --
CREATE TABLE [de].[StudentDisciplineIncidentNonOffenderAssociationBullyingCategory] (
    [IncidentIdentifier] [NVARCHAR](36) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BullyingCategoryDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociationBullyingCategory_PK] PRIMARY KEY CLUSTERED (
        [IncidentIdentifier] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC,
        [BullyingCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentDisciplineIncidentNonOffenderAssociationBullyingCategory] ADD CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociationBullyingCategory_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentDisciplineIncidentNonOffenderAssociationExtension] --
CREATE TABLE [de].[StudentDisciplineIncidentNonOffenderAssociationExtension] (
    [IncidentIdentifier] [NVARCHAR](36) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BullyingVictimIncidentDetail] [NVARCHAR](255) NULL,
    [ReasonIncidentRelatedToDescriptorId] [INT] NOT NULL,
    [ReportDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [IncidentIdentifier] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentDisciplineIncidentNonOffenderAssociationExtension] ADD CONSTRAINT [StudentDisciplineIncidentNonOffenderAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentEarlyChildhoodProgramAssociation] --
CREATE TABLE [de].[StudentEarlyChildhoodProgramAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    CONSTRAINT [StudentEarlyChildhoodProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[StudentEarlyChildhoodProgramAssociationSpecialEducationFunding] --
CREATE TABLE [de].[StudentEarlyChildhoodProgramAssociationSpecialEducationFunding] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [SpecialEducationFundingDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEarlyChildhoodProgramAssociationSpecialEducationFunding_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [SpecialEducationFundingDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentEarlyChildhoodProgramAssociationSpecialEducationFunding] ADD CONSTRAINT [StudentEarlyChildhoodProgramAssociationSpecialEducationFunding_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentEducationOrganizationAssociationAddressCharacteristic] --
CREATE TABLE [de].[StudentEducationOrganizationAssociationAddressCharacteristic] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [StateAbbreviationDescriptorId] [INT] NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [AddressCharacteristicDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationAddressCharacteristic_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [AddressTypeDescriptorId] ASC,
        [City] ASC,
        [PostalCode] ASC,
        [StateAbbreviationDescriptorId] ASC,
        [StreetNumberName] ASC,
        [AddressCharacteristicDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentEducationOrganizationAssociationAddressCharacteristic] ADD CONSTRAINT [StudentEducationOrganizationAssociationAddressCharacteristic_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentEducationOrganizationAssociationExtension] --
CREATE TABLE [de].[StudentEducationOrganizationAssociationExtension] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentEducationOrganizationAssociationExtension] ADD CONSTRAINT [StudentEducationOrganizationAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentEducationOrganizationAssociationMultiliteracy] --
CREATE TABLE [de].[StudentEducationOrganizationAssociationMultiliteracy] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AssessmentTitle] [NVARCHAR](255) NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [MultiliteracyCertificateCategoryDescriptorId] [INT] NOT NULL,
    [CertificateIssueConfirm] [BIT] NULL,
    [CertificateReviewDate] [DATE] NULL,
    [DateEarned] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationMultiliteracy_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [AssessmentTitle] ASC,
        [LanguageDescriptorId] ASC,
        [MultiliteracyCertificateCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentEducationOrganizationAssociationMultiliteracy] ADD CONSTRAINT [StudentEducationOrganizationAssociationMultiliteracy_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentEducationOrganizationAssociationPriorId] --
CREATE TABLE [de].[StudentEducationOrganizationAssociationPriorId] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [PriorId] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationPriorId_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [PriorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentEducationOrganizationAssociationPriorId] ADD CONSTRAINT [StudentEducationOrganizationAssociationPriorId_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentHealthAlert] --
CREATE TABLE [de].[StudentHealthAlert] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [HealthAlertCategoryDescriptorId] [INT] NOT NULL,
    [StartDate] [DATE] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [Comment] [NVARCHAR](1024) NULL,
    [EndDate] [DATE] NULL,
    [Instructions] [NVARCHAR](255) NULL,
    [Sequence] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentHealthAlert_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [HealthAlertCategoryDescriptorId] ASC,
        [StartDate] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentHealthAlert] ADD CONSTRAINT [StudentHealthAlert_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [de].[StudentHealthAlert] ADD CONSTRAINT [StudentHealthAlert_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [de].[StudentHealthAlert] ADD CONSTRAINT [StudentHealthAlert_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [de].[StudentLanguageInstructionProgramAssociationLanguageImmersion] --
CREATE TABLE [de].[StudentLanguageInstructionProgramAssociationLanguageImmersion] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ImmersionLanguageDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentLanguageInstructionProgramAssociationLanguageImmersion_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [ImmersionLanguageDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentLanguageInstructionProgramAssociationLanguageImmersion] ADD CONSTRAINT [StudentLanguageInstructionProgramAssociationLanguageImmersion_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentMedicaidProgramAssociation] --
CREATE TABLE [de].[StudentMedicaidProgramAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EligibilityStatus] [BIT] NOT NULL,
    [StudentMCINumber] [NVARCHAR](60) NOT NULL,
    CONSTRAINT [StudentMedicaidProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[StudentSection504ProgramAssociationExtension] --
CREATE TABLE [de].[StudentSection504ProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [InitialDNQDate] [DATE] NULL,
    [LastEvaluationDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSection504ProgramAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentSection504ProgramAssociationExtension] ADD CONSTRAINT [StudentSection504ProgramAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[StudentSpecialEducationProgramAssociationExtension] --
CREATE TABLE [de].[StudentSpecialEducationProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AlternateCalendarProgramDescriptorId] [INT] NULL,
    [BirthMandateDescriptorId] [INT] NULL,
    [DiplomaCertificateCategoryDescriptorId] [INT] NULL,
    [DSTPAccommodation] [BIT] NULL,
    [EligbleNotReceivingService] [BIT] NULL,
    [EvaluatedNoDisability] [BIT] NULL,
    [FundingNeedsCategoryDescriptorId] [INT] NULL,
    [IEPImplementationAfterThirdBirthdayReasonDescriptorId] [INT] NULL,
    [IEPPartB619ServicesImplementationDate] [DATE] NULL,
    [InitialConsentToEvaluateDate] [DATE] NULL,
    [InitialEvaluationDate] [DATE] NULL,
    [LastSpecialistEvaluationDate] [DATE] NULL,
    [OutOfTimelineReasonDescriptorId] [INT] NULL,
    [PartB619Eligible] [BIT] NULL,
    [PartCEligibilityDate] [DATE] NULL,
    [PartCEligibilityWithin90DaysOfThirdBirthday] [BIT] NULL,
    [PPPSISPInitiationDate] [DATE] NULL,
    [PPPSMeetingDate] [DATE] NULL,
    [ReferraltoPartB619Date] [DATE] NULL,
    [ReferraltoPartCDate] [DATE] NULL,
    [ReferralToPartCWithin90DaysOfThirdBirthday] [BIT] NULL,
    [SpecialEducationFundingCountException] [BIT] NULL,
    [TransitionConferenceDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [de].[StudentSpecialEducationProgramAssociationExtension] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [de].[SupportPlanChangeDescriptor] --
CREATE TABLE [de].[SupportPlanChangeDescriptor] (
    [SupportPlanChangeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SupportPlanChangeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SupportPlanChangeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [de].[TreatmentDescriptor] --
CREATE TABLE [de].[TreatmentDescriptor] (
    [TreatmentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TreatmentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TreatmentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


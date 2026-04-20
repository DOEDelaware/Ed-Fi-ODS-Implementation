ALTER TABLE [de].[AddressCharacteristicDescriptor] WITH CHECK ADD CONSTRAINT [FK_AddressCharacteristicDescriptor_Descriptor] FOREIGN KEY ([AddressCharacteristicDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[AlternateCalendarProgramDescriptor] WITH CHECK ADD CONSTRAINT [FK_AlternateCalendarProgramDescriptor_Descriptor] FOREIGN KEY ([AlternateCalendarProgramDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[ArrestInformationDescriptor] WITH CHECK ADD CONSTRAINT [FK_ArrestInformationDescriptor_Descriptor] FOREIGN KEY ([ArrestInformationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[BirthMandateDescriptor] WITH CHECK ADD CONSTRAINT [FK_BirthMandateDescriptor_Descriptor] FOREIGN KEY ([BirthMandateDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[BullyingCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_BullyingCategoryDescriptor_Descriptor] FOREIGN KEY ([BullyingCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[ChoiceBasisDescriptor] WITH CHECK ADD CONSTRAINT [FK_ChoiceBasisDescriptor_Descriptor] FOREIGN KEY ([ChoiceBasisDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[ClassPeriodExtension] WITH CHECK ADD CONSTRAINT [FK_ClassPeriodExtension_ClassPeriod] FOREIGN KEY ([ClassPeriodName], [SchoolId])
REFERENCES [edfi].[ClassPeriod] ([ClassPeriodName], [SchoolId])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [de].[ContactAddressCharacteristic] WITH CHECK ADD CONSTRAINT [FK_ContactAddressCharacteristic_AddressCharacteristicDescriptor] FOREIGN KEY ([AddressCharacteristicDescriptorId])
REFERENCES [de].[AddressCharacteristicDescriptor] ([AddressCharacteristicDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ContactAddressCharacteristic_AddressCharacteristicDescriptor]
ON [de].[ContactAddressCharacteristic] ([AddressCharacteristicDescriptorId] ASC)
GO

ALTER TABLE [de].[ContactAddressCharacteristic] WITH CHECK ADD CONSTRAINT [FK_ContactAddressCharacteristic_ContactAddress] FOREIGN KEY ([ContactUSI], [AddressTypeDescriptorId], [City], [PostalCode], [StateAbbreviationDescriptorId], [StreetNumberName])
REFERENCES [edfi].[ContactAddress] ([ContactUSI], [AddressTypeDescriptorId], [City], [PostalCode], [StateAbbreviationDescriptorId], [StreetNumberName])
ON DELETE CASCADE
GO

ALTER TABLE [de].[CTECertificationDescriptor] WITH CHECK ADD CONSTRAINT [FK_CTECertificationDescriptor_Descriptor] FOREIGN KEY ([CTECertificationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[DeescalationTechniqueDescriptor] WITH CHECK ADD CONSTRAINT [FK_DeescalationTechniqueDescriptor_Descriptor] FOREIGN KEY ([DeescalationTechniqueDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[DiplomaCertificateCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_DiplomaCertificateCategoryDescriptor_Descriptor] FOREIGN KEY ([DiplomaCertificateCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineAction] FOREIGN KEY ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
REFERENCES [edfi].[DisciplineAction] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineActionPlacementTypeDescriptor] FOREIGN KEY ([DisciplineActionPlacementTypeDescriptorId])
REFERENCES [de].[DisciplineActionPlacementTypeDescriptor] ([DisciplineActionPlacementTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_DisciplineActionPlacementTypeDescriptor]
ON [de].[DisciplineActionExtension] ([DisciplineActionPlacementTypeDescriptorId] ASC)
GO

ALTER TABLE [de].[DisciplineActionPlacementTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionPlacementTypeDescriptor_Descriptor] FOREIGN KEY ([DisciplineActionPlacementTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[FerpaOptOutDescriptor] WITH CHECK ADD CONSTRAINT [FK_FerpaOptOutDescriptor_Descriptor] FOREIGN KEY ([FerpaOptOutDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[FollowupCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_FollowupCategoryDescriptor_Descriptor] FOREIGN KEY ([FollowupCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[FundingNeedsCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_FundingNeedsCategoryDescriptor_Descriptor] FOREIGN KEY ([FundingNeedsCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[HealthAlertCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_HealthAlertCategoryDescriptor_Descriptor] FOREIGN KEY ([HealthAlertCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[IEPImplementationAfterThirdBirthdayReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_IEPImplementationAfterThirdBirthdayReasonDescriptor_Descriptor] FOREIGN KEY ([IEPImplementationAfterThirdBirthdayReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[IncidentRelatedToDescriptor] WITH CHECK ADD CONSTRAINT [FK_IncidentRelatedToDescriptor_Descriptor] FOREIGN KEY ([IncidentRelatedToDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[LocationDescriptor] WITH CHECK ADD CONSTRAINT [FK_LocationDescriptor_Descriptor] FOREIGN KEY ([LocationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[MultiliteracyCertificateCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_MultiliteracyCertificateCategoryDescriptor_Descriptor] FOREIGN KEY ([MultiliteracyCertificateCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[NonViolentTechniqueDescriptor] WITH CHECK ADD CONSTRAINT [FK_NonViolentTechniqueDescriptor_Descriptor] FOREIGN KEY ([NonViolentTechniqueDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[NotificationMethodDescriptor] WITH CHECK ADD CONSTRAINT [FK_NotificationMethodDescriptor_Descriptor] FOREIGN KEY ([NotificationMethodDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[OutOfTimelineReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_OutOfTimelineReasonDescriptor_Descriptor] FOREIGN KEY ([OutOfTimelineReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[ReasonForLateIEPDescriptor] WITH CHECK ADD CONSTRAINT [FK_ReasonForLateIEPDescriptor_Descriptor] FOREIGN KEY ([ReasonForLateIEPDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[RestraintEventCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_RestraintEventCategoryDescriptor_Descriptor] FOREIGN KEY ([RestraintEventCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[RestraintEventExtension] WITH CHECK ADD CONSTRAINT [FK_RestraintEventExtension_DeescalationTechniqueDescriptor] FOREIGN KEY ([DeescalationTechniqueDescriptorId])
REFERENCES [de].[DeescalationTechniqueDescriptor] ([DeescalationTechniqueDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventExtension_DeescalationTechniqueDescriptor]
ON [de].[RestraintEventExtension] ([DeescalationTechniqueDescriptorId] ASC)
GO

ALTER TABLE [de].[RestraintEventExtension] WITH CHECK ADD CONSTRAINT [FK_RestraintEventExtension_IncidentLocationDescriptor] FOREIGN KEY ([IncidentLocationDescriptorId])
REFERENCES [edfi].[IncidentLocationDescriptor] ([IncidentLocationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventExtension_IncidentLocationDescriptor]
ON [de].[RestraintEventExtension] ([IncidentLocationDescriptorId] ASC)
GO

ALTER TABLE [de].[RestraintEventExtension] WITH CHECK ADD CONSTRAINT [FK_RestraintEventExtension_NonViolentTechniqueDescriptor] FOREIGN KEY ([NonViolentTechniqueDescriptorId])
REFERENCES [de].[NonViolentTechniqueDescriptor] ([NonViolentTechniqueDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventExtension_NonViolentTechniqueDescriptor]
ON [de].[RestraintEventExtension] ([NonViolentTechniqueDescriptorId] ASC)
GO

ALTER TABLE [de].[RestraintEventExtension] WITH CHECK ADD CONSTRAINT [FK_RestraintEventExtension_NotificationMethodDescriptor] FOREIGN KEY ([NotificationMethodDescriptorId])
REFERENCES [de].[NotificationMethodDescriptor] ([NotificationMethodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventExtension_NotificationMethodDescriptor]
ON [de].[RestraintEventExtension] ([NotificationMethodDescriptorId] ASC)
GO

ALTER TABLE [de].[RestraintEventExtension] WITH CHECK ADD CONSTRAINT [FK_RestraintEventExtension_RestraintEvent] FOREIGN KEY ([RestraintEventIdentifier], [SchoolId], [StudentUSI])
REFERENCES [edfi].[RestraintEvent] ([RestraintEventIdentifier], [SchoolId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[RestraintEventExtension] WITH CHECK ADD CONSTRAINT [FK_RestraintEventExtension_RestraintEventCategoryDescriptor] FOREIGN KEY ([RestraintEventCategoryDescriptorId])
REFERENCES [de].[RestraintEventCategoryDescriptor] ([RestraintEventCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventExtension_RestraintEventCategoryDescriptor]
ON [de].[RestraintEventExtension] ([RestraintEventCategoryDescriptorId] ASC)
GO

ALTER TABLE [de].[RestraintEventExtension] WITH CHECK ADD CONSTRAINT [FK_RestraintEventExtension_SupportPlanChangeDescriptor] FOREIGN KEY ([SupportPlanChangeDescriptorId])
REFERENCES [de].[SupportPlanChangeDescriptor] ([SupportPlanChangeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventExtension_SupportPlanChangeDescriptor]
ON [de].[RestraintEventExtension] ([SupportPlanChangeDescriptorId] ASC)
GO

ALTER TABLE [de].[RestraintEventExtension] WITH CHECK ADD CONSTRAINT [FK_RestraintEventExtension_TreatmentDescriptor] FOREIGN KEY ([StudentTreatmentDescriptorId])
REFERENCES [de].[TreatmentDescriptor] ([TreatmentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventExtension_TreatmentDescriptor]
ON [de].[RestraintEventExtension] ([StudentTreatmentDescriptorId] ASC)
GO

ALTER TABLE [de].[RestraintEventStaffParticipation] WITH CHECK ADD CONSTRAINT [FK_RestraintEventStaffParticipation_RestraintEvent] FOREIGN KEY ([RestraintEventIdentifier], [SchoolId], [StudentUSI])
REFERENCES [edfi].[RestraintEvent] ([RestraintEventIdentifier], [SchoolId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[RestraintEventStaffParticipation] WITH CHECK ADD CONSTRAINT [FK_RestraintEventStaffParticipation_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventStaffParticipation_Staff]
ON [de].[RestraintEventStaffParticipation] ([StaffUSI] ASC)
GO

ALTER TABLE [de].[RestraintEventStaffParticipation] WITH CHECK ADD CONSTRAINT [FK_RestraintEventStaffParticipation_TreatmentDescriptor] FOREIGN KEY ([StaffTreatmentDescriptorId])
REFERENCES [de].[TreatmentDescriptor] ([TreatmentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventStaffParticipation_TreatmentDescriptor]
ON [de].[RestraintEventStaffParticipation] ([StaffTreatmentDescriptorId] ASC)
GO

ALTER TABLE [de].[SectionExtension] WITH CHECK ADD CONSTRAINT [FK_SectionExtension_School] FOREIGN KEY ([UnitCountExceptionSchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionExtension_School]
ON [de].[SectionExtension] ([UnitCountExceptionSchoolId] ASC)
GO

ALTER TABLE [de].[SectionExtension] WITH CHECK ADD CONSTRAINT [FK_SectionExtension_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [de].[SpecialEducationFundingDescriptor] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationFundingDescriptor_Descriptor] FOREIGN KEY ([SpecialEducationFundingDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StaffEducationOrganizationAssignmentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationExtension_StaffEducationOrganizationAssignmentAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationAssignmentAssociation] ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentContactAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentContactAssociationExtension_LocalEducationAgency] FOREIGN KEY ([LocalEducationAgencyId])
REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentContactAssociationExtension_LocalEducationAgency]
ON [de].[StudentContactAssociationExtension] ([LocalEducationAgencyId] ASC)
GO

ALTER TABLE [de].[StudentContactAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentContactAssociationExtension_StudentContactAssociation] FOREIGN KEY ([ContactUSI], [StudentUSI])
REFERENCES [edfi].[StudentContactAssociation] ([ContactUSI], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentCTEProgramAssociationCTECertification] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationCTECertification_CTECertificationDescriptor] FOREIGN KEY ([CTECertificationDescriptorId])
REFERENCES [de].[CTECertificationDescriptor] ([CTECertificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationCTECertification_CTECertificationDescriptor]
ON [de].[StudentCTEProgramAssociationCTECertification] ([CTECertificationDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentCTEProgramAssociationCTECertification] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationCTECertification_StudentCTEProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentCTEProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentCTEProgramAssociationCTEProgramServiceExtension] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationCTEProgramServiceExtension_StudentCTEProgramAssociationCTEProgramService] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI], [CTEProgramServiceDescriptorId])
REFERENCES [edfi].[StudentCTEProgramAssociationCTEProgramService] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI], [CTEProgramServiceDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentDisciplineIncidentBehaviorAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationExtension_ArrestInformationDescriptor] FOREIGN KEY ([ArrestInformationDescriptorId])
REFERENCES [de].[ArrestInformationDescriptor] ([ArrestInformationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentBehaviorAssociationExtension_ArrestInformationDescriptor]
ON [de].[StudentDisciplineIncidentBehaviorAssociationExtension] ([ArrestInformationDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentDisciplineIncidentBehaviorAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationExtension_StudentDisciplineIncidentBehaviorAssociation] FOREIGN KEY ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI])
REFERENCES [edfi].[StudentDisciplineIncidentBehaviorAssociation] ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentDisciplineIncidentNonOffenderAssociationBullyingCategory] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentNonOffenderAssociationBullyingCategory_BullyingCategoryDescriptor] FOREIGN KEY ([BullyingCategoryDescriptorId])
REFERENCES [de].[BullyingCategoryDescriptor] ([BullyingCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentNonOffenderAssociationBullyingCategory_BullyingCategoryDescriptor]
ON [de].[StudentDisciplineIncidentNonOffenderAssociationBullyingCategory] ([BullyingCategoryDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentDisciplineIncidentNonOffenderAssociationBullyingCategory] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentNonOffenderAssociationBullyingCategory_StudentDisciplineIncidentNonOffenderAssociation] FOREIGN KEY ([IncidentIdentifier], [SchoolId], [StudentUSI])
REFERENCES [edfi].[StudentDisciplineIncidentNonOffenderAssociation] ([IncidentIdentifier], [SchoolId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentDisciplineIncidentNonOffenderAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentNonOffenderAssociationExtension_IncidentRelatedToDescriptor] FOREIGN KEY ([ReasonIncidentRelatedToDescriptorId])
REFERENCES [de].[IncidentRelatedToDescriptor] ([IncidentRelatedToDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentNonOffenderAssociationExtension_IncidentRelatedToDescriptor]
ON [de].[StudentDisciplineIncidentNonOffenderAssociationExtension] ([ReasonIncidentRelatedToDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentDisciplineIncidentNonOffenderAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentNonOffenderAssociationExtension_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentNonOffenderAssociationExtension_Staff]
ON [de].[StudentDisciplineIncidentNonOffenderAssociationExtension] ([StaffUSI] ASC)
GO

ALTER TABLE [de].[StudentDisciplineIncidentNonOffenderAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentNonOffenderAssociationExtension_StudentDisciplineIncidentNonOffenderAssociation] FOREIGN KEY ([IncidentIdentifier], [SchoolId], [StudentUSI])
REFERENCES [edfi].[StudentDisciplineIncidentNonOffenderAssociation] ([IncidentIdentifier], [SchoolId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentEarlyChildhoodProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentEarlyChildhoodProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentEarlyChildhoodProgramAssociationSpecialEducationFunding] WITH CHECK ADD CONSTRAINT [FK_StudentEarlyChildhoodProgramAssociationSpecialEducationFunding_SpecialEducationFundingDescriptor] FOREIGN KEY ([SpecialEducationFundingDescriptorId])
REFERENCES [de].[SpecialEducationFundingDescriptor] ([SpecialEducationFundingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEarlyChildhoodProgramAssociationSpecialEducationFunding_SpecialEducationFundingDescriptor]
ON [de].[StudentEarlyChildhoodProgramAssociationSpecialEducationFunding] ([SpecialEducationFundingDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentEarlyChildhoodProgramAssociationSpecialEducationFunding] WITH CHECK ADD CONSTRAINT [FK_StudentEarlyChildhoodProgramAssociationSpecialEducationFunding_StudentEarlyChildhoodProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [de].[StudentEarlyChildhoodProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentEducationOrganizationAssociationAddressCharacteristic] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationAddressCharacteristic_AddressCharacteristicDescriptor] FOREIGN KEY ([AddressCharacteristicDescriptorId])
REFERENCES [de].[AddressCharacteristicDescriptor] ([AddressCharacteristicDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAddressCharacteristic_AddressCharacteristicDescriptor]
ON [de].[StudentEducationOrganizationAssociationAddressCharacteristic] ([AddressCharacteristicDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentEducationOrganizationAssociationAddressCharacteristic] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationAddressCharacteristic_StudentEducationOrganizationAssociationAddress] FOREIGN KEY ([EducationOrganizationId], [StudentUSI], [AddressTypeDescriptorId], [City], [PostalCode], [StateAbbreviationDescriptorId], [StreetNumberName])
REFERENCES [edfi].[StudentEducationOrganizationAssociationAddress] ([EducationOrganizationId], [StudentUSI], [AddressTypeDescriptorId], [City], [PostalCode], [StateAbbreviationDescriptorId], [StreetNumberName])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_SchoolYearType]
ON [de].[StudentEducationOrganizationAssociationExtension] ([SchoolYear] ASC)
GO

ALTER TABLE [de].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentEducationOrganizationAssociationMultiliteracy] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationMultiliteracy_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationMultiliteracy_LanguageDescriptor]
ON [de].[StudentEducationOrganizationAssociationMultiliteracy] ([LanguageDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentEducationOrganizationAssociationMultiliteracy] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationMultiliteracy_MultiliteracyCertificateCategoryDescriptor] FOREIGN KEY ([MultiliteracyCertificateCategoryDescriptorId])
REFERENCES [de].[MultiliteracyCertificateCategoryDescriptor] ([MultiliteracyCertificateCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationMultiliteracy_MultiliteracyCertificateCategoryDescriptor]
ON [de].[StudentEducationOrganizationAssociationMultiliteracy] ([MultiliteracyCertificateCategoryDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentEducationOrganizationAssociationMultiliteracy] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationMultiliteracy_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentEducationOrganizationAssociationPriorId] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationPriorId_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentHealthAlert] WITH CHECK ADD CONSTRAINT [FK_StudentHealthAlert_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [de].[StudentHealthAlert] WITH CHECK ADD CONSTRAINT [FK_StudentHealthAlert_HealthAlertCategoryDescriptor] FOREIGN KEY ([HealthAlertCategoryDescriptorId])
REFERENCES [de].[HealthAlertCategoryDescriptor] ([HealthAlertCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentHealthAlert_HealthAlertCategoryDescriptor]
ON [de].[StudentHealthAlert] ([HealthAlertCategoryDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentHealthAlert] WITH CHECK ADD CONSTRAINT [FK_StudentHealthAlert_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

ALTER TABLE [de].[StudentLanguageInstructionProgramAssociationLanguageImmersion] WITH CHECK ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationLanguageImmersion_LanguageDescriptor] FOREIGN KEY ([ImmersionLanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentLanguageInstructionProgramAssociationLanguageImmersion_LanguageDescriptor]
ON [de].[StudentLanguageInstructionProgramAssociationLanguageImmersion] ([ImmersionLanguageDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentLanguageInstructionProgramAssociationLanguageImmersion] WITH CHECK ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationLanguageImmersion_StudentLanguageInstructionProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentLanguageInstructionProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentMedicaidProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentMedicaidProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentSection504ProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSection504ProgramAssociationExtension_StudentSection504ProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSection504ProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_AlternateCalendarProgramDescriptor] FOREIGN KEY ([AlternateCalendarProgramDescriptorId])
REFERENCES [de].[AlternateCalendarProgramDescriptor] ([AlternateCalendarProgramDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_AlternateCalendarProgramDescriptor]
ON [de].[StudentSpecialEducationProgramAssociationExtension] ([AlternateCalendarProgramDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_BirthMandateDescriptor] FOREIGN KEY ([BirthMandateDescriptorId])
REFERENCES [de].[BirthMandateDescriptor] ([BirthMandateDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_BirthMandateDescriptor]
ON [de].[StudentSpecialEducationProgramAssociationExtension] ([BirthMandateDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_DiplomaCertificateCategoryDescriptor] FOREIGN KEY ([DiplomaCertificateCategoryDescriptorId])
REFERENCES [de].[DiplomaCertificateCategoryDescriptor] ([DiplomaCertificateCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_DiplomaCertificateCategoryDescriptor]
ON [de].[StudentSpecialEducationProgramAssociationExtension] ([DiplomaCertificateCategoryDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_FundingNeedsCategoryDescriptor] FOREIGN KEY ([FundingNeedsCategoryDescriptorId])
REFERENCES [de].[FundingNeedsCategoryDescriptor] ([FundingNeedsCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_FundingNeedsCategoryDescriptor]
ON [de].[StudentSpecialEducationProgramAssociationExtension] ([FundingNeedsCategoryDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_IEPImplementationAfterThirdBirthdayReasonDescriptor] FOREIGN KEY ([IEPImplementationAfterThirdBirthdayReasonDescriptorId])
REFERENCES [de].[IEPImplementationAfterThirdBirthdayReasonDescriptor] ([IEPImplementationAfterThirdBirthdayReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_IEPImplementationAfterThirdBirthdayReasonDescriptor]
ON [de].[StudentSpecialEducationProgramAssociationExtension] ([IEPImplementationAfterThirdBirthdayReasonDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_OutOfTimelineReasonDescriptor] FOREIGN KEY ([OutOfTimelineReasonDescriptorId])
REFERENCES [de].[OutOfTimelineReasonDescriptor] ([OutOfTimelineReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_OutOfTimelineReasonDescriptor]
ON [de].[StudentSpecialEducationProgramAssociationExtension] ([OutOfTimelineReasonDescriptorId] ASC)
GO

ALTER TABLE [de].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [de].[SupportPlanChangeDescriptor] WITH CHECK ADD CONSTRAINT [FK_SupportPlanChangeDescriptor_Descriptor] FOREIGN KEY ([SupportPlanChangeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [de].[TreatmentDescriptor] WITH CHECK ADD CONSTRAINT [FK_TreatmentDescriptor_Descriptor] FOREIGN KEY ([TreatmentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO


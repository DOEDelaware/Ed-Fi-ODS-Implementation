DROP TRIGGER IF EXISTS [de].[de_AddressCharacteristicDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_AddressCharacteristicDescriptor_TR_DeleteTracking] ON [de].[AddressCharacteristicDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.AddressCharacteristicDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.AddressCharacteristicDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AddressCharacteristicDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[AddressCharacteristicDescriptor] ENABLE TRIGGER [de_AddressCharacteristicDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_AlternateCalendarProgramDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_AlternateCalendarProgramDescriptor_TR_DeleteTracking] ON [de].[AlternateCalendarProgramDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.AlternateCalendarProgramDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.AlternateCalendarProgramDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AlternateCalendarProgramDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[AlternateCalendarProgramDescriptor] ENABLE TRIGGER [de_AlternateCalendarProgramDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_ArrestInformationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_ArrestInformationDescriptor_TR_DeleteTracking] ON [de].[ArrestInformationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ArrestInformationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.ArrestInformationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ArrestInformationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[ArrestInformationDescriptor] ENABLE TRIGGER [de_ArrestInformationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_BirthMandateDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_BirthMandateDescriptor_TR_DeleteTracking] ON [de].[BirthMandateDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.BirthMandateDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.BirthMandateDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BirthMandateDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[BirthMandateDescriptor] ENABLE TRIGGER [de_BirthMandateDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_BullyingCategoryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_BullyingCategoryDescriptor_TR_DeleteTracking] ON [de].[BullyingCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.BullyingCategoryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.BullyingCategoryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BullyingCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[BullyingCategoryDescriptor] ENABLE TRIGGER [de_BullyingCategoryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_ChoiceBasisDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_ChoiceBasisDescriptor_TR_DeleteTracking] ON [de].[ChoiceBasisDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ChoiceBasisDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.ChoiceBasisDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ChoiceBasisDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[ChoiceBasisDescriptor] ENABLE TRIGGER [de_ChoiceBasisDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_CTECertificationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_CTECertificationDescriptor_TR_DeleteTracking] ON [de].[CTECertificationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CTECertificationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.CTECertificationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CTECertificationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[CTECertificationDescriptor] ENABLE TRIGGER [de_CTECertificationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_DeescalationTechniqueDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_DeescalationTechniqueDescriptor_TR_DeleteTracking] ON [de].[DeescalationTechniqueDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DeescalationTechniqueDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.DeescalationTechniqueDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DeescalationTechniqueDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[DeescalationTechniqueDescriptor] ENABLE TRIGGER [de_DeescalationTechniqueDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_DiplomaCertificateCategoryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_DiplomaCertificateCategoryDescriptor_TR_DeleteTracking] ON [de].[DiplomaCertificateCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DiplomaCertificateCategoryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.DiplomaCertificateCategoryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DiplomaCertificateCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[DiplomaCertificateCategoryDescriptor] ENABLE TRIGGER [de_DiplomaCertificateCategoryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_DisciplineActionPlacementTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_DisciplineActionPlacementTypeDescriptor_TR_DeleteTracking] ON [de].[DisciplineActionPlacementTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DisciplineActionPlacementTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.DisciplineActionPlacementTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DisciplineActionPlacementTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[DisciplineActionPlacementTypeDescriptor] ENABLE TRIGGER [de_DisciplineActionPlacementTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_FerpaOptOutDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_FerpaOptOutDescriptor_TR_DeleteTracking] ON [de].[FerpaOptOutDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.FerpaOptOutDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.FerpaOptOutDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FerpaOptOutDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[FerpaOptOutDescriptor] ENABLE TRIGGER [de_FerpaOptOutDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_FollowupCategoryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_FollowupCategoryDescriptor_TR_DeleteTracking] ON [de].[FollowupCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.FollowupCategoryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.FollowupCategoryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FollowupCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[FollowupCategoryDescriptor] ENABLE TRIGGER [de_FollowupCategoryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_FundingNeedsCategoryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_FundingNeedsCategoryDescriptor_TR_DeleteTracking] ON [de].[FundingNeedsCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.FundingNeedsCategoryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.FundingNeedsCategoryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FundingNeedsCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[FundingNeedsCategoryDescriptor] ENABLE TRIGGER [de_FundingNeedsCategoryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_HealthAlertCategoryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_HealthAlertCategoryDescriptor_TR_DeleteTracking] ON [de].[HealthAlertCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.HealthAlertCategoryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.HealthAlertCategoryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HealthAlertCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[HealthAlertCategoryDescriptor] ENABLE TRIGGER [de_HealthAlertCategoryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_IEPImplementationAfterThirdBirthdayReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_IEPImplementationAfterThirdBirthdayReasonDescriptor_TR_DeleteTracking] ON [de].[IEPImplementationAfterThirdBirthdayReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IEPImplementationAfterThirdBirthdayReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.IEPImplementationAfterThirdBirthdayReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IEPImplementationAfterThirdBirthdayReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[IEPImplementationAfterThirdBirthdayReasonDescriptor] ENABLE TRIGGER [de_IEPImplementationAfterThirdBirthdayReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_IncidentRelatedToDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_IncidentRelatedToDescriptor_TR_DeleteTracking] ON [de].[IncidentRelatedToDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IncidentRelatedToDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.IncidentRelatedToDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IncidentRelatedToDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[IncidentRelatedToDescriptor] ENABLE TRIGGER [de_IncidentRelatedToDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_LocationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_LocationDescriptor_TR_DeleteTracking] ON [de].[LocationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.LocationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.LocationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.LocationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[LocationDescriptor] ENABLE TRIGGER [de_LocationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_MultiliteracyCertificateCategoryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_MultiliteracyCertificateCategoryDescriptor_TR_DeleteTracking] ON [de].[MultiliteracyCertificateCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.MultiliteracyCertificateCategoryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.MultiliteracyCertificateCategoryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.MultiliteracyCertificateCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[MultiliteracyCertificateCategoryDescriptor] ENABLE TRIGGER [de_MultiliteracyCertificateCategoryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_NonViolentTechniqueDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_NonViolentTechniqueDescriptor_TR_DeleteTracking] ON [de].[NonViolentTechniqueDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.NonViolentTechniqueDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.NonViolentTechniqueDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NonViolentTechniqueDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[NonViolentTechniqueDescriptor] ENABLE TRIGGER [de_NonViolentTechniqueDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_NotificationMethodDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_NotificationMethodDescriptor_TR_DeleteTracking] ON [de].[NotificationMethodDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.NotificationMethodDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.NotificationMethodDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NotificationMethodDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[NotificationMethodDescriptor] ENABLE TRIGGER [de_NotificationMethodDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_OutOfTimelineReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_OutOfTimelineReasonDescriptor_TR_DeleteTracking] ON [de].[OutOfTimelineReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.OutOfTimelineReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.OutOfTimelineReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.OutOfTimelineReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[OutOfTimelineReasonDescriptor] ENABLE TRIGGER [de_OutOfTimelineReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_ReasonForLateIEPDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_ReasonForLateIEPDescriptor_TR_DeleteTracking] ON [de].[ReasonForLateIEPDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ReasonForLateIEPDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.ReasonForLateIEPDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ReasonForLateIEPDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[ReasonForLateIEPDescriptor] ENABLE TRIGGER [de_ReasonForLateIEPDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_RestraintEventCategoryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_RestraintEventCategoryDescriptor_TR_DeleteTracking] ON [de].[RestraintEventCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.RestraintEventCategoryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.RestraintEventCategoryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RestraintEventCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[RestraintEventCategoryDescriptor] ENABLE TRIGGER [de_RestraintEventCategoryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_SpecialEducationFundingDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_SpecialEducationFundingDescriptor_TR_DeleteTracking] ON [de].[SpecialEducationFundingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SpecialEducationFundingDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.SpecialEducationFundingDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SpecialEducationFundingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[SpecialEducationFundingDescriptor] ENABLE TRIGGER [de_SpecialEducationFundingDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_StudentHealthAlert_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_StudentHealthAlert_TR_DeleteTracking] ON [de].[StudentHealthAlert] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_de].[StudentHealthAlert](OldEducationOrganizationId, OldHealthAlertCategoryDescriptorId, OldHealthAlertCategoryDescriptorNamespace, OldHealthAlertCategoryDescriptorCodeValue, OldStartDate, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.HealthAlertCategoryDescriptorId, j0.Namespace, j0.CodeValue, d.StartDate, d.StudentUSI, j1.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.HealthAlertCategoryDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Student j1
            ON d.StudentUSI = j1.StudentUSI
END
GO

ALTER TABLE [de].[StudentHealthAlert] ENABLE TRIGGER [de_StudentHealthAlert_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_SupportPlanChangeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_SupportPlanChangeDescriptor_TR_DeleteTracking] ON [de].[SupportPlanChangeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SupportPlanChangeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.SupportPlanChangeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SupportPlanChangeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[SupportPlanChangeDescriptor] ENABLE TRIGGER [de_SupportPlanChangeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [de].[de_TreatmentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [de].[de_TreatmentDescriptor_TR_DeleteTracking] ON [de].[TreatmentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.TreatmentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'de.TreatmentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TreatmentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[TreatmentDescriptor] ENABLE TRIGGER [de_TreatmentDescriptor_TR_DeleteTracking]
GO



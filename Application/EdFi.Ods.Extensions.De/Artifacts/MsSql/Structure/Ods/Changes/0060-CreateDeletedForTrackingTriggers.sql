CREATE TRIGGER [de].[de_APExamCodeDescriptor_TR_DeleteTracking] ON [de].[APExamCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[APExamCodeDescriptor](APExamCodeDescriptorId, Id, ChangeVersion)
    SELECT  d.APExamCodeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.APExamCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[APExamCodeDescriptor] ENABLE TRIGGER [de_APExamCodeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_AcceptanceStatusDescriptor_TR_DeleteTracking] ON [de].[AcceptanceStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[AcceptanceStatusDescriptor](AcceptanceStatusDescriptorId, Id, ChangeVersion)
    SELECT  d.AcceptanceStatusDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AcceptanceStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[AcceptanceStatusDescriptor] ENABLE TRIGGER [de_AcceptanceStatusDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_AllegedBullyingVictim_TR_DeleteTracking] ON [de].[AllegedBullyingVictim] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[AllegedBullyingVictim](AllegedIncidentDate, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  AllegedIncidentDate, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[AllegedBullyingVictim] ENABLE TRIGGER [de_AllegedBullyingVictim_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_AttendanceConfigurationCategoryDescriptor_TR_DeleteTracking] ON [de].[AttendanceConfigurationCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[AttendanceConfigurationCategoryDescriptor](AttendanceConfigurationCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.AttendanceConfigurationCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AttendanceConfigurationCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[AttendanceConfigurationCategoryDescriptor] ENABLE TRIGGER [de_AttendanceConfigurationCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_BullyingCategoryDescriptor_TR_DeleteTracking] ON [de].[BullyingCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[BullyingCategoryDescriptor](BullyingCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.BullyingCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BullyingCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[BullyingCategoryDescriptor] ENABLE TRIGGER [de_BullyingCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_CIPCourse_TR_DeleteTracking] ON [de].[CIPCourse] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[CIPCourse](CIPCode, LocalEducationAgencyId, Id, ChangeVersion)
    SELECT  CIPCode, LocalEducationAgencyId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[CIPCourse] ENABLE TRIGGER [de_CIPCourse_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_CertificateCategoryDescriptor_TR_DeleteTracking] ON [de].[CertificateCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[CertificateCategoryDescriptor](CertificateCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.CertificateCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CertificateCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[CertificateCategoryDescriptor] ENABLE TRIGGER [de_CertificateCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_CertificationDescriptor_TR_DeleteTracking] ON [de].[CertificationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[CertificationDescriptor](CertificationDescriptorId, Id, ChangeVersion)
    SELECT  d.CertificationDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CertificationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[CertificationDescriptor] ENABLE TRIGGER [de_CertificationDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_ChoiceCategoryDescriptor_TR_DeleteTracking] ON [de].[ChoiceCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[ChoiceCategoryDescriptor](ChoiceCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.ChoiceCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ChoiceCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[ChoiceCategoryDescriptor] ENABLE TRIGGER [de_ChoiceCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_CoreSubjectDescriptor_TR_DeleteTracking] ON [de].[CoreSubjectDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[CoreSubjectDescriptor](CoreSubjectDescriptorId, Id, ChangeVersion)
    SELECT  d.CoreSubjectDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CoreSubjectDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[CoreSubjectDescriptor] ENABLE TRIGGER [de_CoreSubjectDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_CycleDescriptor_TR_DeleteTracking] ON [de].[CycleDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[CycleDescriptor](CycleDescriptorId, Id, ChangeVersion)
    SELECT  d.CycleDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CycleDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[CycleDescriptor] ENABLE TRIGGER [de_CycleDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_DeescalationTechniqueDescriptor_TR_DeleteTracking] ON [de].[DeescalationTechniqueDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[DeescalationTechniqueDescriptor](DeescalationTechniqueDescriptorId, Id, ChangeVersion)
    SELECT  d.DeescalationTechniqueDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DeescalationTechniqueDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[DeescalationTechniqueDescriptor] ENABLE TRIGGER [de_DeescalationTechniqueDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_DiplomaCertificateCategoryDescriptor_TR_DeleteTracking] ON [de].[DiplomaCertificateCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[DiplomaCertificateCategoryDescriptor](DiplomaCertificateCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.DiplomaCertificateCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DiplomaCertificateCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[DiplomaCertificateCategoryDescriptor] ENABLE TRIGGER [de_DiplomaCertificateCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_DisciplineDispositionDescriptor_TR_DeleteTracking] ON [de].[DisciplineDispositionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[DisciplineDispositionDescriptor](DisciplineDispositionDescriptorId, Id, ChangeVersion)
    SELECT  d.DisciplineDispositionDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DisciplineDispositionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[DisciplineDispositionDescriptor] ENABLE TRIGGER [de_DisciplineDispositionDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_DisciplineIncidentCode_TR_DeleteTracking] ON [de].[DisciplineIncidentCode] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[DisciplineIncidentCode](BehaviorDescriptorId, Id, ChangeVersion)
    SELECT  BehaviorDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[DisciplineIncidentCode] ENABLE TRIGGER [de_DisciplineIncidentCode_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_EnrollmentTypeDescriptor_TR_DeleteTracking] ON [de].[EnrollmentTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[EnrollmentTypeDescriptor](EnrollmentTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.EnrollmentTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EnrollmentTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[EnrollmentTypeDescriptor] ENABLE TRIGGER [de_EnrollmentTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_FerpaOptOutDescriptor_TR_DeleteTracking] ON [de].[FerpaOptOutDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[FerpaOptOutDescriptor](FerpaOptOutDescriptorId, Id, ChangeVersion)
    SELECT  d.FerpaOptOutDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FerpaOptOutDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[FerpaOptOutDescriptor] ENABLE TRIGGER [de_FerpaOptOutDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_FollowupCategoryDescriptor_TR_DeleteTracking] ON [de].[FollowupCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[FollowupCategoryDescriptor](FollowupCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.FollowupCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FollowupCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[FollowupCategoryDescriptor] ENABLE TRIGGER [de_FollowupCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_FundingNeedsCategoryDescriptor_TR_DeleteTracking] ON [de].[FundingNeedsCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[FundingNeedsCategoryDescriptor](FundingNeedsCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.FundingNeedsCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FundingNeedsCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[FundingNeedsCategoryDescriptor] ENABLE TRIGGER [de_FundingNeedsCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_GradeTypeDetail_TR_DeleteTracking] ON [de].[GradeTypeDetail] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[GradeTypeDetail](GradeTypeDescriptorId, SchoolId, Id, ChangeVersion)
    SELECT  GradeTypeDescriptorId, SchoolId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[GradeTypeDetail] ENABLE TRIGGER [de_GradeTypeDetail_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_GradeTypeWhenTakenDescriptor_TR_DeleteTracking] ON [de].[GradeTypeWhenTakenDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[GradeTypeWhenTakenDescriptor](GradeTypeWhenTakenDescriptorId, Id, ChangeVersion)
    SELECT  d.GradeTypeWhenTakenDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.GradeTypeWhenTakenDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[GradeTypeWhenTakenDescriptor] ENABLE TRIGGER [de_GradeTypeWhenTakenDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_ImmunizationCodeDescriptor_TR_DeleteTracking] ON [de].[ImmunizationCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[ImmunizationCodeDescriptor](ImmunizationCodeDescriptorId, Id, ChangeVersion)
    SELECT  d.ImmunizationCodeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ImmunizationCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[ImmunizationCodeDescriptor] ENABLE TRIGGER [de_ImmunizationCodeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_IncidentRelatedToDescriptor_TR_DeleteTracking] ON [de].[IncidentRelatedToDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[IncidentRelatedToDescriptor](IncidentRelatedToDescriptorId, Id, ChangeVersion)
    SELECT  d.IncidentRelatedToDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IncidentRelatedToDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[IncidentRelatedToDescriptor] ENABLE TRIGGER [de_IncidentRelatedToDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_InjuryDescriptor_TR_DeleteTracking] ON [de].[InjuryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[InjuryDescriptor](InjuryDescriptorId, Id, ChangeVersion)
    SELECT  d.InjuryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.InjuryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[InjuryDescriptor] ENABLE TRIGGER [de_InjuryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_LevelDetail_TR_DeleteTracking] ON [de].[LevelDetail] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[LevelDetail](LevelNumber, Mark, SchoolId, Id, ChangeVersion)
    SELECT  LevelNumber, Mark, SchoolId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[LevelDetail] ENABLE TRIGGER [de_LevelDetail_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_LocationDescriptor_TR_DeleteTracking] ON [de].[LocationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[LocationDescriptor](LocationDescriptorId, Id, ChangeVersion)
    SELECT  d.LocationDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.LocationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[LocationDescriptor] ENABLE TRIGGER [de_LocationDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_MedicalAlertCategoryDescriptor_TR_DeleteTracking] ON [de].[MedicalAlertCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[MedicalAlertCategoryDescriptor](MedicalAlertCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.MedicalAlertCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.MedicalAlertCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[MedicalAlertCategoryDescriptor] ENABLE TRIGGER [de_MedicalAlertCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_MedicalAlert_TR_DeleteTracking] ON [de].[MedicalAlert] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[MedicalAlert](MedicalAlertCategoryDescriptorId, Id, ChangeVersion)
    SELECT  MedicalAlertCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[MedicalAlert] ENABLE TRIGGER [de_MedicalAlert_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_MedicalDispositionDescriptor_TR_DeleteTracking] ON [de].[MedicalDispositionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[MedicalDispositionDescriptor](MedicalDispositionDescriptorId, Id, ChangeVersion)
    SELECT  d.MedicalDispositionDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.MedicalDispositionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[MedicalDispositionDescriptor] ENABLE TRIGGER [de_MedicalDispositionDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_MedicalOfficeVisit_TR_DeleteTracking] ON [de].[MedicalOfficeVisit] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[MedicalOfficeVisit](OfficeInDate, PersonId, SourceSystemDescriptorId, Id, ChangeVersion)
    SELECT  OfficeInDate, PersonId, SourceSystemDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[MedicalOfficeVisit] ENABLE TRIGGER [de_MedicalOfficeVisit_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_MedicalReferralFollowUp_TR_DeleteTracking] ON [de].[MedicalReferralFollowUp] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[MedicalReferralFollowUp](FollowupCategoryDescriptorId, MedicalTestCategoryDescriptorId, PersonId, SourceSystemDescriptorId, TestDate, Id, ChangeVersion)
    SELECT  FollowupCategoryDescriptorId, MedicalTestCategoryDescriptorId, PersonId, SourceSystemDescriptorId, TestDate, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[MedicalReferralFollowUp] ENABLE TRIGGER [de_MedicalReferralFollowUp_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_MedicalScreening_TR_DeleteTracking] ON [de].[MedicalScreening] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[MedicalScreening](MedicalTestCategoryDescriptorId, PersonId, SourceSystemDescriptorId, TestDate, Id, ChangeVersion)
    SELECT  MedicalTestCategoryDescriptorId, PersonId, SourceSystemDescriptorId, TestDate, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[MedicalScreening] ENABLE TRIGGER [de_MedicalScreening_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_MedicalTestCategoryDescriptor_TR_DeleteTracking] ON [de].[MedicalTestCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[MedicalTestCategoryDescriptor](MedicalTestCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.MedicalTestCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.MedicalTestCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[MedicalTestCategoryDescriptor] ENABLE TRIGGER [de_MedicalTestCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_MedicalTreatmentCodeDescriptor_TR_DeleteTracking] ON [de].[MedicalTreatmentCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[MedicalTreatmentCodeDescriptor](MedicalTreatmentCodeDescriptorId, Id, ChangeVersion)
    SELECT  d.MedicalTreatmentCodeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.MedicalTreatmentCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[MedicalTreatmentCodeDescriptor] ENABLE TRIGGER [de_MedicalTreatmentCodeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_MedicalVisitReasonDescriptor_TR_DeleteTracking] ON [de].[MedicalVisitReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[MedicalVisitReasonDescriptor](MedicalVisitReasonDescriptorId, Id, ChangeVersion)
    SELECT  d.MedicalVisitReasonDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.MedicalVisitReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[MedicalVisitReasonDescriptor] ENABLE TRIGGER [de_MedicalVisitReasonDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_MedicationBox_TR_DeleteTracking] ON [de].[MedicationBox] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[MedicationBox](LocalEducationAgencyId, MedicationBoxId, Id, ChangeVersion)
    SELECT  LocalEducationAgencyId, MedicationBoxId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[MedicationBox] ENABLE TRIGGER [de_MedicationBox_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_NonStudent_TR_DeleteTracking] ON [de].[NonStudent] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[NonStudent](LocalEducationAgencyId, NonStudentLocalId, Id, ChangeVersion)
    SELECT  LocalEducationAgencyId, NonStudentLocalId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[NonStudent] ENABLE TRIGGER [de_NonStudent_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_NonViolentTechniqueDescriptor_TR_DeleteTracking] ON [de].[NonViolentTechniqueDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[NonViolentTechniqueDescriptor](NonViolentTechniqueDescriptorId, Id, ChangeVersion)
    SELECT  d.NonViolentTechniqueDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NonViolentTechniqueDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[NonViolentTechniqueDescriptor] ENABLE TRIGGER [de_NonViolentTechniqueDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_NotificationMethodDescriptor_TR_DeleteTracking] ON [de].[NotificationMethodDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[NotificationMethodDescriptor](NotificationMethodDescriptorId, Id, ChangeVersion)
    SELECT  d.NotificationMethodDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NotificationMethodDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[NotificationMethodDescriptor] ENABLE TRIGGER [de_NotificationMethodDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_ParticipationCodeDescriptor_TR_DeleteTracking] ON [de].[ParticipationCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[ParticipationCodeDescriptor](ParticipationCodeDescriptorId, Id, ChangeVersion)
    SELECT  d.ParticipationCodeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ParticipationCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[ParticipationCodeDescriptor] ENABLE TRIGGER [de_ParticipationCodeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_PersonCategoryDescriptor_TR_DeleteTracking] ON [de].[PersonCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[PersonCategoryDescriptor](PersonCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.PersonCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PersonCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[PersonCategoryDescriptor] ENABLE TRIGGER [de_PersonCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_PersonDisciplineAction_TR_DeleteTracking] ON [de].[PersonDisciplineAction] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[PersonDisciplineAction](ActionIdentifier, ActionStartDate, IncidentIdentifier, PersonId, SchoolId, SourceSystemDescriptorId, Id, ChangeVersion)
    SELECT  ActionIdentifier, ActionStartDate, IncidentIdentifier, PersonId, SchoolId, SourceSystemDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[PersonDisciplineAction] ENABLE TRIGGER [de_PersonDisciplineAction_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_PersonDisciplineIncidentAssociation_TR_DeleteTracking] ON [de].[PersonDisciplineIncidentAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[PersonDisciplineIncidentAssociation](IncidentIdentifier, ParticipantNumber, ParticipationCodeDescriptorId, PersonId, SchoolId, SourceSystemDescriptorId, Id, ChangeVersion)
    SELECT  IncidentIdentifier, ParticipantNumber, ParticipationCodeDescriptorId, PersonId, SchoolId, SourceSystemDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[PersonDisciplineIncidentAssociation] ENABLE TRIGGER [de_PersonDisciplineIncidentAssociation_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_PersonImmunization_TR_DeleteTracking] ON [de].[PersonImmunization] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[PersonImmunization](ImmunizationCodeDescriptorId, ImmunizationDate, PersonId, SourceSystemDescriptorId, Id, ChangeVersion)
    SELECT  ImmunizationCodeDescriptorId, ImmunizationDate, PersonId, SourceSystemDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[PersonImmunization] ENABLE TRIGGER [de_PersonImmunization_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_PersonMedicalAlert_TR_DeleteTracking] ON [de].[PersonMedicalAlert] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[PersonMedicalAlert](MedicalAlertCategoryDescriptorId, PersonId, SourceSystemDescriptorId, StartDate, Id, ChangeVersion)
    SELECT  MedicalAlertCategoryDescriptorId, PersonId, SourceSystemDescriptorId, StartDate, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[PersonMedicalAlert] ENABLE TRIGGER [de_PersonMedicalAlert_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_PersonMedicationBoxAssociation_TR_DeleteTracking] ON [de].[PersonMedicationBoxAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[PersonMedicationBoxAssociation](LocalEducationAgencyId, MedicationBoxId, PersonId, SourceSystemDescriptorId, Id, ChangeVersion)
    SELECT  LocalEducationAgencyId, MedicationBoxId, PersonId, SourceSystemDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[PersonMedicationBoxAssociation] ENABLE TRIGGER [de_PersonMedicationBoxAssociation_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_PostSecondaryDetail_TR_DeleteTracking] ON [de].[PostSecondaryDetail] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[PostSecondaryDetail](PostSecondaryEventCategoryDescriptorId, SchoolId, SchoolYear, StudentUSI, Id, ChangeVersion)
    SELECT  PostSecondaryEventCategoryDescriptorId, SchoolId, SchoolYear, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[PostSecondaryDetail] ENABLE TRIGGER [de_PostSecondaryDetail_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_ReasonForLateIEPDescriptor_TR_DeleteTracking] ON [de].[ReasonForLateIEPDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[ReasonForLateIEPDescriptor](ReasonForLateIEPDescriptorId, Id, ChangeVersion)
    SELECT  d.ReasonForLateIEPDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ReasonForLateIEPDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[ReasonForLateIEPDescriptor] ENABLE TRIGGER [de_ReasonForLateIEPDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_ReasonNotApplied4PlusCollegeDescriptor_TR_DeleteTracking] ON [de].[ReasonNotApplied4PlusCollegeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[ReasonNotApplied4PlusCollegeDescriptor](ReasonNotApplied4PlusCollegeDescriptorId, Id, ChangeVersion)
    SELECT  d.ReasonNotApplied4PlusCollegeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ReasonNotApplied4PlusCollegeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[ReasonNotApplied4PlusCollegeDescriptor] ENABLE TRIGGER [de_ReasonNotApplied4PlusCollegeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_ReferralDescriptor_TR_DeleteTracking] ON [de].[ReferralDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[ReferralDescriptor](ReferralDescriptorId, Id, ChangeVersion)
    SELECT  d.ReferralDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ReferralDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[ReferralDescriptor] ENABLE TRIGGER [de_ReferralDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_RestraintEventCategoryDescriptor_TR_DeleteTracking] ON [de].[RestraintEventCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[RestraintEventCategoryDescriptor](RestraintEventCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.RestraintEventCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RestraintEventCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[RestraintEventCategoryDescriptor] ENABLE TRIGGER [de_RestraintEventCategoryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_RestraintSeclusion_TR_DeleteTracking] ON [de].[RestraintSeclusion] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[RestraintSeclusion](EventDate, EventTime, RestraintEventCategoryDescriptorId, RestraintEventReasonDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  EventDate, EventTime, RestraintEventCategoryDescriptorId, RestraintEventReasonDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[RestraintSeclusion] ENABLE TRIGGER [de_RestraintSeclusion_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_ServiceStatusDescriptor_TR_DeleteTracking] ON [de].[ServiceStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[ServiceStatusDescriptor](ServiceStatusDescriptorId, Id, ChangeVersion)
    SELECT  d.ServiceStatusDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[ServiceStatusDescriptor] ENABLE TRIGGER [de_ServiceStatusDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_StaffRoleDescriptor_TR_DeleteTracking] ON [de].[StaffRoleDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[StaffRoleDescriptor](StaffRoleDescriptorId, Id, ChangeVersion)
    SELECT  d.StaffRoleDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffRoleDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[StaffRoleDescriptor] ENABLE TRIGGER [de_StaffRoleDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_Student504ProgramAssociation_TR_DeleteTracking] ON [de].[Student504ProgramAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[Student504ProgramAssociation](BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, Id, ChangeVersion)
    SELECT  d.BeginDate, d.EducationOrganizationId, d.ProgramEducationOrganizationId, d.ProgramName, d.ProgramTypeDescriptorId, d.StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.GeneralStudentProgramAssociation b ON d.BeginDate = b.BeginDate AND d.EducationOrganizationId = b.EducationOrganizationId AND d.ProgramEducationOrganizationId = b.ProgramEducationOrganizationId AND d.ProgramName = b.ProgramName AND d.ProgramTypeDescriptorId = b.ProgramTypeDescriptorId AND d.StudentUSI = b.StudentUSI
END
GO

ALTER TABLE [de].[Student504ProgramAssociation] ENABLE TRIGGER [de_Student504ProgramAssociation_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_StudentEarlyChildhoodProgramAssociation_TR_DeleteTracking] ON [de].[StudentEarlyChildhoodProgramAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[StudentEarlyChildhoodProgramAssociation](BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, Id, ChangeVersion)
    SELECT  d.BeginDate, d.EducationOrganizationId, d.ProgramEducationOrganizationId, d.ProgramName, d.ProgramTypeDescriptorId, d.StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.GeneralStudentProgramAssociation b ON d.BeginDate = b.BeginDate AND d.EducationOrganizationId = b.EducationOrganizationId AND d.ProgramEducationOrganizationId = b.ProgramEducationOrganizationId AND d.ProgramName = b.ProgramName AND d.ProgramTypeDescriptorId = b.ProgramTypeDescriptorId AND d.StudentUSI = b.StudentUSI
END
GO

ALTER TABLE [de].[StudentEarlyChildhoodProgramAssociation] ENABLE TRIGGER [de_StudentEarlyChildhoodProgramAssociation_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_StudentSectionClassPeriodAttendanceEvent_TR_DeleteTracking] ON [de].[StudentSectionClassPeriodAttendanceEvent] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[StudentSectionClassPeriodAttendanceEvent](AttendanceEventCategoryDescriptorId, ClassPeriodName, EventDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI, Id, ChangeVersion)
    SELECT  AttendanceEventCategoryDescriptorId, ClassPeriodName, EventDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[StudentSectionClassPeriodAttendanceEvent] ENABLE TRIGGER [de_StudentSectionClassPeriodAttendanceEvent_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_StudentTransportation_TR_DeleteTracking] ON [de].[StudentTransportation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[StudentTransportation](LocalEducationAgencyId, StudentUSI, TravelDayOfWeekDescriptorId, TravelDirectionDescriptorId, TravelSegment, TravelTrip, Id, ChangeVersion)
    SELECT  LocalEducationAgencyId, StudentUSI, TravelDayOfWeekDescriptorId, TravelDirectionDescriptorId, TravelSegment, TravelTrip, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [de].[StudentTransportation] ENABLE TRIGGER [de_StudentTransportation_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_SupportPlanChangeDescriptor_TR_DeleteTracking] ON [de].[SupportPlanChangeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[SupportPlanChangeDescriptor](SupportPlanChangeDescriptorId, Id, ChangeVersion)
    SELECT  d.SupportPlanChangeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SupportPlanChangeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[SupportPlanChangeDescriptor] ENABLE TRIGGER [de_SupportPlanChangeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_TravelDayOfWeekDescriptor_TR_DeleteTracking] ON [de].[TravelDayOfWeekDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[TravelDayOfWeekDescriptor](TravelDayOfWeekDescriptorId, Id, ChangeVersion)
    SELECT  d.TravelDayOfWeekDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TravelDayOfWeekDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[TravelDayOfWeekDescriptor] ENABLE TRIGGER [de_TravelDayOfWeekDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_TravelDirectionDescriptor_TR_DeleteTracking] ON [de].[TravelDirectionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[TravelDirectionDescriptor](TravelDirectionDescriptorId, Id, ChangeVersion)
    SELECT  d.TravelDirectionDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TravelDirectionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[TravelDirectionDescriptor] ENABLE TRIGGER [de_TravelDirectionDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_TreatmentDescriptor_TR_DeleteTracking] ON [de].[TreatmentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[TreatmentDescriptor](TreatmentDescriptorId, Id, ChangeVersion)
    SELECT  d.TreatmentDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TreatmentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[TreatmentDescriptor] ENABLE TRIGGER [de_TreatmentDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [de].[de_VictimCategoryDescriptor_TR_DeleteTracking] ON [de].[VictimCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_de].[VictimCategoryDescriptor](VictimCategoryDescriptorId, Id, ChangeVersion)
    SELECT  d.VictimCategoryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.VictimCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [de].[VictimCategoryDescriptor] ENABLE TRIGGER [de_VictimCategoryDescriptor_TR_DeleteTracking]
GO



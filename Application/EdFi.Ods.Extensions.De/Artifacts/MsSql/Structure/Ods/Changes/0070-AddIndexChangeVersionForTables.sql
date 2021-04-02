BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.AllegedBullyingVictim') AND name = N'UX_AllegedBullyingVictim_ChangeVersion')
    CREATE INDEX [UX_AllegedBullyingVictim_ChangeVersion] ON [de].[AllegedBullyingVictim] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.CIPCourse') AND name = N'UX_CIPCourse_ChangeVersion')
    CREATE INDEX [UX_CIPCourse_ChangeVersion] ON [de].[CIPCourse] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.DisciplineIncidentCode') AND name = N'UX_DisciplineIncidentCode_ChangeVersion')
    CREATE INDEX [UX_DisciplineIncidentCode_ChangeVersion] ON [de].[DisciplineIncidentCode] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.GradeTypeDetail') AND name = N'UX_GradeTypeDetail_ChangeVersion')
    CREATE INDEX [UX_GradeTypeDetail_ChangeVersion] ON [de].[GradeTypeDetail] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.LevelDetail') AND name = N'UX_LevelDetail_ChangeVersion')
    CREATE INDEX [UX_LevelDetail_ChangeVersion] ON [de].[LevelDetail] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.MedicalAlert') AND name = N'UX_MedicalAlert_ChangeVersion')
    CREATE INDEX [UX_MedicalAlert_ChangeVersion] ON [de].[MedicalAlert] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.MedicalOfficeVisit') AND name = N'UX_MedicalOfficeVisit_ChangeVersion')
    CREATE INDEX [UX_MedicalOfficeVisit_ChangeVersion] ON [de].[MedicalOfficeVisit] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.MedicalReferralFollowUp') AND name = N'UX_MedicalReferralFollowUp_ChangeVersion')
    CREATE INDEX [UX_MedicalReferralFollowUp_ChangeVersion] ON [de].[MedicalReferralFollowUp] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.MedicalScreening') AND name = N'UX_MedicalScreening_ChangeVersion')
    CREATE INDEX [UX_MedicalScreening_ChangeVersion] ON [de].[MedicalScreening] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.MedicationBox') AND name = N'UX_MedicationBox_ChangeVersion')
    CREATE INDEX [UX_MedicationBox_ChangeVersion] ON [de].[MedicationBox] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.NonStudent') AND name = N'UX_NonStudent_ChangeVersion')
    CREATE INDEX [UX_NonStudent_ChangeVersion] ON [de].[NonStudent] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.PersonDisciplineAction') AND name = N'UX_PersonDisciplineAction_ChangeVersion')
    CREATE INDEX [UX_PersonDisciplineAction_ChangeVersion] ON [de].[PersonDisciplineAction] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.PersonDisciplineIncidentAssociation') AND name = N'UX_PersonDisciplineIncidentAssociation_ChangeVersion')
    CREATE INDEX [UX_PersonDisciplineIncidentAssociation_ChangeVersion] ON [de].[PersonDisciplineIncidentAssociation] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.PersonImmunization') AND name = N'UX_PersonImmunization_ChangeVersion')
    CREATE INDEX [UX_PersonImmunization_ChangeVersion] ON [de].[PersonImmunization] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.PersonMedicalAlert') AND name = N'UX_PersonMedicalAlert_ChangeVersion')
    CREATE INDEX [UX_PersonMedicalAlert_ChangeVersion] ON [de].[PersonMedicalAlert] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.PersonMedicationBoxAssociation') AND name = N'UX_PersonMedicationBoxAssociation_ChangeVersion')
    CREATE INDEX [UX_PersonMedicationBoxAssociation_ChangeVersion] ON [de].[PersonMedicationBoxAssociation] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.PostSecondaryDetail') AND name = N'UX_PostSecondaryDetail_ChangeVersion')
    CREATE INDEX [UX_PostSecondaryDetail_ChangeVersion] ON [de].[PostSecondaryDetail] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.RestraintSeclusion') AND name = N'UX_RestraintSeclusion_ChangeVersion')
    CREATE INDEX [UX_RestraintSeclusion_ChangeVersion] ON [de].[RestraintSeclusion] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.StudentSectionClassPeriodAttendanceEvent') AND name = N'UX_StudentSectionClassPeriodAttendanceEvent_ChangeVersion')
    CREATE INDEX [UX_StudentSectionClassPeriodAttendanceEvent_ChangeVersion] ON [de].[StudentSectionClassPeriodAttendanceEvent] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.StudentTransportation') AND name = N'UX_StudentTransportation_ChangeVersion')
    CREATE INDEX [UX_StudentTransportation_ChangeVersion] ON [de].[StudentTransportation] ([ChangeVersion] ASC)
    GO
COMMIT


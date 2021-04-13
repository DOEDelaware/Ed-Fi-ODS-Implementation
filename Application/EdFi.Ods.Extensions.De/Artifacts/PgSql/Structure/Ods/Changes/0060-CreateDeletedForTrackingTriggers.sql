CREATE FUNCTION tracked_deletes_de.APExamCodeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.APExamCodeDescriptor(APExamCodeDescriptorId, Id, ChangeVersion)
    SELECT OLD.APExamCodeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.APExamCodeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.APExamCodeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.APExamCodeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.AcceptanceStatusDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.AcceptanceStatusDescriptor(AcceptanceStatusDescriptorId, Id, ChangeVersion)
    SELECT OLD.AcceptanceStatusDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.AcceptanceStatusDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.AcceptanceStatusDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.AcceptanceStatusDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.AllegedBullyingVictim_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.AllegedBullyingVictim(AllegedIncidentDate, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.AllegedIncidentDate, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.AllegedBullyingVictim 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.AllegedBullyingVictim_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.AttendanceConfigurationCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.AttendanceConfigurationCategoryDescriptor(AttendanceConfigurationCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.AttendanceConfigurationCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.AttendanceConfigurationCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.AttendanceConfigurationCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.AttendanceConfigurationCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.BullyingCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.BullyingCategoryDescriptor(BullyingCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.BullyingCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.BullyingCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.BullyingCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.BullyingCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.CIPCourse_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.CIPCourse(CIPCode, LocalEducationAgencyId, Id, ChangeVersion)
    VALUES (OLD.CIPCode, OLD.LocalEducationAgencyId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.CIPCourse 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.CIPCourse_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.CertificateCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.CertificateCategoryDescriptor(CertificateCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.CertificateCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.CertificateCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.CertificateCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.CertificateCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.CertificationDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.CertificationDescriptor(CertificationDescriptorId, Id, ChangeVersion)
    SELECT OLD.CertificationDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.CertificationDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.CertificationDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.CertificationDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.ChoiceCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.ChoiceCategoryDescriptor(ChoiceCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.ChoiceCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ChoiceCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.ChoiceCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.ChoiceCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.CoreSubjectDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.CoreSubjectDescriptor(CoreSubjectDescriptorId, Id, ChangeVersion)
    SELECT OLD.CoreSubjectDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.CoreSubjectDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.CoreSubjectDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.CoreSubjectDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.CycleDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.CycleDescriptor(CycleDescriptorId, Id, ChangeVersion)
    SELECT OLD.CycleDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.CycleDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.CycleDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.CycleDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.DeescalationTechniqueDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.DeescalationTechniqueDescriptor(DeescalationTechniqueDescriptorId, Id, ChangeVersion)
    SELECT OLD.DeescalationTechniqueDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.DeescalationTechniqueDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.DeescalationTechniqueDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.DeescalationTechniqueDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.DiplomaCertificateCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.DiplomaCertificateCategoryDescriptor(DiplomaCertificateCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.DiplomaCertificateCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.DiplomaCertificateCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.DiplomaCertificateCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.DiplomaCertificateCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.DisciplineDispositionDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.DisciplineDispositionDescriptor(DisciplineDispositionDescriptorId, Id, ChangeVersion)
    SELECT OLD.DisciplineDispositionDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.DisciplineDispositionDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.DisciplineDispositionDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.DisciplineDispositionDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.DisciplineIncidentCode_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.DisciplineIncidentCode(BehaviorDescriptorId, Id, ChangeVersion)
    VALUES (OLD.BehaviorDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.DisciplineIncidentCode 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.DisciplineIncidentCode_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.EnrollmentTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.EnrollmentTypeDescriptor(EnrollmentTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.EnrollmentTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.EnrollmentTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.EnrollmentTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.EnrollmentTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.FerpaOptOutDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.FerpaOptOutDescriptor(FerpaOptOutDescriptorId, Id, ChangeVersion)
    SELECT OLD.FerpaOptOutDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.FerpaOptOutDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.FerpaOptOutDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.FerpaOptOutDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.FollowupCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.FollowupCategoryDescriptor(FollowupCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.FollowupCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.FollowupCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.FollowupCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.FollowupCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.FundingNeedsCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.FundingNeedsCategoryDescriptor(FundingNeedsCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.FundingNeedsCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.FundingNeedsCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.FundingNeedsCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.FundingNeedsCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.GradeTypeDetail_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.GradeTypeDetail(GradeTypeDescriptorId, SchoolId, Id, ChangeVersion)
    VALUES (OLD.GradeTypeDescriptorId, OLD.SchoolId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.GradeTypeDetail 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.GradeTypeDetail_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.GradeTypeWhenTakenDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.GradeTypeWhenTakenDescriptor(GradeTypeWhenTakenDescriptorId, Id, ChangeVersion)
    SELECT OLD.GradeTypeWhenTakenDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.GradeTypeWhenTakenDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.GradeTypeWhenTakenDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.GradeTypeWhenTakenDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.ImmunizationCodeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.ImmunizationCodeDescriptor(ImmunizationCodeDescriptorId, Id, ChangeVersion)
    SELECT OLD.ImmunizationCodeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ImmunizationCodeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.ImmunizationCodeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.ImmunizationCodeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.IncidentRelatedToDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.IncidentRelatedToDescriptor(IncidentRelatedToDescriptorId, Id, ChangeVersion)
    SELECT OLD.IncidentRelatedToDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.IncidentRelatedToDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.IncidentRelatedToDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.IncidentRelatedToDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.InjuryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.InjuryDescriptor(InjuryDescriptorId, Id, ChangeVersion)
    SELECT OLD.InjuryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.InjuryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.InjuryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.InjuryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.LevelDetail_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.LevelDetail(LevelNumber, Mark, SchoolId, Id, ChangeVersion)
    VALUES (OLD.LevelNumber, OLD.Mark, OLD.SchoolId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.LevelDetail 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.LevelDetail_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.LocationDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.LocationDescriptor(LocationDescriptorId, Id, ChangeVersion)
    SELECT OLD.LocationDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.LocationDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.LocationDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.LocationDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.MedicalAlertCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.MedicalAlertCategoryDescriptor(MedicalAlertCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.MedicalAlertCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.MedicalAlertCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.MedicalAlertCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.MedicalAlertCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.MedicalAlert_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.MedicalAlert(MedicalAlertCategoryDescriptorId, Id, ChangeVersion)
    VALUES (OLD.MedicalAlertCategoryDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.MedicalAlert 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.MedicalAlert_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.MedicalDispositionDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.MedicalDispositionDescriptor(MedicalDispositionDescriptorId, Id, ChangeVersion)
    SELECT OLD.MedicalDispositionDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.MedicalDispositionDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.MedicalDispositionDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.MedicalDispositionDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.MedicalOfficeVisit_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.MedicalOfficeVisit(OfficeInDate, PersonId, SourceSystemDescriptorId, Id, ChangeVersion)
    VALUES (OLD.OfficeInDate, OLD.PersonId, OLD.SourceSystemDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.MedicalOfficeVisit 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.MedicalOfficeVisit_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.MedicalReferralFollowUp_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.MedicalReferralFollowUp(FollowupCategoryDescriptorId, MedicalTestCategoryDescriptorId, PersonId, SourceSystemDescriptorId, TestDate, Id, ChangeVersion)
    VALUES (OLD.FollowupCategoryDescriptorId, OLD.MedicalTestCategoryDescriptorId, OLD.PersonId, OLD.SourceSystemDescriptorId, OLD.TestDate, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.MedicalReferralFollowUp 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.MedicalReferralFollowUp_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.MedicalScreening_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.MedicalScreening(MedicalTestCategoryDescriptorId, PersonId, SourceSystemDescriptorId, TestDate, Id, ChangeVersion)
    VALUES (OLD.MedicalTestCategoryDescriptorId, OLD.PersonId, OLD.SourceSystemDescriptorId, OLD.TestDate, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.MedicalScreening 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.MedicalScreening_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.MedicalTestCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.MedicalTestCategoryDescriptor(MedicalTestCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.MedicalTestCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.MedicalTestCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.MedicalTestCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.MedicalTestCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.MedicalTreatmentCodeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.MedicalTreatmentCodeDescriptor(MedicalTreatmentCodeDescriptorId, Id, ChangeVersion)
    SELECT OLD.MedicalTreatmentCodeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.MedicalTreatmentCodeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.MedicalTreatmentCodeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.MedicalTreatmentCodeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.MedicalVisitReasonDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.MedicalVisitReasonDescriptor(MedicalVisitReasonDescriptorId, Id, ChangeVersion)
    SELECT OLD.MedicalVisitReasonDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.MedicalVisitReasonDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.MedicalVisitReasonDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.MedicalVisitReasonDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.MedicationBox_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.MedicationBox(LocalEducationAgencyId, MedicationBoxId, Id, ChangeVersion)
    VALUES (OLD.LocalEducationAgencyId, OLD.MedicationBoxId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.MedicationBox 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.MedicationBox_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.NonStudent_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.NonStudent(LocalEducationAgencyId, NonStudentLocalId, Id, ChangeVersion)
    VALUES (OLD.LocalEducationAgencyId, OLD.NonStudentLocalId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.NonStudent 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.NonStudent_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.NonViolentTechniqueDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.NonViolentTechniqueDescriptor(NonViolentTechniqueDescriptorId, Id, ChangeVersion)
    SELECT OLD.NonViolentTechniqueDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.NonViolentTechniqueDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.NonViolentTechniqueDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.NonViolentTechniqueDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.NotificationMethodDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.NotificationMethodDescriptor(NotificationMethodDescriptorId, Id, ChangeVersion)
    SELECT OLD.NotificationMethodDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.NotificationMethodDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.NotificationMethodDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.NotificationMethodDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.ParticipationCodeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.ParticipationCodeDescriptor(ParticipationCodeDescriptorId, Id, ChangeVersion)
    SELECT OLD.ParticipationCodeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ParticipationCodeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.ParticipationCodeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.ParticipationCodeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.PersonCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.PersonCategoryDescriptor(PersonCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.PersonCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PersonCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.PersonCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.PersonCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.PersonDisciplineAction_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.PersonDisciplineAction(ActionIdentifier, ActionStartDate, IncidentIdentifier, PersonId, SchoolId, SourceSystemDescriptorId, Id, ChangeVersion)
    VALUES (OLD.ActionIdentifier, OLD.ActionStartDate, OLD.IncidentIdentifier, OLD.PersonId, OLD.SchoolId, OLD.SourceSystemDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.PersonDisciplineAction 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.PersonDisciplineAction_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.PersonDisciplineIncidentAssociation_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.PersonDisciplineIncidentAssociation(IncidentIdentifier, ParticipantNumber, ParticipationCodeDescriptorId, PersonId, SchoolId, SourceSystemDescriptorId, Id, ChangeVersion)
    VALUES (OLD.IncidentIdentifier, OLD.ParticipantNumber, OLD.ParticipationCodeDescriptorId, OLD.PersonId, OLD.SchoolId, OLD.SourceSystemDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.PersonDisciplineIncidentAssociation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.PersonDisciplineIncidentAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.PersonImmunization_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.PersonImmunization(ImmunizationCodeDescriptorId, ImmunizationDate, PersonId, SourceSystemDescriptorId, Id, ChangeVersion)
    VALUES (OLD.ImmunizationCodeDescriptorId, OLD.ImmunizationDate, OLD.PersonId, OLD.SourceSystemDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.PersonImmunization 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.PersonImmunization_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.PersonMedicalAlert_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.PersonMedicalAlert(MedicalAlertCategoryDescriptorId, PersonId, SourceSystemDescriptorId, StartDate, Id, ChangeVersion)
    VALUES (OLD.MedicalAlertCategoryDescriptorId, OLD.PersonId, OLD.SourceSystemDescriptorId, OLD.StartDate, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.PersonMedicalAlert 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.PersonMedicalAlert_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.PersonMedicationBoxAssociation_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.PersonMedicationBoxAssociation(LocalEducationAgencyId, MedicationBoxId, PersonId, SourceSystemDescriptorId, Id, ChangeVersion)
    VALUES (OLD.LocalEducationAgencyId, OLD.MedicationBoxId, OLD.PersonId, OLD.SourceSystemDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.PersonMedicationBoxAssociation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.PersonMedicationBoxAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.PostSecondaryDetail_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.PostSecondaryDetail(PostSecondaryEventCategoryDescriptorId, SchoolId, SchoolYear, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.PostSecondaryEventCategoryDescriptorId, OLD.SchoolId, OLD.SchoolYear, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.PostSecondaryDetail 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.PostSecondaryDetail_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.ReasonForLateIEPDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.ReasonForLateIEPDescriptor(ReasonForLateIEPDescriptorId, Id, ChangeVersion)
    SELECT OLD.ReasonForLateIEPDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ReasonForLateIEPDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.ReasonForLateIEPDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.ReasonForLateIEPDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.ReasonNotApplied4PlusCollegeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.ReasonNotApplied4PlusCollegeDescriptor(ReasonNotApplied4PlusCollegeDescriptorId, Id, ChangeVersion)
    SELECT OLD.ReasonNotApplied4PlusCollegeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ReasonNotApplied4PlusCollegeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.ReasonNotApplied4PlusCollegeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.ReasonNotApplied4PlusCollegeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.ReferralDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.ReferralDescriptor(ReferralDescriptorId, Id, ChangeVersion)
    SELECT OLD.ReferralDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ReferralDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.ReferralDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.ReferralDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.RestraintEventCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.RestraintEventCategoryDescriptor(RestraintEventCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.RestraintEventCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.RestraintEventCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.RestraintEventCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.RestraintEventCategoryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.RestraintSeclusion_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.RestraintSeclusion(EventDate, EventTime, RestraintEventCategoryDescriptorId, RestraintEventReasonDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.EventDate, OLD.EventTime, OLD.RestraintEventCategoryDescriptorId, OLD.RestraintEventReasonDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.RestraintSeclusion 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.RestraintSeclusion_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.ServiceStatusDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.ServiceStatusDescriptor(ServiceStatusDescriptorId, Id, ChangeVersion)
    SELECT OLD.ServiceStatusDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ServiceStatusDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.ServiceStatusDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.ServiceStatusDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.StaffRoleDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.StaffRoleDescriptor(StaffRoleDescriptorId, Id, ChangeVersion)
    SELECT OLD.StaffRoleDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.StaffRoleDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.StaffRoleDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.StaffRoleDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.Student504ProgramAssociation_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.Student504ProgramAssociation(BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, Id, ChangeVersion)
    SELECT OLD.BeginDate, OLD.EducationOrganizationId, OLD.ProgramEducationOrganizationId, OLD.ProgramName, OLD.ProgramTypeDescriptorId, OLD.StudentUSI, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.GeneralStudentProgramAssociation WHERE BeginDate = OLD.BeginDate AND EducationOrganizationId = OLD.EducationOrganizationId AND ProgramEducationOrganizationId = OLD.ProgramEducationOrganizationId AND ProgramName = OLD.ProgramName AND ProgramTypeDescriptorId = OLD.ProgramTypeDescriptorId AND StudentUSI = OLD.StudentUSI;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.Student504ProgramAssociation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.Student504ProgramAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.StudentEarlyChildhoodProgramAssociation_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.StudentEarlyChildhoodProgramAssociation(BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, Id, ChangeVersion)
    SELECT OLD.BeginDate, OLD.EducationOrganizationId, OLD.ProgramEducationOrganizationId, OLD.ProgramName, OLD.ProgramTypeDescriptorId, OLD.StudentUSI, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.GeneralStudentProgramAssociation WHERE BeginDate = OLD.BeginDate AND EducationOrganizationId = OLD.EducationOrganizationId AND ProgramEducationOrganizationId = OLD.ProgramEducationOrganizationId AND ProgramName = OLD.ProgramName AND ProgramTypeDescriptorId = OLD.ProgramTypeDescriptorId AND StudentUSI = OLD.StudentUSI;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.StudentEarlyChildhoodProgramAssociation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.StudentEarlyChildhoodProgramAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.StudentSectionClassPeriodAttendanceEvent_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.StudentSectionClassPeriodAttendanceEvent(AttendanceEventCategoryDescriptorId, ClassPeriodName, EventDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.AttendanceEventCategoryDescriptorId, OLD.ClassPeriodName, OLD.EventDate, OLD.LocalCourseCode, OLD.SchoolId, OLD.SchoolYear, OLD.SectionIdentifier, OLD.SessionName, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.StudentSectionClassPeriodAttendanceEvent 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.StudentSectionClassPeriodAttendanceEvent_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.StudentTransportation_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.StudentTransportation(LocalEducationAgencyId, StudentUSI, TravelDayOfWeekDescriptorId, TravelDirectionDescriptorId, TravelSegment, TravelTrip, Id, ChangeVersion)
    VALUES (OLD.LocalEducationAgencyId, OLD.StudentUSI, OLD.TravelDayOfWeekDescriptorId, OLD.TravelDirectionDescriptorId, OLD.TravelSegment, OLD.TravelTrip, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.StudentTransportation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.StudentTransportation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.SupportPlanChangeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.SupportPlanChangeDescriptor(SupportPlanChangeDescriptorId, Id, ChangeVersion)
    SELECT OLD.SupportPlanChangeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.SupportPlanChangeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.SupportPlanChangeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.SupportPlanChangeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.TravelDayOfWeekDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.TravelDayOfWeekDescriptor(TravelDayOfWeekDescriptorId, Id, ChangeVersion)
    SELECT OLD.TravelDayOfWeekDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.TravelDayOfWeekDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.TravelDayOfWeekDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.TravelDayOfWeekDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.TravelDirectionDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.TravelDirectionDescriptor(TravelDirectionDescriptorId, Id, ChangeVersion)
    SELECT OLD.TravelDirectionDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.TravelDirectionDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.TravelDirectionDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.TravelDirectionDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.TreatmentDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.TreatmentDescriptor(TreatmentDescriptorId, Id, ChangeVersion)
    SELECT OLD.TreatmentDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.TreatmentDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.TreatmentDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.TreatmentDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_de.VictimCategoryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_de.VictimCategoryDescriptor(VictimCategoryDescriptorId, Id, ChangeVersion)
    SELECT OLD.VictimCategoryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.VictimCategoryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON de.VictimCategoryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_de.VictimCategoryDescriptor_TR_DelTrkg();


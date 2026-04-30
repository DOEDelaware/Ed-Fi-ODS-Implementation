DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_de.addresscharacteristicdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.AddressCharacteristicDescriptorId, b.codevalue, b.namespace, b.id, 'de.AddressCharacteristicDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.AddressCharacteristicDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'addresscharacteristicdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.addresscharacteristicdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.addresscharacteristicdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.alternatecalendarprogramdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.AlternateCalendarProgramDescriptorId, b.codevalue, b.namespace, b.id, 'de.AlternateCalendarProgramDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.AlternateCalendarProgramDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'alternatecalendarprogramdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.alternatecalendarprogramdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.alternatecalendarprogramdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.arrestinformationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ArrestInformationDescriptorId, b.codevalue, b.namespace, b.id, 'de.ArrestInformationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ArrestInformationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'arrestinformationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.arrestinformationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.arrestinformationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.birthmandatedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.BirthMandateDescriptorId, b.codevalue, b.namespace, b.id, 'de.BirthMandateDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.BirthMandateDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'birthmandatedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.birthmandatedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.birthmandatedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.bullyingcategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.BullyingCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'de.BullyingCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.BullyingCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'bullyingcategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.bullyingcategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.bullyingcategorydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.choicebasisdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ChoiceBasisDescriptorId, b.codevalue, b.namespace, b.id, 'de.ChoiceBasisDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ChoiceBasisDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'choicebasisdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.choicebasisdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.choicebasisdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.ctecertificationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CTECertificationDescriptorId, b.codevalue, b.namespace, b.id, 'de.CTECertificationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CTECertificationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'ctecertificationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.ctecertificationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.ctecertificationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.deescalationtechniquedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DeescalationTechniqueDescriptorId, b.codevalue, b.namespace, b.id, 'de.DeescalationTechniqueDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DeescalationTechniqueDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'deescalationtechniquedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.deescalationtechniquedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.deescalationtechniquedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.diplomacertificatecategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DiplomaCertificateCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'de.DiplomaCertificateCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DiplomaCertificateCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'diplomacertificatecategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.diplomacertificatecategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.diplomacertificatecategorydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.disciplineactionplacementtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DisciplineActionPlacementTypeDescriptorId, b.codevalue, b.namespace, b.id, 'de.DisciplineActionPlacementTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DisciplineActionPlacementTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'disciplineactionplacementtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.disciplineactionplacementtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.disciplineactionplacementtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.ferpaoptoutdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FerpaOptOutDescriptorId, b.codevalue, b.namespace, b.id, 'de.FerpaOptOutDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FerpaOptOutDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'ferpaoptoutdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.ferpaoptoutdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.ferpaoptoutdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.followupcategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FollowupCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'de.FollowupCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FollowupCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'followupcategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.followupcategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.followupcategorydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.fundingneedscategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FundingNeedsCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'de.FundingNeedsCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FundingNeedsCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'fundingneedscategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.fundingneedscategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.fundingneedscategorydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.healthalertcategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.HealthAlertCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'de.HealthAlertCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.HealthAlertCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'healthalertcategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.healthalertcategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.healthalertcategorydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.iepimplementationafterthirdbirthdayreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IEPImplementationAfterThirdBirthdayReasonDescriptorId, b.codevalue, b.namespace, b.id, 'de.IEPImplementationAfterThirdBirthdayReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IEPImplementationAfterThirdBirthdayReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'iepimplementationafterthirdbirthdayreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.iepimplementationafterthirdbirthdayreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.iepimplementationafterthirdbirthdayreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.incidentrelatedtodescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IncidentRelatedToDescriptorId, b.codevalue, b.namespace, b.id, 'de.IncidentRelatedToDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IncidentRelatedToDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'incidentrelatedtodescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.incidentrelatedtodescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.incidentrelatedtodescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.locationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.LocationDescriptorId, b.codevalue, b.namespace, b.id, 'de.LocationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.LocationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'locationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.locationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.locationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.multiliteracycertificatecategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.MultiliteracyCertificateCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'de.MultiliteracyCertificateCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.MultiliteracyCertificateCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'multiliteracycertificatecategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.multiliteracycertificatecategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.multiliteracycertificatecategorydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.nonviolenttechniquedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.NonViolentTechniqueDescriptorId, b.codevalue, b.namespace, b.id, 'de.NonViolentTechniqueDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.NonViolentTechniqueDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'nonviolenttechniquedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.nonviolenttechniquedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.nonviolenttechniquedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.notificationmethoddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.NotificationMethodDescriptorId, b.codevalue, b.namespace, b.id, 'de.NotificationMethodDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.NotificationMethodDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'notificationmethoddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.notificationmethoddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.notificationmethoddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.outoftimelinereasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.OutOfTimelineReasonDescriptorId, b.codevalue, b.namespace, b.id, 'de.OutOfTimelineReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.OutOfTimelineReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'outoftimelinereasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.outoftimelinereasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.outoftimelinereasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.reasonforlateiepdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ReasonForLateIEPDescriptorId, b.codevalue, b.namespace, b.id, 'de.ReasonForLateIEPDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ReasonForLateIEPDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'reasonforlateiepdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.reasonforlateiepdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.reasonforlateiepdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.restrainteventcategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.RestraintEventCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'de.RestraintEventCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.RestraintEventCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'restrainteventcategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.restrainteventcategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.restrainteventcategorydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.specialeducationfundingdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SpecialEducationFundingDescriptorId, b.codevalue, b.namespace, b.id, 'de.SpecialEducationFundingDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SpecialEducationFundingDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'specialeducationfundingdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.specialeducationfundingdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.specialeducationfundingdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.studenthealthalert_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.healthalertcategorydescriptorid;

    SELECT INTO dj1 * FROM edfi.student j1 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_de.studenthealthalert(
        oldeducationorganizationid, oldhealthalertcategorydescriptorid, oldhealthalertcategorydescriptornamespace, oldhealthalertcategorydescriptorcodevalue, oldstartdate, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.educationorganizationid, OLD.healthalertcategorydescriptorid, dj0.namespace, dj0.codevalue, OLD.startdate, OLD.studentusi, dj1.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'studenthealthalert') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.studenthealthalert 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.studenthealthalert_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.supportplanchangedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SupportPlanChangeDescriptorId, b.codevalue, b.namespace, b.id, 'de.SupportPlanChangeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SupportPlanChangeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'supportplanchangedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.supportplanchangedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.supportplanchangedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_de.treatmentdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.TreatmentDescriptorId, b.codevalue, b.namespace, b.id, 'de.TreatmentDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.TreatmentDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'de' AND event_object_table = 'treatmentdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON de.treatmentdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_de.treatmentdescriptor_deleted();
END IF;

END
$$;

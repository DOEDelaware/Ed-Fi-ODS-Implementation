DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'de' AND event_object_table = 'studenthealthalert') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON de.studenthealthalert
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;

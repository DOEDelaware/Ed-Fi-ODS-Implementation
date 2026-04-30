DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_de') THEN
CREATE SCHEMA tracked_changes_de;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_de' AND table_name = 'studenthealthalert') THEN
CREATE TABLE tracked_changes_de.studenthealthalert
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldhealthalertcategorydescriptorid INT NOT NULL,
       oldhealthalertcategorydescriptornamespace VARCHAR(255) NOT NULL,
       oldhealthalertcategorydescriptorcodevalue VARCHAR(50) NOT NULL,
       oldstartdate DATE NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newhealthalertcategorydescriptorid INT NULL,
       newhealthalertcategorydescriptornamespace VARCHAR(255) NULL,
       newhealthalertcategorydescriptorcodevalue VARCHAR(50) NULL,
       newstartdate DATE NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studenthealthalert_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;

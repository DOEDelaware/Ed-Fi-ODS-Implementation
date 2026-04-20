
CREATE SEQUENCE de.StudentHealthAlert_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE de.StudentHealthAlert ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('de.StudentHealthAlert_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentHealthAlert_aggid ON de.StudentHealthAlert (AggregateId);


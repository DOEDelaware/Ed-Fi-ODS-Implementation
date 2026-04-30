
DROP INDEX IF EXISTS IX_StudentHealthAlert_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentHealthAlert_EducationOrganizationId ON de.StudentHealthAlert(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentHealthAlert_StudentUSI ON de.StudentHealthAlert(StudentUSI) INCLUDE (AggregateId);

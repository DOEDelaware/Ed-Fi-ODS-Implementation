
CREATE INDEX IF NOT EXISTS IX_StudentHealthAlert_EducationOrganizationId ON de.StudentHealthAlert(EducationOrganizationId) INCLUDE (Id);


DROP INDEX IF EXISTS IX_StudentHealthAlert_EducationOrganizationId ON [de].[StudentHealthAlert];
CREATE INDEX IX_StudentHealthAlert_EducationOrganizationId ON [de].[StudentHealthAlert](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentHealthAlert_StudentUSI' AND object_id = OBJECT_ID('de.StudentHealthAlert')) 
BEGIN
    CREATE INDEX IX_StudentHealthAlert_StudentUSI ON [de].[StudentHealthAlert](StudentUSI) INCLUDE (AggregateId)
END;


IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentHealthAlert_EducationOrganizationId' AND object_id = OBJECT_ID('de.StudentHealthAlert')) 
BEGIN
    CREATE INDEX IX_StudentHealthAlert_EducationOrganizationId ON [de].[StudentHealthAlert](EducationOrganizationId) INCLUDE (Id)
END;

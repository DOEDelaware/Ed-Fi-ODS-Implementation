BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.StudentHealthAlert') AND name = N'UX_StudentHealthAlert_ChangeVersion')
    CREATE INDEX [UX_StudentHealthAlert_ChangeVersion] ON [de].[StudentHealthAlert] ([ChangeVersion] ASC)
    GO
COMMIT


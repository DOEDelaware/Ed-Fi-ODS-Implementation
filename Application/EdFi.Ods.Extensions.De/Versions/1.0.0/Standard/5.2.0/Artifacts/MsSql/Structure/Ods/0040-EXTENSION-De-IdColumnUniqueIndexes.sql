BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'de.StudentHealthAlert') AND name = N'UX_StudentHealthAlert_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentHealthAlert_Id ON [de].[StudentHealthAlert]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT


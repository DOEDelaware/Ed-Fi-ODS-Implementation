DROP TRIGGER IF EXISTS [de].[de_StudentHealthAlert_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [de].[de_StudentHealthAlert_TR_UpdateChangeVersion] ON [de].[StudentHealthAlert] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [de].[StudentHealthAlert]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [de].[StudentHealthAlert] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO



-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[de].[StudentHealthAlert]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [de].[StudentHealthAlert] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentHealthAlert_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [de].[StudentHealthAlert] DROP CONSTRAINT StudentHealthAlert_DF_ChangeVersion;
ALTER TABLE [de].[StudentHealthAlert] ADD CONSTRAINT StudentHealthAlert_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END



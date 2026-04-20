IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_de')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_de]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_de].[StudentHealthAlert]'))
CREATE TABLE [tracked_changes_de].[StudentHealthAlert]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldHealthAlertCategoryDescriptorId [INT] NOT NULL,
       OldHealthAlertCategoryDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldHealthAlertCategoryDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStartDate [DATE] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewHealthAlertCategoryDescriptorId [INT] NULL,
       NewHealthAlertCategoryDescriptorNamespace [NVARCHAR](255) NULL,
       NewHealthAlertCategoryDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStartDate [DATE] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentHealthAlert PRIMARY KEY CLUSTERED (ChangeVersion)
)

ALTER TABLE [edfixlearningmodality].[CalendarDateProgramLearningModalityType] WITH CHECK ADD CONSTRAINT [FK_CalendarDateProgramLearningModalityType_CalendarDate] FOREIGN KEY ([CalendarCode], [Date], [SchoolId], [SchoolYear])
REFERENCES [edfi].[CalendarDate] ([CalendarCode], [Date], [SchoolId], [SchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CalendarDateProgramLearningModalityType_CalendarDate]
ON [edfixlearningmodality].[CalendarDateProgramLearningModalityType] ([CalendarCode] ASC, [Date] ASC, [SchoolId] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [edfixlearningmodality].[CalendarDateProgramLearningModalityType] WITH CHECK ADD CONSTRAINT [FK_CalendarDateProgramLearningModalityType_Program] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CalendarDateProgramLearningModalityType_Program]
ON [edfixlearningmodality].[CalendarDateProgramLearningModalityType] ([EducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [edfixlearningmodality].[CalendarDateProgramLearningModalityTypeLearningModality] WITH CHECK ADD CONSTRAINT [FK_CalendarDateProgramLearningModalityTypeLearningModality_CalendarDateProgramLearningModalityType] FOREIGN KEY ([CalendarCode], [Date], [EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [SchoolId], [SchoolYear])
REFERENCES [edfixlearningmodality].[CalendarDateProgramLearningModalityType] ([CalendarCode], [Date], [EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [SchoolId], [SchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CalendarDateProgramLearningModalityTypeLearningModality_CalendarDateProgramLearningModalityType]
ON [edfixlearningmodality].[CalendarDateProgramLearningModalityTypeLearningModality] ([CalendarCode] ASC, [Date] ASC, [EducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [SchoolId] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [edfixlearningmodality].[CalendarDateProgramLearningModalityTypeLearningModality] WITH CHECK ADD CONSTRAINT [FK_CalendarDateProgramLearningModalityTypeLearningModality_ModalityTimeTypeDescriptor] FOREIGN KEY ([ModalityTimeTypeDescriptorId])
REFERENCES [edfixlearningmodality].[ModalityTimeTypeDescriptor] ([ModalityTimeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CalendarDateProgramLearningModalityTypeLearningModality_ModalityTimeTypeDescriptor]
ON [edfixlearningmodality].[CalendarDateProgramLearningModalityTypeLearningModality] ([ModalityTimeTypeDescriptorId] ASC)
GO

ALTER TABLE [edfixlearningmodality].[CalendarDateProgramLearningModalityTypeLearningModality] WITH CHECK ADD CONSTRAINT [FK_CalendarDateProgramLearningModalityTypeLearningModality_ModalityTypeDescriptor] FOREIGN KEY ([ModalityTypeDescriptorId])
REFERENCES [edfixlearningmodality].[ModalityTypeDescriptor] ([ModalityTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CalendarDateProgramLearningModalityTypeLearningModality_ModalityTypeDescriptor]
ON [edfixlearningmodality].[CalendarDateProgramLearningModalityTypeLearningModality] ([ModalityTypeDescriptorId] ASC)
GO

ALTER TABLE [edfixlearningmodality].[ModalityTimeTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ModalityTimeTypeDescriptor_Descriptor] FOREIGN KEY ([ModalityTimeTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [edfixlearningmodality].[ModalityTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ModalityTypeDescriptor_Descriptor] FOREIGN KEY ([ModalityTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [edfixlearningmodality].[ProgramLearningModality] WITH CHECK ADD CONSTRAINT [FK_ProgramLearningModality_ModalityTimeTypeDescriptor] FOREIGN KEY ([ModalityTimeTypeDescriptorId])
REFERENCES [edfixlearningmodality].[ModalityTimeTypeDescriptor] ([ModalityTimeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProgramLearningModality_ModalityTimeTypeDescriptor]
ON [edfixlearningmodality].[ProgramLearningModality] ([ModalityTimeTypeDescriptorId] ASC)
GO

ALTER TABLE [edfixlearningmodality].[ProgramLearningModality] WITH CHECK ADD CONSTRAINT [FK_ProgramLearningModality_ModalityTypeDescriptor] FOREIGN KEY ([ModalityTypeDescriptorId])
REFERENCES [edfixlearningmodality].[ModalityTypeDescriptor] ([ModalityTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProgramLearningModality_ModalityTypeDescriptor]
ON [edfixlearningmodality].[ProgramLearningModality] ([ModalityTypeDescriptorId] ASC)
GO

ALTER TABLE [edfixlearningmodality].[ProgramLearningModality] WITH CHECK ADD CONSTRAINT [FK_ProgramLearningModality_Program] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ProgramLearningModality_Program]
ON [edfixlearningmodality].[ProgramLearningModality] ([EducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC)
GO


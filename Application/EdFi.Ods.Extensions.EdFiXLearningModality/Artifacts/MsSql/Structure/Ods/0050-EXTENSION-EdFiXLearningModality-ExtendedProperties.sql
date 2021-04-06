-- Extended Properties [edfixlearningmodality].[CalendarDateProgramLearningModalityType] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The learning modalities associated with the CalendarDate.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityType', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the CalendarEvent.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityType', @level2type=N'COLUMN', @level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityType', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityType', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityType', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityType', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year associated with the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityType', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [edfixlearningmodality].[CalendarDateProgramLearningModalityTypeLearningModality] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The learning modalities associated with the Program   .', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the CalendarEvent.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality', @level2type=N'COLUMN', @level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which the student is engaging in instruction.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality', @level2type=N'COLUMN', @level2name=N'ModalityTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year associated with the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The duration the student engaged via the modality.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality', @level2type=N'COLUMN', @level2name=N'ModalityTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The units or time dimension for hte duration.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'CalendarDateProgramLearningModalityTypeLearningModality', @level2type=N'COLUMN', @level2name=N'ModalityTimeTypeDescriptorId'
GO

-- Extended Properties [edfixlearningmodality].[ModalityTimeTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The units or time dimension for hte duration.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ModalityTimeTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ModalityTimeTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ModalityTimeTypeDescriptorId'
GO

-- Extended Properties [edfixlearningmodality].[ModalityTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which the student is engaging in instruction.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ModalityTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ModalityTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ModalityTypeDescriptorId'
GO

-- Extended Properties [edfixlearningmodality].[ProgramLearningModality] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The learning modalities associated with the Program.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ProgramLearningModality'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ProgramLearningModality', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method by which the student is engaging in instruction.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ProgramLearningModality', @level2type=N'COLUMN', @level2name=N'ModalityTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ProgramLearningModality', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ProgramLearningModality', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The duration the student engaged via the modality.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ProgramLearningModality', @level2type=N'COLUMN', @level2name=N'ModalityTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The units or time dimension for hte duration.', @level0type=N'SCHEMA', @level0name=N'edfixlearningmodality', @level1type=N'TABLE', @level1name=N'ProgramLearningModality', @level2type=N'COLUMN', @level2name=N'ModalityTimeTypeDescriptorId'
GO


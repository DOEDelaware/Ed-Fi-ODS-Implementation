-- Extended Properties [edfixlearningmodality].[CalendarDateExtension] --
COMMENT ON TABLE edfixlearningmodality.CalendarDateExtension IS '';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateExtension.CalendarCode IS 'The identifier for the Calendar.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateExtension.Date IS 'The month, day, and year of the CalendarEvent.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateExtension.SchoolYear IS 'The identifier for the school year associated with the Calendar.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateExtension.PlaceHolderProp IS 'Dummy Prop to overcome a bug';

-- Extended Properties [edfixlearningmodality].[CalendarDateProgramLearningModalityType] --
COMMENT ON TABLE edfixlearningmodality.CalendarDateProgramLearningModalityType IS 'The learning modalities associated with the CalendarDate.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityType.CalendarCode IS 'The identifier for the Calendar.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityType.Date IS 'The month, day, and year of the CalendarEvent.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityType.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityType.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityType.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityType.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityType.SchoolYear IS 'The identifier for the school year associated with the Calendar.';

-- Extended Properties [edfixlearningmodality].[CalendarDateProgramLearningModalityTypeLearningModality] --
COMMENT ON TABLE edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality IS 'The learning modalities associated with the Program   .';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality.CalendarCode IS 'The identifier for the Calendar.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality.Date IS 'The month, day, and year of the CalendarEvent.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality.ModalityTypeDescriptorId IS 'The method by which the student is engaging in instruction.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality.SchoolYear IS 'The identifier for the school year associated with the Calendar.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality.ModalityTime IS 'The duration the student engaged via the modality.';
COMMENT ON COLUMN edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality.ModalityTimeTypeDescriptorId IS 'The units or time dimension for hte duration.';

-- Extended Properties [edfixlearningmodality].[ModalityTimeTypeDescriptor] --
COMMENT ON TABLE edfixlearningmodality.ModalityTimeTypeDescriptor IS 'The units or time dimension for hte duration.';
COMMENT ON COLUMN edfixlearningmodality.ModalityTimeTypeDescriptor.ModalityTimeTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [edfixlearningmodality].[ModalityTypeDescriptor] --
COMMENT ON TABLE edfixlearningmodality.ModalityTypeDescriptor IS 'The method by which the student is engaging in instruction.';
COMMENT ON COLUMN edfixlearningmodality.ModalityTypeDescriptor.ModalityTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [edfixlearningmodality].[ProgramLearningModality] --
COMMENT ON TABLE edfixlearningmodality.ProgramLearningModality IS 'The learning modalities associated with the Program.';
COMMENT ON COLUMN edfixlearningmodality.ProgramLearningModality.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edfixlearningmodality.ProgramLearningModality.ModalityTypeDescriptorId IS 'The method by which the student is engaging in instruction.';
COMMENT ON COLUMN edfixlearningmodality.ProgramLearningModality.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN edfixlearningmodality.ProgramLearningModality.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN edfixlearningmodality.ProgramLearningModality.ModalityTime IS 'The duration the student engaged via the modality.';
COMMENT ON COLUMN edfixlearningmodality.ProgramLearningModality.ModalityTimeTypeDescriptorId IS 'The units or time dimension for hte duration.';


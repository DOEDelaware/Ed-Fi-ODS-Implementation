ALTER TABLE edfixlearningmodality.CalendarDateProgramLearningModalityType ADD CONSTRAINT FK_b86383_CalendarDate FOREIGN KEY (CalendarCode, Date, SchoolId, SchoolYear)
REFERENCES edfi.CalendarDate (CalendarCode, Date, SchoolId, SchoolYear)
ON DELETE CASCADE
;

CREATE INDEX FK_b86383_CalendarDate
ON edfixlearningmodality.CalendarDateProgramLearningModalityType (CalendarCode ASC, Date ASC, SchoolId ASC, SchoolYear ASC);

ALTER TABLE edfixlearningmodality.CalendarDateProgramLearningModalityType ADD CONSTRAINT FK_b86383_Program FOREIGN KEY (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
REFERENCES edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
;

CREATE INDEX FK_b86383_Program
ON edfixlearningmodality.CalendarDateProgramLearningModalityType (EducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC);

ALTER TABLE edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality ADD CONSTRAINT FK_9460cd_CalendarDateProgramLearningModalityType FOREIGN KEY (CalendarCode, Date, EducationOrganizationId, ProgramName, ProgramTypeDescriptorId, SchoolId, SchoolYear)
REFERENCES edfixlearningmodality.CalendarDateProgramLearningModalityType (CalendarCode, Date, EducationOrganizationId, ProgramName, ProgramTypeDescriptorId, SchoolId, SchoolYear)
ON DELETE CASCADE
;

CREATE INDEX FK_9460cd_CalendarDateProgramLearningModalityType
ON edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality (CalendarCode ASC, Date ASC, EducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, SchoolId ASC, SchoolYear ASC);

ALTER TABLE edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality ADD CONSTRAINT FK_9460cd_ModalityTimeTypeDescriptor FOREIGN KEY (ModalityTimeTypeDescriptorId)
REFERENCES edfixlearningmodality.ModalityTimeTypeDescriptor (ModalityTimeTypeDescriptorId)
;

CREATE INDEX FK_9460cd_ModalityTimeTypeDescriptor
ON edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality (ModalityTimeTypeDescriptorId ASC);

ALTER TABLE edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality ADD CONSTRAINT FK_9460cd_ModalityTypeDescriptor FOREIGN KEY (ModalityTypeDescriptorId)
REFERENCES edfixlearningmodality.ModalityTypeDescriptor (ModalityTypeDescriptorId)
;

CREATE INDEX FK_9460cd_ModalityTypeDescriptor
ON edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality (ModalityTypeDescriptorId ASC);

ALTER TABLE edfixlearningmodality.ModalityTimeTypeDescriptor ADD CONSTRAINT FK_55b0e8_Descriptor FOREIGN KEY (ModalityTimeTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE edfixlearningmodality.ModalityTypeDescriptor ADD CONSTRAINT FK_2f90fd_Descriptor FOREIGN KEY (ModalityTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE edfixlearningmodality.ProgramLearningModality ADD CONSTRAINT FK_33c0a2_ModalityTimeTypeDescriptor FOREIGN KEY (ModalityTimeTypeDescriptorId)
REFERENCES edfixlearningmodality.ModalityTimeTypeDescriptor (ModalityTimeTypeDescriptorId)
;

CREATE INDEX FK_33c0a2_ModalityTimeTypeDescriptor
ON edfixlearningmodality.ProgramLearningModality (ModalityTimeTypeDescriptorId ASC);

ALTER TABLE edfixlearningmodality.ProgramLearningModality ADD CONSTRAINT FK_33c0a2_ModalityTypeDescriptor FOREIGN KEY (ModalityTypeDescriptorId)
REFERENCES edfixlearningmodality.ModalityTypeDescriptor (ModalityTypeDescriptorId)
;

CREATE INDEX FK_33c0a2_ModalityTypeDescriptor
ON edfixlearningmodality.ProgramLearningModality (ModalityTypeDescriptorId ASC);

ALTER TABLE edfixlearningmodality.ProgramLearningModality ADD CONSTRAINT FK_33c0a2_Program FOREIGN KEY (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
REFERENCES edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_33c0a2_Program
ON edfixlearningmodality.ProgramLearningModality (EducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC);

-- Table edfixlearningmodality.CalendarDateExtension --
CREATE TABLE edfixlearningmodality.CalendarDateExtension (
    CalendarCode VARCHAR(60) NOT NULL,
    Date DATE NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    PlaceHolderProp BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CalendarDateExtension_PK PRIMARY KEY (CalendarCode, Date, SchoolId, SchoolYear)
); 
ALTER TABLE edfixlearningmodality.CalendarDateExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table edfixlearningmodality.CalendarDateProgramLearningModalityType --
CREATE TABLE edfixlearningmodality.CalendarDateProgramLearningModalityType (
    CalendarCode VARCHAR(60) NOT NULL,
    Date DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CalendarDateProgramLearningModalityType_PK PRIMARY KEY (CalendarCode, Date, EducationOrganizationId, ProgramName, ProgramTypeDescriptorId, SchoolId, SchoolYear)
); 
ALTER TABLE edfixlearningmodality.CalendarDateProgramLearningModalityType ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality --
CREATE TABLE edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality (
    CalendarCode VARCHAR(60) NOT NULL,
    Date DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ModalityTypeDescriptorId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    ModalityTime DECIMAL(8, 2) NOT NULL,
    ModalityTimeTypeDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CalendarDateProgramLearningModalityTypeLearningModality_PK PRIMARY KEY (CalendarCode, Date, EducationOrganizationId, ModalityTypeDescriptorId, ProgramName, ProgramTypeDescriptorId, SchoolId, SchoolYear)
); 
ALTER TABLE edfixlearningmodality.CalendarDateProgramLearningModalityTypeLearningModality ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table edfixlearningmodality.ModalityTimeTypeDescriptor --
CREATE TABLE edfixlearningmodality.ModalityTimeTypeDescriptor (
    ModalityTimeTypeDescriptorId INT NOT NULL,
    CONSTRAINT ModalityTimeTypeDescriptor_PK PRIMARY KEY (ModalityTimeTypeDescriptorId)
); 

-- Table edfixlearningmodality.ModalityTypeDescriptor --
CREATE TABLE edfixlearningmodality.ModalityTypeDescriptor (
    ModalityTypeDescriptorId INT NOT NULL,
    CONSTRAINT ModalityTypeDescriptor_PK PRIMARY KEY (ModalityTypeDescriptorId)
); 

-- Table edfixlearningmodality.ProgramLearningModality --
CREATE TABLE edfixlearningmodality.ProgramLearningModality (
    EducationOrganizationId INT NOT NULL,
    ModalityTypeDescriptorId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    ModalityTime DECIMAL(8, 2) NOT NULL,
    ModalityTimeTypeDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT ProgramLearningModality_PK PRIMARY KEY (EducationOrganizationId, ModalityTypeDescriptorId, ProgramName, ProgramTypeDescriptorId)
); 
ALTER TABLE edfixlearningmodality.ProgramLearningModality ALTER COLUMN CreateDate SET DEFAULT current_timestamp;


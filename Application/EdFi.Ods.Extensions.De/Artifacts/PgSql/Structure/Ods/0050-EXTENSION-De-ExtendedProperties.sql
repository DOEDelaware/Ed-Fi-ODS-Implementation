-- Extended Properties [de].[AcceptanceStatusDescriptor] --
COMMENT ON TABLE de.AcceptanceStatusDescriptor IS 'Defines the codes that identify the status of the college acceptance.';
COMMENT ON COLUMN de.AcceptanceStatusDescriptor.AcceptanceStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[AllegedBullyingVictim] --
COMMENT ON TABLE de.AllegedBullyingVictim IS 'This represents the victims of alleged bullying incidents.';
COMMENT ON COLUMN de.AllegedBullyingVictim.AllegedIncidentDate IS 'The date of the alleged bullying incident.';
COMMENT ON COLUMN de.AllegedBullyingVictim.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.AllegedBullyingVictim.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.AllegedBullyingVictim.FollowupComment IS 'Indicates the follow up detail regarding the alleged bullying incident.';
COMMENT ON COLUMN de.AllegedBullyingVictim.IncidentDescription IS 'The description of the alleged bullying incident.';
COMMENT ON COLUMN de.AllegedBullyingVictim.IncidentLocationDescriptorId IS 'Indicates the location where alleged bullying incident occurred.';
COMMENT ON COLUMN de.AllegedBullyingVictim.MultiplePriorEvent IS 'Indicates if student was involved in multiple prior alleged bullying incidents.';
COMMENT ON COLUMN de.AllegedBullyingVictim.ReasonIncidentRelatedToDescriptorId IS 'Indicates the reason for the alleged bullying incident.';
COMMENT ON COLUMN de.AllegedBullyingVictim.ReportDate IS 'Indicates the date on which the alleged bullying incident was reported.';
COMMENT ON COLUMN de.AllegedBullyingVictim.ReportedBy IS 'Identifies the person who reported the alleged bullying incident.';

-- Extended Properties [de].[AllegedBullyingVictimBullyingCategory] --
COMMENT ON TABLE de.AllegedBullyingVictimBullyingCategory IS 'Indicates the type of bullying.';
COMMENT ON COLUMN de.AllegedBullyingVictimBullyingCategory.AllegedIncidentDate IS 'The date of the alleged bullying incident.';
COMMENT ON COLUMN de.AllegedBullyingVictimBullyingCategory.BullyingCategoryDescriptorId IS 'Indicates the type of bullying.';
COMMENT ON COLUMN de.AllegedBullyingVictimBullyingCategory.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.AllegedBullyingVictimBullyingCategory.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [de].[APExamCodeDescriptor] --
COMMENT ON TABLE de.APExamCodeDescriptor IS 'Defines the codes that identify the type of AP exam.';
COMMENT ON COLUMN de.APExamCodeDescriptor.APExamCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[AttendanceConfigurationCategoryDescriptor] --
COMMENT ON TABLE de.AttendanceConfigurationCategoryDescriptor IS 'Indicates the period type that is used for taking attendance.';
COMMENT ON COLUMN de.AttendanceConfigurationCategoryDescriptor.AttendanceConfigurationCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[BullyingCategoryDescriptor] --
COMMENT ON TABLE de.BullyingCategoryDescriptor IS 'Indicates the type of bullying.';
COMMENT ON COLUMN de.BullyingCategoryDescriptor.BullyingCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[CalendarDateExtension] --
COMMENT ON TABLE de.CalendarDateExtension IS '';
COMMENT ON COLUMN de.CalendarDateExtension.CalendarCode IS 'The identifier for the Calendar.';
COMMENT ON COLUMN de.CalendarDateExtension.Date IS 'The month, day, and year of the CalendarEvent.';
COMMENT ON COLUMN de.CalendarDateExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.CalendarDateExtension.SchoolYear IS 'The identifier for the school year associated with the Calendar.';
COMMENT ON COLUMN de.CalendarDateExtension.CycleDescriptorId IS 'Indicates the code for specifying the cycle day.';
COMMENT ON COLUMN de.CalendarDateExtension.MembershipDayValue IS 'Indicates the value of membership for the day.';

-- Extended Properties [de].[CertificateCategoryDescriptor] --
COMMENT ON TABLE de.CertificateCategoryDescriptor IS 'Indicates the type of certificate achieved.';
COMMENT ON COLUMN de.CertificateCategoryDescriptor.CertificateCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[CertificationDescriptor] --
COMMENT ON TABLE de.CertificationDescriptor IS 'Defines the codes that identify the type of career pathway certification acheived.';
COMMENT ON COLUMN de.CertificationDescriptor.CertificationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[ChoiceCategoryDescriptor] --
COMMENT ON TABLE de.ChoiceCategoryDescriptor IS 'Indicates the choice type for choice transfer.';
COMMENT ON COLUMN de.ChoiceCategoryDescriptor.ChoiceCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[CIPCourse] --
COMMENT ON TABLE de.CIPCourse IS 'Identifies courses that are CIP.';
COMMENT ON COLUMN de.CIPCourse.CIPCode IS 'Indicates the code for the CIP course.';
COMMENT ON COLUMN de.CIPCourse.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN de.CIPCourse.Pathway IS 'Indicates the pathway.';
COMMENT ON COLUMN de.CIPCourse.FundingLevel IS 'Indicates the funding level.';
COMMENT ON COLUMN de.CIPCourse.Cluster IS 'Indicates the cluster.';
COMMENT ON COLUMN de.CIPCourse.CourseName IS 'Indicates the name of the course.';

-- Extended Properties [de].[ClassPeriodCycle] --
COMMENT ON TABLE de.ClassPeriodCycle IS 'Indicates a cycle day.';
COMMENT ON COLUMN de.ClassPeriodCycle.ClassPeriodName IS 'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).';
COMMENT ON COLUMN de.ClassPeriodCycle.CycleDescriptorId IS 'Indicates the code for the cycle.';
COMMENT ON COLUMN de.ClassPeriodCycle.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.ClassPeriodCycle.Timeslot IS 'A number indicating the order of this scheduling time unit in the entire day.';

-- Extended Properties [de].[ClassPeriodExtension] --
COMMENT ON TABLE de.ClassPeriodExtension IS '';
COMMENT ON COLUMN de.ClassPeriodExtension.ClassPeriodName IS 'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).';
COMMENT ON COLUMN de.ClassPeriodExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.ClassPeriodExtension.AttendancePeriodOrder IS 'Number indicating the order that the period should be listed.';
COMMENT ON COLUMN de.ClassPeriodExtension.Description IS 'Description of the attendance period.';

-- Extended Properties [de].[CoreSubjectDescriptor] --
COMMENT ON TABLE de.CoreSubjectDescriptor IS 'Defines the codes that identify a core subject.';
COMMENT ON COLUMN de.CoreSubjectDescriptor.CoreSubjectDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[CourseExtension] --
COMMENT ON TABLE de.CourseExtension IS '';
COMMENT ON COLUMN de.CourseExtension.CourseCode IS 'A unique alphanumeric code assigned to a course.';
COMMENT ON COLUMN de.CourseExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.CourseExtension.Active IS 'The current status of the course.';
COMMENT ON COLUMN de.CourseExtension.APExamCodeDescriptorId IS 'Indicates the code for the AP exam.';
COMMENT ON COLUMN de.CourseExtension.AveragePassTimeMinutesPerWeek IS 'Indicates the number of times allowed in the hall per week for the course.';
COMMENT ON COLUMN de.CourseExtension.CoreSubjectDescriptorId IS 'Indicates the core subject associated with the course.';
COMMENT ON COLUMN de.CourseExtension.FractionOfYearOffered IS 'The fraction of a year for the Coop or DO student (i.e. 1.0 for full year, .50 for half year).';
COMMENT ON COLUMN de.CourseExtension.MinutesPerWeekAverage IS 'Indicates the minutes per week the course meets.';
COMMENT ON COLUMN de.CourseExtension.SecondaryStaffClassroomServiceStatusDescriptorId IS 'Indicates the status of the service of the secondary staff in the classroom.';
COMMENT ON COLUMN de.CourseExtension.StaffCredentialFieldDescriptorId IS 'Indicates the specialty requirement for the staff teaching the course.';
COMMENT ON COLUMN de.CourseExtension.SecondaryStaffCredentialFieldDescriptorId IS 'Indicates the specialty requirement for the secondary staff teaching the course.';
COMMENT ON COLUMN de.CourseExtension.SecondaryStaffRoleDescriptorId IS 'Indicates the role of the secondary staff for the course.';
COMMENT ON COLUMN de.CourseExtension.UnitCountExceptionSchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.CourseExtension.LevelNumber IS 'The Default Level Number for this course.';

-- Extended Properties [de].[CycleDescriptor] --
COMMENT ON TABLE de.CycleDescriptor IS 'Defines the codes that identify the cycle day.';
COMMENT ON COLUMN de.CycleDescriptor.CycleDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[DeescalationTechniqueDescriptor] --
COMMENT ON TABLE de.DeescalationTechniqueDescriptor IS 'Defines techniques for de-escalation of student situaion.';
COMMENT ON COLUMN de.DeescalationTechniqueDescriptor.DeescalationTechniqueDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[DiplomaCertificateCategoryDescriptor] --
COMMENT ON TABLE de.DiplomaCertificateCategoryDescriptor IS 'Indicates whether special education student is persuing a diploma or certificate.';
COMMENT ON COLUMN de.DiplomaCertificateCategoryDescriptor.DiplomaCertificateCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[DisciplineDispositionDescriptor] --
COMMENT ON TABLE de.DisciplineDispositionDescriptor IS 'Defines the codes for the offender action disposition.';
COMMENT ON COLUMN de.DisciplineDispositionDescriptor.DisciplineDispositionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[DisciplineIncidentCode] --
COMMENT ON TABLE de.DisciplineIncidentCode IS 'This represents the additional attributes required for the Behavior descriptor.';
COMMENT ON COLUMN de.DisciplineIncidentCode.BehaviorDescriptorId IS 'Identifies the type of behavior or discipline incident code.';
COMMENT ON COLUMN de.DisciplineIncidentCode.Felony IS 'Indicates if the incident behavior is a felony.';
COMMENT ON COLUMN de.DisciplineIncidentCode.VictimRequired IS 'Indicates if incident behavior requires a victim.';

-- Extended Properties [de].[DisciplineIncidentExtension] --
COMMENT ON TABLE de.DisciplineIncidentExtension IS '';
COMMENT ON COLUMN de.DisciplineIncidentExtension.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.DisciplineIncidentExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.DisciplineIncidentExtension.LawEnforcementBadgeNumber IS 'Identifies the badge number of the responding officer to the incident.';
COMMENT ON COLUMN de.DisciplineIncidentExtension.LawEnforcementDepartment IS 'Identifies the police department to which the incident was reported.';
COMMENT ON COLUMN de.DisciplineIncidentExtension.LawEnforcementNotifyDate IS 'The date on which incident was reported to police.';
COMMENT ON COLUMN de.DisciplineIncidentExtension.LawEnforcementOfficerName IS 'The name of police officer who responded to the complaint.';
COMMENT ON COLUMN de.DisciplineIncidentExtension.DisciplineIncidentLastModifiedDate IS 'The date and time the table row was last changed.';
COMMENT ON COLUMN de.DisciplineIncidentExtension.DisciplineIncidentChangeUID IS 'Identifies the person who last changed the table row.';
COMMENT ON COLUMN de.DisciplineIncidentExtension.DisciplineIncidentCreationUID IS 'Identifies the person who created the table row.';

-- Extended Properties [de].[DisciplineIncidentReason] --
COMMENT ON TABLE de.DisciplineIncidentReason IS 'Indicates the category the incident relates to.';
COMMENT ON COLUMN de.DisciplineIncidentReason.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.DisciplineIncidentReason.IncidentRelatedToDescriptorId IS 'Indicates the category the incident is related to.';
COMMENT ON COLUMN de.DisciplineIncidentReason.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.DisciplineIncidentReason.IncidentRelatedToChangeUID IS 'Identifies the person who last changed the table row.';
COMMENT ON COLUMN de.DisciplineIncidentReason.IncidentRelatedToLastModifiedDate IS 'The date and time the table row was last changed.';

-- Extended Properties [de].[DisciplineIncidentReferral] --
COMMENT ON TABLE de.DisciplineIncidentReferral IS 'Indicates the type of referral made for the incident.';
COMMENT ON COLUMN de.DisciplineIncidentReferral.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.DisciplineIncidentReferral.ReferralDescriptorId IS 'Indicates the type of referral made for the incident.';
COMMENT ON COLUMN de.DisciplineIncidentReferral.SchoolId IS 'The identifier assigned to a school.';

-- Extended Properties [de].[EnrollmentTypeDescriptor] --
COMMENT ON TABLE de.EnrollmentTypeDescriptor IS 'Indicates the type of Student Enrollment.';
COMMENT ON COLUMN de.EnrollmentTypeDescriptor.EnrollmentTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[FerpaOptOutDescriptor] --
COMMENT ON TABLE de.FerpaOptOutDescriptor IS 'Defines the codes that identify the type of opt out for FERPA.';
COMMENT ON COLUMN de.FerpaOptOutDescriptor.FerpaOptOutDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[FollowupCategoryDescriptor] --
COMMENT ON TABLE de.FollowupCategoryDescriptor IS 'Indicates the code for the follow-up after medical exam or visit.';
COMMENT ON COLUMN de.FollowupCategoryDescriptor.FollowupCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[FundingNeedsCategoryDescriptor] --
COMMENT ON TABLE de.FundingNeedsCategoryDescriptor IS 'Defines the codes that identify the categories for the funding need.';
COMMENT ON COLUMN de.FundingNeedsCategoryDescriptor.FundingNeedsCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[GradeTypeDetail] --
COMMENT ON TABLE de.GradeTypeDetail IS 'This entity identifies additional information that is required to identify the grade type.';
COMMENT ON COLUMN de.GradeTypeDetail.GradeTypeDescriptorId IS 'The code used to represent the mark type.';
COMMENT ON COLUMN de.GradeTypeDetail.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.GradeTypeDetail.GradeTypeOrder IS 'The order the mark type should appear in.';
COMMENT ON COLUMN de.GradeTypeDetail.GradeTypeWhenTakenDescriptorId IS 'Indicates when the mark is captured: once a year, once at each marking period, or once at each IPR run';

-- Extended Properties [de].[GradeTypeWhenTakenDescriptor] --
COMMENT ON TABLE de.GradeTypeWhenTakenDescriptor IS 'Defines the codes that identify when a mark is captured.';
COMMENT ON COLUMN de.GradeTypeWhenTakenDescriptor.GradeTypeWhenTakenDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[GradingPeriodExtension] --
COMMENT ON TABLE de.GradingPeriodExtension IS '';
COMMENT ON COLUMN de.GradingPeriodExtension.GradingPeriodDescriptorId IS 'The name of the period for which grades are reported.';
COMMENT ON COLUMN de.GradingPeriodExtension.PeriodSequence IS 'The sequential order of this period relative to other periods.';
COMMENT ON COLUMN de.GradingPeriodExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.GradingPeriodExtension.SchoolYear IS 'The identifier for the grading period school year.';
COMMENT ON COLUMN de.GradingPeriodExtension.EndWeek IS 'The end-week number for the marking period.';
COMMENT ON COLUMN de.GradingPeriodExtension.StartWeek IS 'The start-week number for the marking period.';

-- Extended Properties [de].[ImmunizationCodeDescriptor] --
COMMENT ON TABLE de.ImmunizationCodeDescriptor IS 'Defines the codes that identify the immunization shot.';
COMMENT ON COLUMN de.ImmunizationCodeDescriptor.ImmunizationCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[IncidentRelatedToDescriptor] --
COMMENT ON TABLE de.IncidentRelatedToDescriptor IS 'Defines the codes that identify what the incident is related to.';
COMMENT ON COLUMN de.IncidentRelatedToDescriptor.IncidentRelatedToDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[InjuryDescriptor] --
COMMENT ON TABLE de.InjuryDescriptor IS 'Defines the codes for the injuries during an incident.';
COMMENT ON COLUMN de.InjuryDescriptor.InjuryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[LevelDetail] --
COMMENT ON TABLE de.LevelDetail IS 'Indicates the detail associated with a level number.';
COMMENT ON COLUMN de.LevelDetail.LevelNumber IS 'Indicates the identifying number for the level';
COMMENT ON COLUMN de.LevelDetail.Mark IS 'Indicates the mark associated with a level number.';
COMMENT ON COLUMN de.LevelDetail.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.LevelDetail.LevelDescription IS 'Identifies the explanation for the level number';
COMMENT ON COLUMN de.LevelDetail.PassingMark IS 'Indicates whether mark is considered passing.';
COMMENT ON COLUMN de.LevelDetail.PointValue IS 'Indicates the point value for the mark associated with a level number.';
COMMENT ON COLUMN de.LevelDetail.ReportCardPrintValue IS 'Indicates the value printed on the report card for the mark assocaited with a level number.';
COMMENT ON COLUMN de.LevelDetail.TranscriptPrintValue IS 'Indicates the value printed on the transcript for the mark assocaited with a level number.';

-- Extended Properties [de].[MedicalDispositionDescriptor] --
COMMENT ON TABLE de.MedicalDispositionDescriptor IS 'Defines the codes for the medical disposition.';
COMMENT ON COLUMN de.MedicalDispositionDescriptor.MedicalDispositionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[MedicalOfficeVisit] --
COMMENT ON TABLE de.MedicalOfficeVisit IS 'Holds information on a person''s visit to the medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisit.OfficeInDate IS 'The date and time the person came to the medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisit.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.MedicalOfficeVisit.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';
COMMENT ON COLUMN de.MedicalOfficeVisit.OfficeOutDate IS 'The date and time the person left the medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisit.SchoolOfServiceSchoolId IS 'The identifier assigned to a school.';

-- Extended Properties [de].[MedicalOfficeVisitContactType] --
COMMENT ON TABLE de.MedicalOfficeVisitContactType IS 'The type of contact made resulting from person visiting medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisitContactType.ContactTypeDescriptorId IS 'The type of contact made resulting from person visiting medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisitContactType.OfficeInDate IS 'The date and time the person came to the medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisitContactType.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.MedicalOfficeVisitContactType.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';

-- Extended Properties [de].[MedicalOfficeVisitMedicalDisposition] --
COMMENT ON TABLE de.MedicalOfficeVisitMedicalDisposition IS 'Defines the codes for the medical disposition.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalDisposition.MedicalDispositionDescriptorId IS 'Defines the codes for the medical disposition.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalDisposition.OfficeInDate IS 'The date and time the person came to the medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalDisposition.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalDisposition.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';

-- Extended Properties [de].[MedicalOfficeVisitMedicalTreatmentCode] --
COMMENT ON TABLE de.MedicalOfficeVisitMedicalTreatmentCode IS 'The code for the treatment given to person visiting medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalTreatmentCode.MedicalTreatmentCodeDescriptorId IS 'The code for the treatment given to person visiting medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalTreatmentCode.OfficeInDate IS 'The date and time the person came to the medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalTreatmentCode.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalTreatmentCode.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';

-- Extended Properties [de].[MedicalOfficeVisitMedicalVisitReason] --
COMMENT ON TABLE de.MedicalOfficeVisitMedicalVisitReason IS 'The reason for visiting the medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalVisitReason.MedicalVisitReasonDescriptorId IS 'The reason for visiting the medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalVisitReason.OfficeInDate IS 'The date and time the person came to the medical office.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalVisitReason.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.MedicalOfficeVisitMedicalVisitReason.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';

-- Extended Properties [de].[MedicalReferralFollowUp] --
COMMENT ON TABLE de.MedicalReferralFollowUp IS 'Referral followup information for a person for a specific type of exam.';
COMMENT ON COLUMN de.MedicalReferralFollowUp.FollowupCategoryDescriptorId IS 'Indicates the code for the follow-up after medical exam or visit.';
COMMENT ON COLUMN de.MedicalReferralFollowUp.MedicalTestCategoryDescriptorId IS 'Indicates the type of medical test or exam.';
COMMENT ON COLUMN de.MedicalReferralFollowUp.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.MedicalReferralFollowUp.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';
COMMENT ON COLUMN de.MedicalReferralFollowUp.TestDate IS 'The datetime of the exam associated with this referral.';

-- Extended Properties [de].[MedicalScreening] --
COMMENT ON TABLE de.MedicalScreening IS 'A person was screened for a particular issue.';
COMMENT ON COLUMN de.MedicalScreening.MedicalTestCategoryDescriptorId IS 'Screening type';
COMMENT ON COLUMN de.MedicalScreening.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.MedicalScreening.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';
COMMENT ON COLUMN de.MedicalScreening.TestDate IS 'Date screening occurred.';
COMMENT ON COLUMN de.MedicalScreening.AthleticStatus IS 'If true, then indicates this screening is for the athletic exam.';
COMMENT ON COLUMN de.MedicalScreening.GradeLevelDescriptorId IS 'Grade level if person is student.';
COMMENT ON COLUMN de.MedicalScreening.SchoolOfServiceSchoolId IS 'The identifier assigned to a school.';

-- Extended Properties [de].[MedicalTestCategoryDescriptor] --
COMMENT ON TABLE de.MedicalTestCategoryDescriptor IS 'Indicates the type of medical test or exam.';
COMMENT ON COLUMN de.MedicalTestCategoryDescriptor.MedicalTestCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[MedicalTreatmentCodeDescriptor] --
COMMENT ON TABLE de.MedicalTreatmentCodeDescriptor IS 'Defines the codes for the treatment given.';
COMMENT ON COLUMN de.MedicalTreatmentCodeDescriptor.MedicalTreatmentCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[MedicalVisitReasonDescriptor] --
COMMENT ON TABLE de.MedicalVisitReasonDescriptor IS 'Defines the codes that identity the reason for visiting the medical office.';
COMMENT ON COLUMN de.MedicalVisitReasonDescriptor.MedicalVisitReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[MedicationBox] --
COMMENT ON TABLE de.MedicationBox IS 'This entity represents an indiviudal medicane for a student.';
COMMENT ON COLUMN de.MedicationBox.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN de.MedicationBox.MedicationBoxId IS 'The Unique ID for the medication, with the district prepended.';
COMMENT ON COLUMN de.MedicationBox.MedicationCode IS 'This is the code for the medication.';
COMMENT ON COLUMN de.MedicationBox.MedicationDescription IS 'This is the description of the medication.';

-- Extended Properties [de].[NonStudent] --
COMMENT ON TABLE de.NonStudent IS 'Defines demographic information for people involved in incidents who are not students.';
COMMENT ON COLUMN de.NonStudent.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN de.NonStudent.NonStudentLocalId IS 'The local identification number for the non student.';
COMMENT ON COLUMN de.NonStudent.PersonalTitlePrefix IS 'A prefix used to denote the title, degree, position, or seniority of the person.';
COMMENT ON COLUMN de.NonStudent.FirstName IS 'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.';
COMMENT ON COLUMN de.NonStudent.MiddleName IS 'A secondary name given to an individual at birth, baptism, or during another naming ceremony.';
COMMENT ON COLUMN de.NonStudent.LastSurname IS 'The name borne in common by members of a family.';
COMMENT ON COLUMN de.NonStudent.GenerationCodeSuffix IS 'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).';
COMMENT ON COLUMN de.NonStudent.MaidenName IS 'The person''s maiden name.';
COMMENT ON COLUMN de.NonStudent.BirthDate IS 'The month, day, and year on which an individual was born.';
COMMENT ON COLUMN de.NonStudent.BirthCity IS 'The city the student was born in.';
COMMENT ON COLUMN de.NonStudent.BirthStateAbbreviationDescriptorId IS 'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.';
COMMENT ON COLUMN de.NonStudent.BirthInternationalProvince IS 'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.';
COMMENT ON COLUMN de.NonStudent.BirthCountryDescriptorId IS 'The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';
COMMENT ON COLUMN de.NonStudent.DateEnteredUS IS 'For students born outside of the U.S., the date the student entered the U.S.';
COMMENT ON COLUMN de.NonStudent.MultipleBirthStatus IS 'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)';
COMMENT ON COLUMN de.NonStudent.BirthSexDescriptorId IS 'A person''s gender at birth.';
COMMENT ON COLUMN de.NonStudent.HispanicLatinoEthnicity IS 'Indicates if non student is of Hispanic origin.';
COMMENT ON COLUMN de.NonStudent.SexDescriptorId IS 'Gender of the non student.';
COMMENT ON COLUMN de.NonStudent.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.NonStudent.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.NonStudent.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';

-- Extended Properties [de].[NonStudentEthnicity] --
COMMENT ON TABLE de.NonStudentEthnicity IS 'Code for the ethnicity of the non student.';
COMMENT ON COLUMN de.NonStudentEthnicity.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN de.NonStudentEthnicity.NonStudentLocalId IS 'The local identification number for the non student.';
COMMENT ON COLUMN de.NonStudentEthnicity.RaceDescriptorId IS 'Indicates the code for the race';
COMMENT ON COLUMN de.NonStudentEthnicity.RaceOrder IS 'Order in which a individual''s race is identified.';
COMMENT ON COLUMN de.NonStudentEthnicity.RacePercentage IS 'The percentage that the individual identifies self with a race.';
COMMENT ON COLUMN de.NonStudentEthnicity.FederalRaceDescriptorId IS 'Indicates the equivalent federal code for the race/ethnicity of an individual.';
COMMENT ON COLUMN de.NonStudentEthnicity.EthnicityLastModifiedDate IS 'The date and time the table row was last changed.';

-- Extended Properties [de].[NonStudentPersonalIdentificationDocument] --
COMMENT ON TABLE de.NonStudentPersonalIdentificationDocument IS 'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.';
COMMENT ON COLUMN de.NonStudentPersonalIdentificationDocument.IdentificationDocumentUseDescriptorId IS 'The primary function of the document used for establishing identity.';
COMMENT ON COLUMN de.NonStudentPersonalIdentificationDocument.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN de.NonStudentPersonalIdentificationDocument.NonStudentLocalId IS 'The local identification number for the non student.';
COMMENT ON COLUMN de.NonStudentPersonalIdentificationDocument.PersonalInformationVerificationDescriptorId IS 'The category of the document relative to its purpose.';
COMMENT ON COLUMN de.NonStudentPersonalIdentificationDocument.DocumentTitle IS 'The title of the document given by the issuer.';
COMMENT ON COLUMN de.NonStudentPersonalIdentificationDocument.DocumentExpirationDate IS 'The day when the document  expires, if null then never expires.';
COMMENT ON COLUMN de.NonStudentPersonalIdentificationDocument.IssuerDocumentIdentificationCode IS 'The unique identifier on the issuer''s identification system.';
COMMENT ON COLUMN de.NonStudentPersonalIdentificationDocument.IssuerName IS 'Name of the entity or institution that issued the document.';
COMMENT ON COLUMN de.NonStudentPersonalIdentificationDocument.IssuerCountryDescriptorId IS 'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';

-- Extended Properties [de].[NonViolentTechniqueDescriptor] --
COMMENT ON TABLE de.NonViolentTechniqueDescriptor IS 'Defines Non-Violent Techniques to restrain student.';
COMMENT ON COLUMN de.NonViolentTechniqueDescriptor.NonViolentTechniqueDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[NotificationMethodDescriptor] --
COMMENT ON TABLE de.NotificationMethodDescriptor IS 'Indicates the method of notification.';
COMMENT ON COLUMN de.NotificationMethodDescriptor.NotificationMethodDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[ParentAddressExtension] --
COMMENT ON TABLE de.ParentAddressExtension IS 'Parent''s address, if different from the student address.';
COMMENT ON COLUMN de.ParentAddressExtension.AddressTypeDescriptorId IS 'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)';
COMMENT ON COLUMN de.ParentAddressExtension.City IS 'The name of the city in which an address is located.';
COMMENT ON COLUMN de.ParentAddressExtension.ParentUSI IS 'A unique alphanumeric code assigned to a parent.';
COMMENT ON COLUMN de.ParentAddressExtension.PostalCode IS 'The five or nine digit zip code or overseas postal code portion of an address.';
COMMENT ON COLUMN de.ParentAddressExtension.StateAbbreviationDescriptorId IS 'The abbreviation for the state (within the United States) or outlying area in which an address is located.';
COMMENT ON COLUMN de.ParentAddressExtension.StreetNumberName IS 'The street number and street name or post office box number of an address.';
COMMENT ON COLUMN de.ParentAddressExtension.Complex IS 'The apartment or housing complex name.';
COMMENT ON COLUMN de.ParentAddressExtension.Development IS 'The name of the housing development.';

-- Extended Properties [de].[ParticipationCodeDescriptor] --
COMMENT ON TABLE de.ParticipationCodeDescriptor IS 'This indicates the type of participant in a discipline incident.';
COMMENT ON COLUMN de.ParticipationCodeDescriptor.ParticipationCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[PersonCategoryDescriptor] --
COMMENT ON TABLE de.PersonCategoryDescriptor IS 'Defines the codes that identify the type of person.';
COMMENT ON COLUMN de.PersonCategoryDescriptor.PersonCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[PersonDisciplineAction] --
COMMENT ON TABLE de.PersonDisciplineAction IS 'Defines the actions assigned to an offender.';
COMMENT ON COLUMN de.PersonDisciplineAction.ActionIdentifier IS 'Identifies the action number that was created for the student.';
COMMENT ON COLUMN de.PersonDisciplineAction.ActionStartDate IS 'The scheduled start date for the action.';
COMMENT ON COLUMN de.PersonDisciplineAction.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.PersonDisciplineAction.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.PersonDisciplineAction.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.PersonDisciplineAction.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';
COMMENT ON COLUMN de.PersonDisciplineAction.ActionEndDate IS 'The scheduled end date for the action.';
COMMENT ON COLUMN de.PersonDisciplineAction.ActualActionDuration IS 'The actual duration of the action.';
COMMENT ON COLUMN de.PersonDisciplineAction.ScheduledActionDuration IS 'The scheduled duration of the action.';
COMMENT ON COLUMN de.PersonDisciplineAction.DisciplineActionLengthDifferenceReasonDescriptorId IS 'Indicates the code for the reason for any difference in the scheduled duration and actual duration of the action.';

-- Extended Properties [de].[PersonDisciplineActionDiscipline] --
COMMENT ON TABLE de.PersonDisciplineActionDiscipline IS 'Indicates the code that represents the action assigned to the offender.';
COMMENT ON COLUMN de.PersonDisciplineActionDiscipline.ActionIdentifier IS 'Identifies the action number that was created for the student.';
COMMENT ON COLUMN de.PersonDisciplineActionDiscipline.ActionStartDate IS 'The scheduled start date for the action.';
COMMENT ON COLUMN de.PersonDisciplineActionDiscipline.DisciplineDescriptorId IS 'Indicates the code that represents the action assigned to the offender.';
COMMENT ON COLUMN de.PersonDisciplineActionDiscipline.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.PersonDisciplineActionDiscipline.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.PersonDisciplineActionDiscipline.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.PersonDisciplineActionDiscipline.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';

-- Extended Properties [de].[PersonDisciplineActionDisciplineDisposition] --
COMMENT ON TABLE de.PersonDisciplineActionDisciplineDisposition IS 'The code that indicates if and how the action was completed.';
COMMENT ON COLUMN de.PersonDisciplineActionDisciplineDisposition.ActionIdentifier IS 'Identifies the action number that was created for the student.';
COMMENT ON COLUMN de.PersonDisciplineActionDisciplineDisposition.ActionStartDate IS 'The scheduled start date for the action.';
COMMENT ON COLUMN de.PersonDisciplineActionDisciplineDisposition.DisciplineDispositionDescriptorId IS 'The code that indicates if and how the action was completed.';
COMMENT ON COLUMN de.PersonDisciplineActionDisciplineDisposition.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.PersonDisciplineActionDisciplineDisposition.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.PersonDisciplineActionDisciplineDisposition.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.PersonDisciplineActionDisciplineDisposition.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';

-- Extended Properties [de].[PersonDisciplineIncidentAssociation] --
COMMENT ON TABLE de.PersonDisciplineIncidentAssociation IS 'This association indicates those persons who were victims, offenders and witnesses for a discipline incident.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociation.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociation.ParticipantNumber IS 'Indicates the number for the participant in the discipline incident if multiple persons participated.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociation.ParticipationCodeDescriptorId IS 'Indicates the code of the participant in the discipline incident.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociation.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociation.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociation.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociation.VictimCategoryDescriptorId IS 'Indicates the code for the type of victim.';

-- Extended Properties [de].[PersonDisciplineIncidentAssociationOffenderBehavior] --
COMMENT ON TABLE de.PersonDisciplineIncidentAssociationOffenderBehavior IS 'Describes the behavior by category and provides a detailed description.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationOffenderBehavior.BehaviorDescriptorId IS 'Indicates the type of behavior committed by the offender.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationOffenderBehavior.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationOffenderBehavior.ParticipantNumber IS 'Indicates the number for the participant in the discipline incident if multiple persons participated.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationOffenderBehavior.ParticipationCodeDescriptorId IS 'Indicates the code of the participant in the discipline incident.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationOffenderBehavior.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationOffenderBehavior.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationOffenderBehavior.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationOffenderBehavior.BehaviorDetailDescription IS 'Description of the offense or incident.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationOffenderBehavior.OffenseNumber IS 'Offense number that corresponds to the incident.';

-- Extended Properties [de].[PersonDisciplineIncidentAssociationVictimInjury] --
COMMENT ON TABLE de.PersonDisciplineIncidentAssociationVictimInjury IS 'Indicates the type of injury receied by the victim.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationVictimInjury.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationVictimInjury.InjuryDescriptorId IS 'Indicates the type of injury receied by the victim.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationVictimInjury.ParticipantNumber IS 'Indicates the number for the participant in the discipline incident if multiple persons participated.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationVictimInjury.ParticipationCodeDescriptorId IS 'Indicates the code of the participant in the discipline incident.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationVictimInjury.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationVictimInjury.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.PersonDisciplineIncidentAssociationVictimInjury.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';

-- Extended Properties [de].[PersonImmunization] --
COMMENT ON TABLE de.PersonImmunization IS 'This entity captures the immunization details for a person.';
COMMENT ON COLUMN de.PersonImmunization.ImmunizationCodeDescriptorId IS 'Defines the codes that identify the immunization shot.';
COMMENT ON COLUMN de.PersonImmunization.ImmunizationDate IS 'Indicates the date of the immunziation.';
COMMENT ON COLUMN de.PersonImmunization.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.PersonImmunization.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';

-- Extended Properties [de].[PersonMedicationBoxAssociation] --
COMMENT ON TABLE de.PersonMedicationBoxAssociation IS 'This association indicates a medication from a box issued to a person.';
COMMENT ON COLUMN de.PersonMedicationBoxAssociation.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN de.PersonMedicationBoxAssociation.MedicationBoxId IS 'The Unique ID for the medication, with the district prepended.';
COMMENT ON COLUMN de.PersonMedicationBoxAssociation.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.PersonMedicationBoxAssociation.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';
COMMENT ON COLUMN de.PersonMedicationBoxAssociation.MedicationRequired IS 'If Medication is Required.';

-- Extended Properties [de].[PersonMedicationBoxAssociationIssue] --
COMMENT ON TABLE de.PersonMedicationBoxAssociationIssue IS 'Collection of Issue times.';
COMMENT ON COLUMN de.PersonMedicationBoxAssociationIssue.IssueDate IS 'Date issued.';
COMMENT ON COLUMN de.PersonMedicationBoxAssociationIssue.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN de.PersonMedicationBoxAssociationIssue.MedicationBoxId IS 'The Unique ID for the medication, with the district prepended.';
COMMENT ON COLUMN de.PersonMedicationBoxAssociationIssue.PersonId IS 'A unique alphanumeric code assigned to a person.';
COMMENT ON COLUMN de.PersonMedicationBoxAssociationIssue.SourceSystemDescriptorId IS 'This descriptor defines the originating record source system for the person.';

-- Extended Properties [de].[PostSecondaryDetail] --
COMMENT ON TABLE de.PostSecondaryDetail IS 'This represents the post secondary event deatil such as college application.';
COMMENT ON COLUMN de.PostSecondaryDetail.PostSecondaryEventCategoryDescriptorId IS 'Indicates the type of post secondary event.';
COMMENT ON COLUMN de.PostSecondaryDetail.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.PostSecondaryDetail.SchoolYear IS 'Indicates the school year student applied for college.';
COMMENT ON COLUMN de.PostSecondaryDetail.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.PostSecondaryDetail.ReasonNotApplied4PlusCollegeDescriptorId IS 'Indicates the reason student did not apply to 4 or more colleges.';

-- Extended Properties [de].[PostSecondaryDetailInstitution] --
COMMENT ON TABLE de.PostSecondaryDetailInstitution IS 'Identifies the college student applied to.';
COMMENT ON COLUMN de.PostSecondaryDetailInstitution.PostSecondaryEventCategoryDescriptorId IS 'Indicates the type of post secondary event.';
COMMENT ON COLUMN de.PostSecondaryDetailInstitution.PostSecondaryInstitutionId IS 'The ID of the post secondary institution.';
COMMENT ON COLUMN de.PostSecondaryDetailInstitution.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.PostSecondaryDetailInstitution.SchoolYear IS 'Indicates the school year student applied for college.';
COMMENT ON COLUMN de.PostSecondaryDetailInstitution.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.PostSecondaryDetailInstitution.AcceptanceStatusDescriptorId IS 'Indicates the acceptance status of the post secondary institution for the student.';
COMMENT ON COLUMN de.PostSecondaryDetailInstitution.DateTranscriptMailed IS 'indicates the date the student transcript was mailed to the post secondary instituion.';
COMMENT ON COLUMN de.PostSecondaryDetailInstitution.PlansToAttend IS 'Indicates if student plans to attend the post secondary institution.';

-- Extended Properties [de].[ReasonForLateIEPDescriptor] --
COMMENT ON TABLE de.ReasonForLateIEPDescriptor IS 'Indicates reason for Late IEP.';
COMMENT ON COLUMN de.ReasonForLateIEPDescriptor.ReasonForLateIEPDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[ReasonNotApplied4PlusCollegeDescriptor] --
COMMENT ON TABLE de.ReasonNotApplied4PlusCollegeDescriptor IS 'Indicates the reason for not applying to four or more colleges.';
COMMENT ON COLUMN de.ReasonNotApplied4PlusCollegeDescriptor.ReasonNotApplied4PlusCollegeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[ReferralDescriptor] --
COMMENT ON TABLE de.ReferralDescriptor IS 'Defines the codes to indicate to whom the incident will be reported or referred.';
COMMENT ON COLUMN de.ReferralDescriptor.ReferralDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[RestraintEventCategoryDescriptor] --
COMMENT ON TABLE de.RestraintEventCategoryDescriptor IS 'Indicates the category of the restraint event.';
COMMENT ON COLUMN de.RestraintEventCategoryDescriptor.RestraintEventCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[RestraintSeclusion] --
COMMENT ON TABLE de.RestraintSeclusion IS 'This entity captures the detail for events involving retraint and seclusion.';
COMMENT ON COLUMN de.RestraintSeclusion.EventDate IS 'The month, day, and year on which the restraint secluson event occurred.';
COMMENT ON COLUMN de.RestraintSeclusion.EventTime IS 'An indication of the time of day the event occurred.';
COMMENT ON COLUMN de.RestraintSeclusion.RestraintEventCategoryDescriptorId IS 'Indicates the type of the restraint or seclusion performed.';
COMMENT ON COLUMN de.RestraintSeclusion.RestraintEventReasonDescriptorId IS 'Indicates the behavior that caused the restraint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusion.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.RestraintSeclusion.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.RestraintSeclusion.AdditionalDetail IS 'Indicates the additional detail regrading the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintSeclusion.BehaviorDuringRestraintDetail IS 'Indicates the detail regrading the behaviour during the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintSeclusion.ChangeDescription IS 'Indicates the description of changes for the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintSeclusion.DeescalationTechniqueDescriptorId IS 'Indicates the detail of the de-escalation technique used in the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintSeclusion.IncidentLocationDescriptorId IS 'Identifies where the restraint seclusion event occurred.';
COMMENT ON COLUMN de.RestraintSeclusion.RestraintReportDate IS 'Indicates the date on which the restraint secluson event was reported.';
COMMENT ON COLUMN de.RestraintSeclusion.RestraintDuration IS 'Indicates the length in minutes of the restarint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusion.ConsecutiveRestraintCount IS 'Indicates the number of times a restraint secluson event occurred in a day.';
COMMENT ON COLUMN de.RestraintSeclusion.NotificationMethodDescriptorId IS 'Indicates the method of notification used for notifying parent or guardian about the restraint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusion.NonViolentTechniqueDescriptorId IS 'Indicates the non violent technique detail regrading the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintSeclusion.ParentGuardianNotified IS 'Indicates if the parent or guradian was notified about the restarint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusion.ParentGuardianNotifiedDate IS 'Indicates the date on which the parent or guardian was notified.';
COMMENT ON COLUMN de.RestraintSeclusion.ParentGuardianNotifiedTime IS 'Indicates the time of day the parent or guardian was notified about the restarint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusion.PolicyChangeDetail IS 'Indicates the policy Change detail regrading the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintSeclusion.PriorToEventDetail IS 'Indicates the event details prior to the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintSeclusion.StaffInjured IS 'Indicates if staff was injured during the restarint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusion.StaffTreatmentDescriptorId IS 'Indicates the treatment provided to staff injured during restraint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusion.StaffTrainingDetail IS 'Indicates the traing detail for staff involved in restraint seclusion event.';
COMMENT ON COLUMN de.RestraintSeclusion.StudentInjured IS 'Indicates if student was injured during the restarint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusion.StudentTreatmentDescriptorId IS 'Indicates the treatment provided to student injured during restarint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusion.StudentInterviewDetail IS 'Indicates the student interview detail regrading the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintSeclusion.SupportPlanChangeDescriptorId IS 'Indicates the type of support plan change.';
COMMENT ON COLUMN de.RestraintSeclusion.UsedCrisisResponseTeam IS 'Indicates if crisis response team was used during the restarint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusion.WitnessInterviewDetail IS 'Indicates the witness interview detail regrading the restraint seclusion event.';

-- Extended Properties [de].[RestraintSeclusionStaffProvidingRestraint] --
COMMENT ON TABLE de.RestraintSeclusionStaffProvidingRestraint IS 'Identifies the staff responsible for providing restarint.';
COMMENT ON COLUMN de.RestraintSeclusionStaffProvidingRestraint.EventDate IS 'The month, day, and year on which the restraint secluson event occurred.';
COMMENT ON COLUMN de.RestraintSeclusionStaffProvidingRestraint.EventTime IS 'An indication of the time of day the event occurred.';
COMMENT ON COLUMN de.RestraintSeclusionStaffProvidingRestraint.RestraintEventCategoryDescriptorId IS 'Indicates the type of the restraint or seclusion performed.';
COMMENT ON COLUMN de.RestraintSeclusionStaffProvidingRestraint.RestraintEventReasonDescriptorId IS 'Indicates the behavior that caused the restraint secluson event.';
COMMENT ON COLUMN de.RestraintSeclusionStaffProvidingRestraint.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.RestraintSeclusionStaffProvidingRestraint.StaffOrdinal IS 'Relates the staff providing the restaint.';
COMMENT ON COLUMN de.RestraintSeclusionStaffProvidingRestraint.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.RestraintSeclusionStaffProvidingRestraint.TrainedActionTechnique IS 'Indicates if the staff providing restraint utilized a trained action technique.';

-- Extended Properties [de].[SchoolExtension] --
COMMENT ON TABLE de.SchoolExtension IS '';
COMMENT ON COLUMN de.SchoolExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.SchoolExtension.AttendanceConfigurationCategoryDescriptorId IS 'Indicates the period type that is used for taking attendance.';
COMMENT ON COLUMN de.SchoolExtension.UnitCountException IS 'Indicates if the school has a unit count exception';

-- Extended Properties [de].[SectionExtension] --
COMMENT ON TABLE de.SectionExtension IS '';
COMMENT ON COLUMN de.SectionExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN de.SectionExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.SectionExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN de.SectionExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN de.SectionExtension.SessionName IS 'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).';
COMMENT ON COLUMN de.SectionExtension.Description IS 'The description of the part of the course section.';
COMMENT ON COLUMN de.SectionExtension.LevelDetail IS 'The Default Level Number for this course.';

-- Extended Properties [de].[SectionMarkingPeriod] --
COMMENT ON TABLE de.SectionMarkingPeriod IS 'The marking periods that the class meets.';
COMMENT ON COLUMN de.SectionMarkingPeriod.GradingPeriodDescriptorId IS 'The code for a marking period when the class meets.';
COMMENT ON COLUMN de.SectionMarkingPeriod.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN de.SectionMarkingPeriod.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.SectionMarkingPeriod.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN de.SectionMarkingPeriod.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN de.SectionMarkingPeriod.SessionName IS 'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).';
COMMENT ON COLUMN de.SectionMarkingPeriod.UsedSeat IS 'The number of seats used for the session in the specified marking period.';

-- Extended Properties [de].[SectionSubjectArea] --
COMMENT ON TABLE de.SectionSubjectArea IS 'Subject areas that the course meets as part of graduation requirements.';
COMMENT ON COLUMN de.SectionSubjectArea.AcademicSubjectDescriptorId IS 'The code of the subject area the course meets.';
COMMENT ON COLUMN de.SectionSubjectArea.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN de.SectionSubjectArea.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.SectionSubjectArea.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN de.SectionSubjectArea.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN de.SectionSubjectArea.SessionName IS 'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).';
COMMENT ON COLUMN de.SectionSubjectArea.SubjectOrder IS 'The order of the subject area.';
COMMENT ON COLUMN de.SectionSubjectArea.SubjectAreaLastModifiedDate IS 'The date and time the table row was last changed.';

-- Extended Properties [de].[ServiceStatusDescriptor] --
COMMENT ON TABLE de.ServiceStatusDescriptor IS 'Defines the codes that identify the status of the service.';
COMMENT ON COLUMN de.ServiceStatusDescriptor.ServiceStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[StaffEducationOrganizationAssignmentAssociationExtension] --
COMMENT ON TABLE de.StaffEducationOrganizationAssignmentAssociationExtension IS '';
COMMENT ON COLUMN de.StaffEducationOrganizationAssignmentAssociationExtension.BeginDate IS 'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the LEA.';
COMMENT ON COLUMN de.StaffEducationOrganizationAssignmentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StaffEducationOrganizationAssignmentAssociationExtension.StaffClassificationDescriptorId IS 'The titles of employment, official status, or rank of education staff.';
COMMENT ON COLUMN de.StaffEducationOrganizationAssignmentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN de.StaffEducationOrganizationAssignmentAssociationExtension.Active IS 'Indicates the availability of staff member for maintaining student attendance and scheduling courses.';

-- Extended Properties [de].[StaffProgramAssociationExtension] --
COMMENT ON TABLE de.StaffProgramAssociationExtension IS '';
COMMENT ON COLUMN de.StaffProgramAssociationExtension.BeginDate IS 'Start date for the association of staff to this program.';
COMMENT ON COLUMN de.StaffProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StaffProgramAssociationExtension.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StaffProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StaffProgramAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN de.StaffProgramAssociationExtension.ImmersionLanguageDescriptorId IS 'Indicates the language taught by the staff participating in the language immersion program.';

-- Extended Properties [de].[StaffRoleDescriptor] --
COMMENT ON TABLE de.StaffRoleDescriptor IS 'Defines the codes that identify the role of the staff for a course.';
COMMENT ON COLUMN de.StaffRoleDescriptor.StaffRoleDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[Student504ProgramAssociation] --
COMMENT ON TABLE de.Student504ProgramAssociation IS 'This association represents the 504 program(S) that a student participates in or receives services from.';
COMMENT ON COLUMN de.Student504ProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN de.Student504ProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.Student504ProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.Student504ProgramAssociation.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.Student504ProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.Student504ProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.Student504ProgramAssociation.AccommodatioPlan IS 'Indicates if student receives an accommodation plan.';
COMMENT ON COLUMN de.Student504ProgramAssociation.DisabilityDescriptorId IS 'Indicates the disability.';
COMMENT ON COLUMN de.Student504ProgramAssociation.InitialDNQDate IS 'Indicates the initial DNQ date.';
COMMENT ON COLUMN de.Student504ProgramAssociation.LastEvaluationDate IS 'Indicates the last evaluation date.';
COMMENT ON COLUMN de.Student504ProgramAssociation.MeetingDate IS 'Indicates the meeting date.';

-- Extended Properties [de].[StudentCTEProgramAssociationCTEProgramExtension] --
COMMENT ON TABLE de.StudentCTEProgramAssociationCTEProgramExtension IS 'The career cluster representing the career path of the Vocational/Career Tech concentrator.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.CareerPathwayDescriptorId IS 'A sequence of courses within an area of interest that is a student''s educational road map to a chosen career.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.PathwayConcentrator IS 'Indicates if this pathway is the concentrator.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.FirstCertificationDescriptorId IS 'Identifies the certification received for the pathway.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.SecondCertificationDescriptorId IS 'Identifies the certification received for the pathway.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramExtension.ThirdCertificationDescriptorId IS 'Identifies the certification received for the pathway.';

-- Extended Properties [de].[StudentEarlyChildhoodProgramAssociation] --
COMMENT ON TABLE de.StudentEarlyChildhoodProgramAssociation IS 'This association represents the early childhood program(S) that a student participates in or receives services from.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.Regulation619DeterminedEligible IS 'Indicates if the student is determined eligible for regulation 619.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.Regulation619PartCReferralDate IS 'Indicates the date student was referred to Part C for regulation 619.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.DistrictNotificationDate IS 'Indicates the transition conference date for student for regulation 619.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.IEPMeetingDate IS 'Indicates date of IEP Meeting';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.IEPImplementationDate IS 'Indicates implementation date of IEP.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.ReasonForLateIEPDescriptorId IS 'Indicates reason IEP is late.';

-- Extended Properties [de].[StudentEducationOrganizationAssociationAddressExtension] --
COMMENT ON TABLE de.StudentEducationOrganizationAssociationAddressExtension IS 'The set of elements that describes an address, including the street address, city, state, and ZIP code.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressExtension.AddressTypeDescriptorId IS 'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressExtension.City IS 'The name of the city in which an address is located.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressExtension.PostalCode IS 'The five or nine digit zip code or overseas postal code portion of an address.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressExtension.StateAbbreviationDescriptorId IS 'The abbreviation for the state (within the United States) or outlying area in which an address is located.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressExtension.StreetNumberName IS 'The street number and street name or post office box number of an address.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressExtension.Complex IS 'The apartment or housing complex name.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressExtension.Development IS 'The name of the housing development.';

-- Extended Properties [de].[StudentEducationOrganizationAssociationExtension] --
COMMENT ON TABLE de.StudentEducationOrganizationAssociationExtension IS '';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.ChoiceCategoryDescriptorId IS 'Indicates the type of choice transfer, if student transfered.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.FerpaName IS 'Indicates the FERPA privacy flag for student''s name.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.FerpaAddress IS 'Indicates the FERPA privacy flag for student''s address.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.FerpaPhone IS 'Indicates the FERPA privacy flag for student''s phone number.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.FerpaPhoto IS 'Indicates the FERPA privacy flag for student''s photo.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.FerpaOptOutDescriptorId IS 'Indicates code for opting out of the FERPA privacy.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.SchoolYear IS 'The identifier for the school year associated with the Calendar.';

-- Extended Properties [de].[StudentEducationOrganizationAssociationMultiliteracy] --
COMMENT ON TABLE de.StudentEducationOrganizationAssociationMultiliteracy IS 'Indicates if the student received a multiliteracy award.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.AssessmentTitle IS 'Indicates the name of the assessment taken to receive the multiliteracy award.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.CertificateCategoryDescriptorId IS 'Indicates the type of certificate received with the multiliteracy award.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.LanguageDescriptorId IS 'Indicates the language associated with the multiliteracy award.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.CertificateIssueConfirm IS 'Indicates if the certificate issued was confirmed by the DOE.';

-- Extended Properties [de].[StudentEducationOrganizationAssociationScholarship] --
COMMENT ON TABLE de.StudentEducationOrganizationAssociationScholarship IS 'Indicates if a student received a scholarship for college.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationScholarship.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationScholarship.ScholarshipAmount IS 'The amount received for the scholarship';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationScholarship.ScholarshipName IS 'The name of the scholarship.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationScholarship.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [de].[StudentEducationOrganizationResponsibilityAssociationTransfer] --
COMMENT ON TABLE de.StudentEducationOrganizationResponsibilityAssociationTransfer IS 'Indicates the school transfer information for a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationResponsibilityAssociationTransfer.BeginDate IS 'Month, day, and year of the start date of an education organization''s responsibility for a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationResponsibilityAssociationTransfer.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEducationOrganizationResponsibilityAssociationTransfer.ExternalEducationOrganizationName IS 'Indicates the name of the education organization student transferred from.';
COMMENT ON COLUMN de.StudentEducationOrganizationResponsibilityAssociationTransfer.ResponsibilityDescriptorId IS 'Indications of an education organization''s responsibility for a student, such as accountability, attendance, funding, etc.';
COMMENT ON COLUMN de.StudentEducationOrganizationResponsibilityAssociationTransfer.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationResponsibilityAssociationTransfer.GradeLevelDescriptorId IS 'Indicates the GradeLevel when student transferred.';

-- Extended Properties [de].[StudentLanguageInstructionProgramAssociationLanguageImmersion] --
COMMENT ON TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion IS 'Identifies students participating in a language immersion program.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.ImmersionLanguageDescriptorId IS 'Indicates the language student is taking/took to participate in language immersion program.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.Comment IS 'This identifies the comment associated with the language immersion.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.GradeLevelDescriptorId IS 'Indicates the grade level when student participated in language immersion program.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.SchoolYear IS 'Indicates the school year when student participated in language immersion program.';

-- Extended Properties [de].[StudentParentAssociationExtension] --
COMMENT ON TABLE de.StudentParentAssociationExtension IS '';
COMMENT ON COLUMN de.StudentParentAssociationExtension.ParentUSI IS 'A unique alphanumeric code assigned to a parent.';
COMMENT ON COLUMN de.StudentParentAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentParentAssociationExtension.ContactTypeDescriptorId IS 'Indicates the type of contact it is for this student.';

-- Extended Properties [de].[StudentSchoolAssociationExtension] --
COMMENT ON TABLE de.StudentSchoolAssociationExtension IS '';
COMMENT ON COLUMN de.StudentSchoolAssociationExtension.EntryDate IS 'The month, day, and year on which an individual enters and begins to receive instructional services in a school.';
COMMENT ON COLUMN de.StudentSchoolAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.StudentSchoolAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentSchoolAssociationExtension.EnrollmentTypeDescriptorId IS 'Indicates the enrollment type.';

-- Extended Properties [de].[StudentSchoolAttendanceEventExtension] --
COMMENT ON TABLE de.StudentSchoolAttendanceEventExtension IS '';
COMMENT ON COLUMN de.StudentSchoolAttendanceEventExtension.AttendanceEventCategoryDescriptorId IS 'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.';
COMMENT ON COLUMN de.StudentSchoolAttendanceEventExtension.EventDate IS 'Date for this attendance event.';
COMMENT ON COLUMN de.StudentSchoolAttendanceEventExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.StudentSchoolAttendanceEventExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN de.StudentSchoolAttendanceEventExtension.SessionName IS 'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).';
COMMENT ON COLUMN de.StudentSchoolAttendanceEventExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentSchoolAttendanceEventExtension.AbsentTime IS 'The periods or minutes the student is absent.';
COMMENT ON COLUMN de.StudentSchoolAttendanceEventExtension.ScheduledTime IS 'The number of periods or number of minutes that the student was scheduled for the day.';

-- Extended Properties [de].[StudentSectionClassPeriodAttendanceEvent] --
COMMENT ON TABLE de.StudentSectionClassPeriodAttendanceEvent IS 'This event entity represents the recording of whether a student is in attendance for a section in a given Class Period.';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.AttendanceEventCategoryDescriptorId IS 'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.ClassPeriodName IS 'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.EventDate IS 'Date for this attendance event.';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.SessionName IS 'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.AttendanceEventReason IS 'The reported reason for a student''s absence.';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.EducationalEnvironmentDescriptorId IS 'The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.';
COMMENT ON COLUMN de.StudentSectionClassPeriodAttendanceEvent.EventDuration IS 'The amount of time for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.';

-- Extended Properties [de].[StudentSpecialEducationProgramAssociationExtension] --
COMMENT ON TABLE de.StudentSpecialEducationProgramAssociationExtension IS '';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.DiplomaCertificateCategoryDescriptorId IS 'Indicates whether student is working towards a diploma or certificate.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.SpecialEducationFundingCountException IS 'Indicates whether student is not counted for December 1.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.DSTPAccommodation IS 'Indicates whether student receives special education DSTP accomodation.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.EligbleNotReceivingService IS 'Indicates if student is eligible for special education, but is not receiving services.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.EvaluatedNoDisability IS 'Indicates if student was evaluated for special education disability, but has no disability.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.FundingNeedsCategoryDescriptorId IS 'Indicates the category of the funding need.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.InitialConsentToEvaluateDate IS 'Indicates the date when the initail consent was given to evaluate.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.InitialEvaluationDate IS 'Indicates the date of the initial evaluation.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.LastSpecialistEvaluationDate IS 'Indicates the last date a specialist evelauation was done.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.PercentOutOfRegularClass IS 'Indicates the percentage of time spent out of regular class.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.PPPSISPInitiationDate IS 'Indicates the initiation date for PPPS ISp.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.PPPSMeetingDate IS 'Indicates the PPPS meeeting date.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.ServiceStatusDescriptorId IS 'Indicates the special education service status.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.PrivateSchoolId IS 'The identifier assigned to a school.';

-- Extended Properties [de].[StudentTransportation] --
COMMENT ON TABLE de.StudentTransportation IS 'This represents the travel information for student.';
COMMENT ON COLUMN de.StudentTransportation.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN de.StudentTransportation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentTransportation.TravelDayOfWeekDescriptorId IS 'Indicates the day of the week on which student is transported.';
COMMENT ON COLUMN de.StudentTransportation.TravelDirectionDescriptorId IS 'identifies the direction in which student is transported.';
COMMENT ON COLUMN de.StudentTransportation.TravelSegment IS 'Indicates the segment number associated with the specified travel day.';
COMMENT ON COLUMN de.StudentTransportation.TravelTrip IS 'Indicates the number identifying the travel trip for the student.';
COMMENT ON COLUMN de.StudentTransportation.BusNumber IS 'Identifies the bus number for the travel segment.';
COMMENT ON COLUMN de.StudentTransportation.BusRouteNumber IS 'Identifies the bus route number for the travel segment.';
COMMENT ON COLUMN de.StudentTransportation.ShuttleStop IS 'Indicates the shuttle stop for the travel segment.';
COMMENT ON COLUMN de.StudentTransportation.StopDescription IS 'The description associated with the stop for the segment.';
COMMENT ON COLUMN de.StudentTransportation.StopNumber IS 'Identifies the bus stop number for the travel segment.';
COMMENT ON COLUMN de.StudentTransportation.StopTime IS 'Indicates the stop time for the travel segment.';

-- Extended Properties [de].[SupportPlanChangeDescriptor] --
COMMENT ON TABLE de.SupportPlanChangeDescriptor IS 'Indicates the types of changes for the support plan.';
COMMENT ON COLUMN de.SupportPlanChangeDescriptor.SupportPlanChangeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[TravelDayOfWeekDescriptor] --
COMMENT ON TABLE de.TravelDayOfWeekDescriptor IS 'Indicates the day of the week the travel record applies.';
COMMENT ON COLUMN de.TravelDayOfWeekDescriptor.TravelDayOfWeekDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[TravelDirectionDescriptor] --
COMMENT ON TABLE de.TravelDirectionDescriptor IS 'Indicates the direction of the travel segment.';
COMMENT ON COLUMN de.TravelDirectionDescriptor.TravelDirectionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[TreatmentDescriptor] --
COMMENT ON TABLE de.TreatmentDescriptor IS 'Indicates the level of treatment provided.';
COMMENT ON COLUMN de.TreatmentDescriptor.TreatmentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[VictimCategoryDescriptor] --
COMMENT ON TABLE de.VictimCategoryDescriptor IS 'Defines the codes for the victim types.';
COMMENT ON COLUMN de.VictimCategoryDescriptor.VictimCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';


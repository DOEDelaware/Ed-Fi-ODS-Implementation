-- Extended Properties [de].[AddressCharacteristicDescriptor] --
COMMENT ON TABLE de.AddressCharacteristicDescriptor IS 'Reflects important characteristics of address. example, state Validated , primary etc..';
COMMENT ON COLUMN de.AddressCharacteristicDescriptor.AddressCharacteristicDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[AlternateCalendarProgramDescriptor] --
COMMENT ON TABLE de.AlternateCalendarProgramDescriptor IS 'Available alternate special ed  claendar program details.';
COMMENT ON COLUMN de.AlternateCalendarProgramDescriptor.AlternateCalendarProgramDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[ArrestInformationDescriptor] --
COMMENT ON TABLE de.ArrestInformationDescriptor IS 'Indicates information about possible arrest associated with discipline incident';
COMMENT ON COLUMN de.ArrestInformationDescriptor.ArrestInformationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[BirthMandateDescriptor] --
COMMENT ON TABLE de.BirthMandateDescriptor IS 'This descriptor defines a student''s impairment at birth.';
COMMENT ON COLUMN de.BirthMandateDescriptor.BirthMandateDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[BullyingCategoryDescriptor] --
COMMENT ON TABLE de.BullyingCategoryDescriptor IS 'Indicates the type of bullying.';
COMMENT ON COLUMN de.BullyingCategoryDescriptor.BullyingCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[ChoiceBasisDescriptor] --
COMMENT ON TABLE de.ChoiceBasisDescriptor IS 'Defines the codes that identify the type of Choise option.';
COMMENT ON COLUMN de.ChoiceBasisDescriptor.ChoiceBasisDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[ClassPeriodExtension] --
COMMENT ON TABLE de.ClassPeriodExtension IS '';
COMMENT ON COLUMN de.ClassPeriodExtension.ClassPeriodName IS 'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).';
COMMENT ON COLUMN de.ClassPeriodExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN de.ClassPeriodExtension.AttendancePeriodOrder IS 'Number indicating the order that the period should be listed.';
COMMENT ON COLUMN de.ClassPeriodExtension.Description IS 'Description of the attendance period.';

-- Extended Properties [de].[ContactAddressCharacteristic] --
COMMENT ON TABLE de.ContactAddressCharacteristic IS 'Indicates some of the address characteristics like Primary, validated etc..';
COMMENT ON COLUMN de.ContactAddressCharacteristic.ContactUSI IS 'A unique alphanumeric code assigned to a contact.';
COMMENT ON COLUMN de.ContactAddressCharacteristic.AddressTypeDescriptorId IS 'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)';
COMMENT ON COLUMN de.ContactAddressCharacteristic.City IS 'The name of the city in which an address is located.';
COMMENT ON COLUMN de.ContactAddressCharacteristic.PostalCode IS 'The five or nine digit zip code or overseas postal code portion of an address.';
COMMENT ON COLUMN de.ContactAddressCharacteristic.StateAbbreviationDescriptorId IS 'The abbreviation for the state (within the United States) or outlying area in which an address is located.';
COMMENT ON COLUMN de.ContactAddressCharacteristic.StreetNumberName IS 'The street number and street name or post office box number of an address.';
COMMENT ON COLUMN de.ContactAddressCharacteristic.AddressCharacteristicDescriptorId IS 'Indicates some of the address characteristics like Primary, validated etc..';

-- Extended Properties [de].[CTECertificationDescriptor] --
COMMENT ON TABLE de.CTECertificationDescriptor IS 'Defines the codes that identify the type of career pathway certification acheived.';
COMMENT ON COLUMN de.CTECertificationDescriptor.CTECertificationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[DeescalationTechniqueDescriptor] --
COMMENT ON TABLE de.DeescalationTechniqueDescriptor IS 'Defines techniques for de-escalation of student situaion.';
COMMENT ON COLUMN de.DeescalationTechniqueDescriptor.DeescalationTechniqueDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[DiplomaCertificateCategoryDescriptor] --
COMMENT ON TABLE de.DiplomaCertificateCategoryDescriptor IS 'Indicates whether special education student is persuing a diploma or certificate.';
COMMENT ON COLUMN de.DiplomaCertificateCategoryDescriptor.DiplomaCertificateCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[DisciplineActionExtension] --
COMMENT ON TABLE de.DisciplineActionExtension IS '';
COMMENT ON COLUMN de.DisciplineActionExtension.DisciplineActionIdentifier IS 'Identifier assigned by the education organization to the discipline action.';
COMMENT ON COLUMN de.DisciplineActionExtension.DisciplineDate IS 'The date of the discipline action.';
COMMENT ON COLUMN de.DisciplineActionExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.DisciplineActionExtension.DisciplineActionPlacementTypeDescriptorId IS 'aditional discipline action information';

-- Extended Properties [de].[DisciplineActionPlacementTypeDescriptor] --
COMMENT ON TABLE de.DisciplineActionPlacementTypeDescriptor IS 'Indicates the alternative placement made as a result of a discipline action.';
COMMENT ON COLUMN de.DisciplineActionPlacementTypeDescriptor.DisciplineActionPlacementTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[FerpaOptOutDescriptor] --
COMMENT ON TABLE de.FerpaOptOutDescriptor IS 'Defines the codes that identify the type of opt out for FERPA.';
COMMENT ON COLUMN de.FerpaOptOutDescriptor.FerpaOptOutDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[FollowupCategoryDescriptor] --
COMMENT ON TABLE de.FollowupCategoryDescriptor IS 'Indicates the code for the follow-up after medical exam or visit.';
COMMENT ON COLUMN de.FollowupCategoryDescriptor.FollowupCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[FundingNeedsCategoryDescriptor] --
COMMENT ON TABLE de.FundingNeedsCategoryDescriptor IS 'Defines the codes that identify the categories for the funding need.';
COMMENT ON COLUMN de.FundingNeedsCategoryDescriptor.FundingNeedsCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[HealthAlertCategoryDescriptor] --
COMMENT ON TABLE de.HealthAlertCategoryDescriptor IS 'Defines the codes that describe a person''s known medical conditions.';
COMMENT ON COLUMN de.HealthAlertCategoryDescriptor.HealthAlertCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[IEPImplementationAfterThirdBirthdayReasonDescriptor] --
COMMENT ON TABLE de.IEPImplementationAfterThirdBirthdayReasonDescriptor IS ' List for reason for IEP implimentations after 3rd birthday';
COMMENT ON COLUMN de.IEPImplementationAfterThirdBirthdayReasonDescriptor.IEPImplementationAfterThirdBirthdayReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[IncidentRelatedToDescriptor] --
COMMENT ON TABLE de.IncidentRelatedToDescriptor IS 'Defines the codes that identify what the incident is related to.';
COMMENT ON COLUMN de.IncidentRelatedToDescriptor.IncidentRelatedToDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[LocationDescriptor] --
COMMENT ON TABLE de.LocationDescriptor IS 'Gives the description of event Location.';
COMMENT ON COLUMN de.LocationDescriptor.LocationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[MultiliteracyCertificateCategoryDescriptor] --
COMMENT ON TABLE de.MultiliteracyCertificateCategoryDescriptor IS 'Indicates the type of certificate achieved.';
COMMENT ON COLUMN de.MultiliteracyCertificateCategoryDescriptor.MultiliteracyCertificateCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[NonViolentTechniqueDescriptor] --
COMMENT ON TABLE de.NonViolentTechniqueDescriptor IS 'Defines Non-Violent Techniques to restrain student.';
COMMENT ON COLUMN de.NonViolentTechniqueDescriptor.NonViolentTechniqueDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[NotificationMethodDescriptor] --
COMMENT ON TABLE de.NotificationMethodDescriptor IS 'Indicates the method of notification.';
COMMENT ON COLUMN de.NotificationMethodDescriptor.NotificationMethodDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[OutOfTimelineReasonDescriptor] --
COMMENT ON TABLE de.OutOfTimelineReasonDescriptor IS 'List the Explanation for ESR Being out of timeline';
COMMENT ON COLUMN de.OutOfTimelineReasonDescriptor.OutOfTimelineReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[ReasonForLateIEPDescriptor] --
COMMENT ON TABLE de.ReasonForLateIEPDescriptor IS 'Indicates reason for Late IEP.';
COMMENT ON COLUMN de.ReasonForLateIEPDescriptor.ReasonForLateIEPDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[RestraintEventCategoryDescriptor] --
COMMENT ON TABLE de.RestraintEventCategoryDescriptor IS 'Indicates the category of the restraint event.';
COMMENT ON COLUMN de.RestraintEventCategoryDescriptor.RestraintEventCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[RestraintEventExtension] --
COMMENT ON TABLE de.RestraintEventExtension IS '';
COMMENT ON COLUMN de.RestraintEventExtension.RestraintEventIdentifier IS 'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.';
COMMENT ON COLUMN de.RestraintEventExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN de.RestraintEventExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.RestraintEventExtension.AdditionalDetail IS 'Indicates the additional detail regrading the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintEventExtension.BehaviorDuringRestraintDetail IS 'Indicates the detail regrading the behaviour during the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintEventExtension.ChangeDescription IS 'Indicates the description of changes for the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintEventExtension.ConsecutiveRestraintCount IS 'Indicates the number of times a restraint secluson event occurred in a day.';
COMMENT ON COLUMN de.RestraintEventExtension.DeescalationTechniqueDescriptorId IS 'Indicates the detail of the de-escalation technique used in the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintEventExtension.EventTime IS 'An indication of the time of day the event occurred.';
COMMENT ON COLUMN de.RestraintEventExtension.IncidentLocationDescriptorId IS 'Identifies where the restraint seclusion event occurred.';
COMMENT ON COLUMN de.RestraintEventExtension.NonViolentTechniqueDescriptorId IS 'Indicates the non violent technique detail regrading the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintEventExtension.NotificationMethodDescriptorId IS 'Indicates the method of notification used for notifying parent or guardian about the restraint secluson event.';
COMMENT ON COLUMN de.RestraintEventExtension.ParentGuardianNotified IS 'Indicates if the parent or guradian was notified about the restarint secluson event.';
COMMENT ON COLUMN de.RestraintEventExtension.ParentGuardianNotifiedDate IS 'Indicates the date on which the parent or guardian was notified.';
COMMENT ON COLUMN de.RestraintEventExtension.ParentGuardianNotifiedTime IS 'Indicates the time of day the parent or guardian was notified about the restarint secluson event.';
COMMENT ON COLUMN de.RestraintEventExtension.PolicyChangeDetail IS 'Indicates the policy Change detail regrading the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintEventExtension.PriorToEventDetail IS 'Indicates the event details prior to the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintEventExtension.RestraintDuration IS 'Indicates the length in minutes of the restarint secluson event.';
COMMENT ON COLUMN de.RestraintEventExtension.RestraintEventCategoryDescriptorId IS 'Indicates the type of the restraint or seclusion performed.';
COMMENT ON COLUMN de.RestraintEventExtension.RestraintReportDate IS 'Indicates the date on which the restraint secluson event was reported.';
COMMENT ON COLUMN de.RestraintEventExtension.StaffTrainingDetail IS 'Indicates the traing detail for staff involved in restraint seclusion event.';
COMMENT ON COLUMN de.RestraintEventExtension.StudentInjured IS 'Indicates if student was injured during the restarint secluson event.';
COMMENT ON COLUMN de.RestraintEventExtension.StudentInterviewDetail IS 'Indicates the student interview detail regrading the restraint seclusion event.';
COMMENT ON COLUMN de.RestraintEventExtension.StudentTreatmentDescriptorId IS 'Indicates the treatment provided to student injured during restarint secluson event.';
COMMENT ON COLUMN de.RestraintEventExtension.SupportPlanChangeDescriptorId IS 'Indicates the type of support plan change.';
COMMENT ON COLUMN de.RestraintEventExtension.UsedCrisisResponseTeam IS 'Indicates if crisis response team was used during the restarint secluson event.';
COMMENT ON COLUMN de.RestraintEventExtension.WitnessInterviewDetail IS 'Indicates the witness interview detail regrading the restraint seclusion event.';

-- Extended Properties [de].[RestraintEventStaffParticipation] --
COMMENT ON TABLE de.RestraintEventStaffParticipation IS 'Identifies the staff responsible for providing restarint.';
COMMENT ON COLUMN de.RestraintEventStaffParticipation.RestraintEventIdentifier IS 'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.';
COMMENT ON COLUMN de.RestraintEventStaffParticipation.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN de.RestraintEventStaffParticipation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.RestraintEventStaffParticipation.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN de.RestraintEventStaffParticipation.StaffInjured IS 'Indicates if staff was injured during the restarint secluson event.';
COMMENT ON COLUMN de.RestraintEventStaffParticipation.StaffTreatmentDescriptorId IS 'Indicates the treatment provided to staff injured during restraint secluson event.';
COMMENT ON COLUMN de.RestraintEventStaffParticipation.TrainedActionTechnique IS 'Indicates if the staff providing restraint utilized a trained action technique.';

-- Extended Properties [de].[SectionExtension] --
COMMENT ON TABLE de.SectionExtension IS '';
COMMENT ON COLUMN de.SectionExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN de.SectionExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN de.SectionExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN de.SectionExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN de.SectionExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN de.SectionExtension.AveragePassTimeMinutesPerWeek IS 'Indicates the number of times allowed in the hall per week for the course.';
COMMENT ON COLUMN de.SectionExtension.FractionOfYearOffered IS 'The fraction of a year for the Coop or DO student (i.e. 1.0 for full year, .50 for half year).';
COMMENT ON COLUMN de.SectionExtension.MinutesPerWeekAverage IS 'Indicates the minutes per week the course meets.';
COMMENT ON COLUMN de.SectionExtension.UnitCountExceptionSchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';

-- Extended Properties [de].[SpecialEducationFundingDescriptor] --
COMMENT ON TABLE de.SpecialEducationFundingDescriptor IS 'Indicates the funding type for the program';
COMMENT ON COLUMN de.SpecialEducationFundingDescriptor.SpecialEducationFundingDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[StaffEducationOrganizationAssignmentAssociationExtension] --
COMMENT ON TABLE de.StaffEducationOrganizationAssignmentAssociationExtension IS '';
COMMENT ON COLUMN de.StaffEducationOrganizationAssignmentAssociationExtension.BeginDate IS 'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN de.StaffEducationOrganizationAssignmentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StaffEducationOrganizationAssignmentAssociationExtension.StaffClassificationDescriptorId IS 'The titles of employment, official status, or rank of education staff.';
COMMENT ON COLUMN de.StaffEducationOrganizationAssignmentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN de.StaffEducationOrganizationAssignmentAssociationExtension.Active IS 'Indicates the availability of staff member for maintaining student attendance and scheduling courses.';

-- Extended Properties [de].[StudentContactAssociationExtension] --
COMMENT ON TABLE de.StudentContactAssociationExtension IS '';
COMMENT ON COLUMN de.StudentContactAssociationExtension.ContactUSI IS 'A unique alphanumeric code assigned to a contact.';
COMMENT ON COLUMN de.StudentContactAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentContactAssociationExtension.LocalEducationAgencyId IS 'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.';

-- Extended Properties [de].[StudentCTEProgramAssociationCTECertification] --
COMMENT ON TABLE de.StudentCTEProgramAssociationCTECertification IS 'Defines the codes that identify the type of career pathway certification acheived.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTECertification.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTECertification.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTECertification.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTECertification.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTECertification.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTECertification.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTECertification.CTECertificationDescriptorId IS 'Defines the codes that identify the type of career pathway certification acheived.';

-- Extended Properties [de].[StudentCTEProgramAssociationCTEProgramServiceExtension] --
COMMENT ON TABLE de.StudentCTEProgramAssociationCTEProgramServiceExtension IS 'The career cluster representing the career path of the Vocational/Career Tech concentrator.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramServiceExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramServiceExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramServiceExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramServiceExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramServiceExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramServiceExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramServiceExtension.CTEProgramServiceDescriptorId IS 'Indicates the service being provided to the student by the CTE program.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramServiceExtension.CTEProgramCompletionIndicator IS 'A boolean indicator of whether this CTE program is the student''s primary CTE program.';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramServiceExtension.LocalArticulation IS 'Local Articualtion agreement indicator';
COMMENT ON COLUMN de.StudentCTEProgramAssociationCTEProgramServiceExtension.PathwayConcentrator IS 'Indicates if this pathway is the concentrator.';

-- Extended Properties [de].[StudentDisciplineIncidentBehaviorAssociationExtension] --
COMMENT ON TABLE de.StudentDisciplineIncidentBehaviorAssociationExtension IS '';
COMMENT ON COLUMN de.StudentDisciplineIncidentBehaviorAssociationExtension.BehaviorDescriptorId IS 'Describes behavior by category.';
COMMENT ON COLUMN de.StudentDisciplineIncidentBehaviorAssociationExtension.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.StudentDisciplineIncidentBehaviorAssociationExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN de.StudentDisciplineIncidentBehaviorAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentDisciplineIncidentBehaviorAssociationExtension.ArrestInformationDescriptorId IS 'Arrest information';

-- Extended Properties [de].[StudentDisciplineIncidentNonOffenderAssociationBullyingCategory] --
COMMENT ON TABLE de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory IS 'Indicates the type of bullying.';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory.BullyingCategoryDescriptorId IS 'Indicates the type of bullying.';

-- Extended Properties [de].[StudentDisciplineIncidentNonOffenderAssociationExtension] --
COMMENT ON TABLE de.StudentDisciplineIncidentNonOffenderAssociationExtension IS '';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationExtension.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationExtension.BullyingVictimIncidentDetail IS 'The details of the alleged bullying victim incident.';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationExtension.ReasonIncidentRelatedToDescriptorId IS 'Indicates the reason for the alleged bullying incident.';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationExtension.ReportDate IS 'Indicates the date on which the alleged bullying incident was reported.';
COMMENT ON COLUMN de.StudentDisciplineIncidentNonOffenderAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';

-- Extended Properties [de].[StudentEarlyChildhoodProgramAssociation] --
COMMENT ON TABLE de.StudentEarlyChildhoodProgramAssociation IS 'This association represents the early childhood program(S) that a student participates in or receives services from.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [de].[StudentEarlyChildhoodProgramAssociationSpecialEducationFunding] --
COMMENT ON TABLE de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding IS ' Funding type for the program';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding.SpecialEducationFundingDescriptorId IS ' Funding type for the program';

-- Extended Properties [de].[StudentEducationOrganizationAssociationAddressCharacteristic] --
COMMENT ON TABLE de.StudentEducationOrganizationAssociationAddressCharacteristic IS 'Indicates some of the address characteristics like Primary, validated etc..';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressCharacteristic.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressCharacteristic.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressCharacteristic.AddressTypeDescriptorId IS 'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressCharacteristic.City IS 'The name of the city in which an address is located.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressCharacteristic.PostalCode IS 'The five or nine digit zip code or overseas postal code portion of an address.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressCharacteristic.StateAbbreviationDescriptorId IS 'The abbreviation for the state (within the United States) or outlying area in which an address is located.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressCharacteristic.StreetNumberName IS 'The street number and street name or post office box number of an address.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationAddressCharacteristic.AddressCharacteristicDescriptorId IS 'Indicates some of the address characteristics like Primary, validated etc..';

-- Extended Properties [de].[StudentEducationOrganizationAssociationExtension] --
COMMENT ON TABLE de.StudentEducationOrganizationAssociationExtension IS '';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationExtension.SchoolYear IS 'The identifier for the school year associated with the Calendar.';

-- Extended Properties [de].[StudentEducationOrganizationAssociationMultiliteracy] --
COMMENT ON TABLE de.StudentEducationOrganizationAssociationMultiliteracy IS 'Indicates if the student received a multiliteracy award.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.AssessmentTitle IS 'Indicates the name of the assessment taken to receive the multiliteracy award.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.LanguageDescriptorId IS 'Indicates the language associated with the multiliteracy award.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.MultiliteracyCertificateCategoryDescriptorId IS 'Indicates the type of certificate received with the multiliteracy award.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.CertificateIssueConfirm IS 'Indicates if the certificate issued was confirmed by the DOE.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.CertificateReviewDate IS 'Indicates the date the certificate is reviewed';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationMultiliteracy.DateEarned IS 'Indicates the Date certificate is earned';

-- Extended Properties [de].[StudentEducationOrganizationAssociationPriorId] --
COMMENT ON TABLE de.StudentEducationOrganizationAssociationPriorId IS 'A unique prior alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationPriorId.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationPriorId.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentEducationOrganizationAssociationPriorId.PriorId IS 'A unique prior alphanumeric code assigned to a student.';

-- Extended Properties [de].[StudentHealthAlert] --
COMMENT ON TABLE de.StudentHealthAlert IS 'Defines the codes that describe a person''s known medical conditions.';
COMMENT ON COLUMN de.StudentHealthAlert.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentHealthAlert.HealthAlertCategoryDescriptorId IS 'Identifies the medical alert code.';
COMMENT ON COLUMN de.StudentHealthAlert.StartDate IS 'Identifies the start date of a medical alert.';
COMMENT ON COLUMN de.StudentHealthAlert.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentHealthAlert.Comment IS 'Additional information provided by the responder about the question in the survey.';
COMMENT ON COLUMN de.StudentHealthAlert.EndDate IS 'Identifies the end date for a medical alert.';
COMMENT ON COLUMN de.StudentHealthAlert.Instructions IS 'Alert instructions.';
COMMENT ON COLUMN de.StudentHealthAlert.Sequence IS 'The sequence number for prioritizing medical alerts.';

-- Extended Properties [de].[StudentLanguageInstructionProgramAssociationLanguageImmersion] --
COMMENT ON TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion IS 'Identifies students participating in a language immersion program.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentLanguageInstructionProgramAssociationLanguageImmersion.ImmersionLanguageDescriptorId IS 'Indicates the language student is taking/took to participate in language immersion program.';

-- Extended Properties [de].[StudentMedicaidProgramAssociation] --
COMMENT ON TABLE de.StudentMedicaidProgramAssociation IS 'This association represents the Medicaid program(S) that a student participates in or receives services from.';
COMMENT ON COLUMN de.StudentMedicaidProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN de.StudentMedicaidProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentMedicaidProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentMedicaidProgramAssociation.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentMedicaidProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentMedicaidProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentMedicaidProgramAssociation.EligibilityStatus IS 'Indicates if student receives an Medicaid program.';
COMMENT ON COLUMN de.StudentMedicaidProgramAssociation.StudentMCINumber IS ' Master client index from DHSS';

-- Extended Properties [de].[StudentSection504ProgramAssociationExtension] --
COMMENT ON TABLE de.StudentSection504ProgramAssociationExtension IS '';
COMMENT ON COLUMN de.StudentSection504ProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN de.StudentSection504ProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentSection504ProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentSection504ProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentSection504ProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentSection504ProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentSection504ProgramAssociationExtension.InitialDNQDate IS 'Indicates the initial DNQ date.';
COMMENT ON COLUMN de.StudentSection504ProgramAssociationExtension.LastEvaluationDate IS 'Indicates the last evaluation date.';

-- Extended Properties [de].[StudentSpecialEducationProgramAssociationExtension] --
COMMENT ON TABLE de.StudentSpecialEducationProgramAssociationExtension IS '';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.AlternateCalendarProgramDescriptorId IS 'Available alternate special ed  claendar program details.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.BirthMandateDescriptorId IS 'This descriptor defines a student''s impairment at birth.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.DiplomaCertificateCategoryDescriptorId IS 'Indicates whether student is working towards a diploma or certificate.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.DSTPAccommodation IS 'Indicates whether student receives special education DSTP accomodation.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.EligbleNotReceivingService IS 'Indicates if student is eligible for special education, but is not receiving services.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.EvaluatedNoDisability IS 'Indicates if student was evaluated for special education disability, but has no disability.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.FundingNeedsCategoryDescriptorId IS 'Indicates the category of the funding need.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.IEPImplementationAfterThirdBirthdayReasonDescriptorId IS ' List for reason for IEP implimentations after 3rd birthday';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.IEPPartB619ServicesImplementationDate IS 'Indicates the Part B 619 services implimentation date.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.InitialConsentToEvaluateDate IS 'Indicates the date when the initail consent was given to evaluate.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.InitialEvaluationDate IS 'Indicates the date of the initial evaluation.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.LastSpecialistEvaluationDate IS 'Indicates the last date a specialist evelauation was done.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.OutOfTimelineReasonDescriptorId IS 'List the Explanation for ESR Being out of timeline';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.PartB619Eligible IS 'Indicates if student was eligible for Part B 619.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.PartCEligibilityDate IS 'Indicates the PartC eligible date.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.PartCEligibilityWithin90DaysOfThirdBirthday IS 'Indicates if student was eligible for Part C within 90 days of his 3rd birthday.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.PPPSISPInitiationDate IS 'Indicates the initiation date for PPPS ISp.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.PPPSMeetingDate IS 'Indicates the PPPS meeeting date.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.ReferraltoPartB619Date IS 'Indicates the Part B 619 referral date.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.ReferraltoPartCDate IS 'Indicates the PartC referral date.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.ReferralToPartCWithin90DaysOfThirdBirthday IS 'Indicates if student was refered to Part C within 90 days of his 3rd birthday.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.SpecialEducationFundingCountException IS 'Indicates whether student is not counted for December 1.';
COMMENT ON COLUMN de.StudentSpecialEducationProgramAssociationExtension.TransitionConferenceDate IS 'Indicates the Transition Conference Date.';

-- Extended Properties [de].[SupportPlanChangeDescriptor] --
COMMENT ON TABLE de.SupportPlanChangeDescriptor IS 'Indicates the types of changes for the support plan.';
COMMENT ON COLUMN de.SupportPlanChangeDescriptor.SupportPlanChangeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [de].[TreatmentDescriptor] --
COMMENT ON TABLE de.TreatmentDescriptor IS 'Indicates the level of treatment provided.';
COMMENT ON COLUMN de.TreatmentDescriptor.TreatmentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';


-- Extended Properties [de].[AddressCharacteristicDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of address. example, state Validated , primary etc..', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'AddressCharacteristicDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'AddressCharacteristicDescriptor', @level2type=N'COLUMN', @level2name=N'AddressCharacteristicDescriptorId'
GO

-- Extended Properties [de].[AlternateCalendarProgramDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Available alternate special ed  claendar program details.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'AlternateCalendarProgramDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'AlternateCalendarProgramDescriptor', @level2type=N'COLUMN', @level2name=N'AlternateCalendarProgramDescriptorId'
GO

-- Extended Properties [de].[ArrestInformationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates information about possible arrest associated with discipline incident', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ArrestInformationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ArrestInformationDescriptor', @level2type=N'COLUMN', @level2name=N'ArrestInformationDescriptorId'
GO

-- Extended Properties [de].[BirthMandateDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines a student''s impairment at birth.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'BirthMandateDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'BirthMandateDescriptor', @level2type=N'COLUMN', @level2name=N'BirthMandateDescriptorId'
GO

-- Extended Properties [de].[BullyingCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of bullying.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'BullyingCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'BullyingCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'BullyingCategoryDescriptorId'
GO

-- Extended Properties [de].[ChoiceBasisDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the codes that identify the type of Choise option.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ChoiceBasisDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ChoiceBasisDescriptor', @level2type=N'COLUMN', @level2name=N'ChoiceBasisDescriptorId'
GO

-- Extended Properties [de].[ClassPeriodExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ClassPeriodExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ClassPeriodExtension', @level2type=N'COLUMN', @level2name=N'ClassPeriodName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ClassPeriodExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number indicating the order that the period should be listed.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ClassPeriodExtension', @level2type=N'COLUMN', @level2name=N'AttendancePeriodOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the attendance period.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ClassPeriodExtension', @level2type=N'COLUMN', @level2name=N'Description'
GO

-- Extended Properties [de].[ContactAddressCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates some of the address characteristics like Primary, validated etc..', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ContactAddressCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a contact.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ContactAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'ContactUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ContactAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ContactAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ContactAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ContactAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ContactAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates some of the address characteristics like Primary, validated etc..', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ContactAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'AddressCharacteristicDescriptorId'
GO

-- Extended Properties [de].[CTECertificationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the codes that identify the type of career pathway certification acheived.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'CTECertificationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'CTECertificationDescriptor', @level2type=N'COLUMN', @level2name=N'CTECertificationDescriptorId'
GO

-- Extended Properties [de].[DeescalationTechniqueDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines techniques for de-escalation of student situaion.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DeescalationTechniqueDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DeescalationTechniqueDescriptor', @level2type=N'COLUMN', @level2name=N'DeescalationTechniqueDescriptorId'
GO

-- Extended Properties [de].[DiplomaCertificateCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether special education student is persuing a diploma or certificate.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DiplomaCertificateCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DiplomaCertificateCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'DiplomaCertificateCategoryDescriptorId'
GO

-- Extended Properties [de].[DisciplineActionExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned by the education organization to the discipline action.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineActionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the discipline action.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'aditional discipline action information', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineActionPlacementTypeDescriptorId'
GO

-- Extended Properties [de].[DisciplineActionPlacementTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the alternative placement made as a result of a discipline action.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DisciplineActionPlacementTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'DisciplineActionPlacementTypeDescriptor', @level2type=N'COLUMN', @level2name=N'DisciplineActionPlacementTypeDescriptorId'
GO

-- Extended Properties [de].[FerpaOptOutDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the codes that identify the type of opt out for FERPA.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'FerpaOptOutDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'FerpaOptOutDescriptor', @level2type=N'COLUMN', @level2name=N'FerpaOptOutDescriptorId'
GO

-- Extended Properties [de].[FollowupCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the code for the follow-up after medical exam or visit.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'FollowupCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'FollowupCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'FollowupCategoryDescriptorId'
GO

-- Extended Properties [de].[FundingNeedsCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the codes that identify the categories for the funding need.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'FundingNeedsCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'FundingNeedsCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'FundingNeedsCategoryDescriptorId'
GO

-- Extended Properties [de].[HealthAlertCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the codes that describe a person''s known medical conditions.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'HealthAlertCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'HealthAlertCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'HealthAlertCategoryDescriptorId'
GO

-- Extended Properties [de].[IEPImplementationAfterThirdBirthdayReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' List for reason for IEP implimentations after 3rd birthday', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'IEPImplementationAfterThirdBirthdayReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'IEPImplementationAfterThirdBirthdayReasonDescriptor', @level2type=N'COLUMN', @level2name=N'IEPImplementationAfterThirdBirthdayReasonDescriptorId'
GO

-- Extended Properties [de].[IncidentRelatedToDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the codes that identify what the incident is related to.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'IncidentRelatedToDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'IncidentRelatedToDescriptor', @level2type=N'COLUMN', @level2name=N'IncidentRelatedToDescriptorId'
GO

-- Extended Properties [de].[LocationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Gives the description of event Location.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'LocationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'LocationDescriptor', @level2type=N'COLUMN', @level2name=N'LocationDescriptorId'
GO

-- Extended Properties [de].[MultiliteracyCertificateCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of certificate achieved.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'MultiliteracyCertificateCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'MultiliteracyCertificateCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'MultiliteracyCertificateCategoryDescriptorId'
GO

-- Extended Properties [de].[NonViolentTechniqueDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines Non-Violent Techniques to restrain student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'NonViolentTechniqueDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'NonViolentTechniqueDescriptor', @level2type=N'COLUMN', @level2name=N'NonViolentTechniqueDescriptorId'
GO

-- Extended Properties [de].[NotificationMethodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the method of notification.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'NotificationMethodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'NotificationMethodDescriptor', @level2type=N'COLUMN', @level2name=N'NotificationMethodDescriptorId'
GO

-- Extended Properties [de].[OutOfTimelineReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List the Explanation for ESR Being out of timeline', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'OutOfTimelineReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'OutOfTimelineReasonDescriptor', @level2type=N'COLUMN', @level2name=N'OutOfTimelineReasonDescriptorId'
GO

-- Extended Properties [de].[ReasonForLateIEPDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates reason for Late IEP.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ReasonForLateIEPDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'ReasonForLateIEPDescriptor', @level2type=N'COLUMN', @level2name=N'ReasonForLateIEPDescriptorId'
GO

-- Extended Properties [de].[RestraintEventCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the category of the restraint event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'RestraintEventCategoryDescriptorId'
GO

-- Extended Properties [de].[RestraintEventExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'RestraintEventIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the additional detail regrading the restraint seclusion event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'AdditionalDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the detail regrading the behaviour during the restraint seclusion event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'BehaviorDuringRestraintDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the description of changes for the restraint seclusion event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'ChangeDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the number of times a restraint secluson event occurred in a day.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'ConsecutiveRestraintCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the detail of the de-escalation technique used in the restraint seclusion event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'DeescalationTechniqueDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the time of day the event occurred.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'EventTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies where the restraint seclusion event occurred.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'IncidentLocationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the non violent technique detail regrading the restraint seclusion event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'NonViolentTechniqueDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the method of notification used for notifying parent or guardian about the restraint secluson event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'NotificationMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the parent or guradian was notified about the restarint secluson event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'ParentGuardianNotified'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the date on which the parent or guardian was notified.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'ParentGuardianNotifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the time of day the parent or guardian was notified about the restarint secluson event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'ParentGuardianNotifiedTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the policy Change detail regrading the restraint seclusion event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'PolicyChangeDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the event details prior to the restraint seclusion event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'PriorToEventDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the length in minutes of the restarint secluson event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'RestraintDuration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of the restraint or seclusion performed.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'RestraintEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the date on which the restraint secluson event was reported.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'RestraintReportDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the traing detail for staff involved in restraint seclusion event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'StaffTrainingDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if student was injured during the restarint secluson event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'StudentInjured'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the student interview detail regrading the restraint seclusion event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'StudentInterviewDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the treatment provided to student injured during restarint secluson event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'StudentTreatmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of support plan change.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'SupportPlanChangeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if crisis response team was used during the restarint secluson event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'UsedCrisisResponseTeam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the witness interview detail regrading the restraint seclusion event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'WitnessInterviewDetail'
GO

-- Extended Properties [de].[RestraintEventStaffParticipation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the staff responsible for providing restarint.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventStaffParticipation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventStaffParticipation', @level2type=N'COLUMN', @level2name=N'RestraintEventIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventStaffParticipation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventStaffParticipation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventStaffParticipation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if staff was injured during the restarint secluson event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventStaffParticipation', @level2type=N'COLUMN', @level2name=N'StaffInjured'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the treatment provided to staff injured during restraint secluson event.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventStaffParticipation', @level2type=N'COLUMN', @level2name=N'StaffTreatmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the staff providing restraint utilized a trained action technique.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'RestraintEventStaffParticipation', @level2type=N'COLUMN', @level2name=N'TrainedActionTechnique'
GO

-- Extended Properties [de].[SectionExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SectionExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the number of times allowed in the hall per week for the course.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'AveragePassTimeMinutesPerWeek'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fraction of a year for the Coop or DO student (i.e. 1.0 for full year, .50 for half year).', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'FractionOfYearOffered'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the minutes per week the course meets.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'MinutesPerWeekAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'UnitCountExceptionSchoolId'
GO

-- Extended Properties [de].[SpecialEducationFundingDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the funding type for the program', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SpecialEducationFundingDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SpecialEducationFundingDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationFundingDescriptorId'
GO

-- Extended Properties [de].[StaffEducationOrganizationAssignmentAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffClassificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the availability of staff member for maintaining student attendance and scheduling courses.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'Active'
GO

-- Extended Properties [de].[StudentContactAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentContactAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a contact.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentContactAssociationExtension', @level2type=N'COLUMN', @level2name=N'ContactUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentContactAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentContactAssociationExtension', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyId'
GO

-- Extended Properties [de].[StudentCTEProgramAssociationCTECertification] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the codes that identify the type of career pathway certification acheived.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECertification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECertification', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECertification', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECertification', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECertification', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECertification', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECertification', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the codes that identify the type of career pathway certification acheived.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTECertification', @level2type=N'COLUMN', @level2name=N'CTECertificationDescriptorId'
GO

-- Extended Properties [de].[StudentCTEProgramAssociationCTEProgramServiceExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career cluster representing the career path of the Vocational/Career Tech concentrator.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the service being provided to the student by the CTE program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension', @level2type=N'COLUMN', @level2name=N'CTEProgramServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A boolean indicator of whether this CTE program is the student''s primary CTE program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension', @level2type=N'COLUMN', @level2name=N'CTEProgramCompletionIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Local Articualtion agreement indicator', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension', @level2type=N'COLUMN', @level2name=N'LocalArticulation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if this pathway is the concentrator.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgramServiceExtension', @level2type=N'COLUMN', @level2name=N'PathwayConcentrator'
GO

-- Extended Properties [de].[StudentDisciplineIncidentBehaviorAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes behavior by category.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'BehaviorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Arrest information', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'ArrestInformationDescriptorId'
GO

-- Extended Properties [de].[StudentDisciplineIncidentNonOffenderAssociationBullyingCategory] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of bullying.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationBullyingCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationBullyingCategory', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationBullyingCategory', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationBullyingCategory', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of bullying.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationBullyingCategory', @level2type=N'COLUMN', @level2name=N'BullyingCategoryDescriptorId'
GO

-- Extended Properties [de].[StudentDisciplineIncidentNonOffenderAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationExtension', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The details of the alleged bullying victim incident.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationExtension', @level2type=N'COLUMN', @level2name=N'BullyingVictimIncidentDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the reason for the alleged bullying incident.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationExtension', @level2type=N'COLUMN', @level2name=N'ReasonIncidentRelatedToDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the date on which the alleged bullying incident was reported.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationExtension', @level2type=N'COLUMN', @level2name=N'ReportDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentNonOffenderAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [de].[StudentEarlyChildhoodProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the early childhood program(S) that a student participates in or receives services from.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [de].[StudentEarlyChildhoodProgramAssociationSpecialEducationFunding] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Funding type for the program', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociationSpecialEducationFunding'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociationSpecialEducationFunding', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociationSpecialEducationFunding', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociationSpecialEducationFunding', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociationSpecialEducationFunding', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociationSpecialEducationFunding', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociationSpecialEducationFunding', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Funding type for the program', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEarlyChildhoodProgramAssociationSpecialEducationFunding', @level2type=N'COLUMN', @level2name=N'SpecialEducationFundingDescriptorId'
GO

-- Extended Properties [de].[StudentEducationOrganizationAssociationAddressCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates some of the address characteristics like Primary, validated etc..', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationAddressCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates some of the address characteristics like Primary, validated etc..', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationAddressCharacteristic', @level2type=N'COLUMN', @level2name=N'AddressCharacteristicDescriptorId'
GO

-- Extended Properties [de].[StudentEducationOrganizationAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year associated with the Calendar.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [de].[StudentEducationOrganizationAssociationMultiliteracy] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the student received a multiliteracy award.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMultiliteracy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMultiliteracy', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMultiliteracy', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the name of the assessment taken to receive the multiliteracy award.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMultiliteracy', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the language associated with the multiliteracy award.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMultiliteracy', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of certificate received with the multiliteracy award.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMultiliteracy', @level2type=N'COLUMN', @level2name=N'MultiliteracyCertificateCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the certificate issued was confirmed by the DOE.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMultiliteracy', @level2type=N'COLUMN', @level2name=N'CertificateIssueConfirm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the date the certificate is reviewed', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMultiliteracy', @level2type=N'COLUMN', @level2name=N'CertificateReviewDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Date certificate is earned', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMultiliteracy', @level2type=N'COLUMN', @level2name=N'DateEarned'
GO

-- Extended Properties [de].[StudentEducationOrganizationAssociationPriorId] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique prior alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPriorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPriorId', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPriorId', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique prior alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPriorId', @level2type=N'COLUMN', @level2name=N'PriorId'
GO

-- Extended Properties [de].[StudentHealthAlert] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the codes that describe a person''s known medical conditions.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentHealthAlert'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentHealthAlert', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the medical alert code.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentHealthAlert', @level2type=N'COLUMN', @level2name=N'HealthAlertCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the start date of a medical alert.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentHealthAlert', @level2type=N'COLUMN', @level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentHealthAlert', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional information provided by the responder about the question in the survey.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentHealthAlert', @level2type=N'COLUMN', @level2name=N'Comment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the end date for a medical alert.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentHealthAlert', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Alert instructions.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentHealthAlert', @level2type=N'COLUMN', @level2name=N'Instructions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequence number for prioritizing medical alerts.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentHealthAlert', @level2type=N'COLUMN', @level2name=N'Sequence'
GO

-- Extended Properties [de].[StudentLanguageInstructionProgramAssociationLanguageImmersion] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies students participating in a language immersion program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationLanguageImmersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationLanguageImmersion', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationLanguageImmersion', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationLanguageImmersion', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationLanguageImmersion', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationLanguageImmersion', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationLanguageImmersion', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the language student is taking/took to participate in language immersion program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationLanguageImmersion', @level2type=N'COLUMN', @level2name=N'ImmersionLanguageDescriptorId'
GO

-- Extended Properties [de].[StudentMedicaidProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the Medicaid program(S) that a student participates in or receives services from.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentMedicaidProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentMedicaidProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentMedicaidProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentMedicaidProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentMedicaidProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentMedicaidProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentMedicaidProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if student receives an Medicaid program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentMedicaidProgramAssociation', @level2type=N'COLUMN', @level2name=N'EligibilityStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' Master client index from DHSS', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentMedicaidProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentMCINumber'
GO

-- Extended Properties [de].[StudentSection504ProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the initial DNQ date.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'InitialDNQDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the last evaluation date.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSection504ProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'LastEvaluationDate'
GO

-- Extended Properties [de].[StudentSpecialEducationProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Available alternate special ed  claendar program details.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'AlternateCalendarProgramDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines a student''s impairment at birth.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BirthMandateDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether student is working towards a diploma or certificate.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'DiplomaCertificateCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether student receives special education DSTP accomodation.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'DSTPAccommodation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if student is eligible for special education, but is not receiving services.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EligbleNotReceivingService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if student was evaluated for special education disability, but has no disability.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EvaluatedNoDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the category of the funding need.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'FundingNeedsCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' List for reason for IEP implimentations after 3rd birthday', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'IEPImplementationAfterThirdBirthdayReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Part B 619 services implimentation date.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'IEPPartB619ServicesImplementationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the date when the initail consent was given to evaluate.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'InitialConsentToEvaluateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the date of the initial evaluation.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'InitialEvaluationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the last date a specialist evelauation was done.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'LastSpecialistEvaluationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List the Explanation for ESR Being out of timeline', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'OutOfTimelineReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if student was eligible for Part B 619.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'PartB619Eligible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the PartC eligible date.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'PartCEligibilityDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if student was eligible for Part C within 90 days of his 3rd birthday.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'PartCEligibilityWithin90DaysOfThirdBirthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the initiation date for PPPS ISp.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'PPPSISPInitiationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the PPPS meeeting date.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'PPPSMeetingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Part B 619 referral date.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ReferraltoPartB619Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the PartC referral date.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ReferraltoPartCDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if student was refered to Part C within 90 days of his 3rd birthday.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ReferralToPartCWithin90DaysOfThirdBirthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether student is not counted for December 1.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'SpecialEducationFundingCountException'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Transition Conference Date.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'TransitionConferenceDate'
GO

-- Extended Properties [de].[SupportPlanChangeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the types of changes for the support plan.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SupportPlanChangeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'SupportPlanChangeDescriptor', @level2type=N'COLUMN', @level2name=N'SupportPlanChangeDescriptorId'
GO

-- Extended Properties [de].[TreatmentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the level of treatment provided.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'TreatmentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'de', @level1type=N'TABLE', @level1name=N'TreatmentDescriptor', @level2type=N'COLUMN', @level2name=N'TreatmentDescriptorId'
GO


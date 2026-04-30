ALTER TABLE de.AddressCharacteristicDescriptor ADD CONSTRAINT FK_867db5_Descriptor FOREIGN KEY (AddressCharacteristicDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.AlternateCalendarProgramDescriptor ADD CONSTRAINT FK_febf9d_Descriptor FOREIGN KEY (AlternateCalendarProgramDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.ArrestInformationDescriptor ADD CONSTRAINT FK_51aca4_Descriptor FOREIGN KEY (ArrestInformationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.BirthMandateDescriptor ADD CONSTRAINT FK_955188_Descriptor FOREIGN KEY (BirthMandateDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.BullyingCategoryDescriptor ADD CONSTRAINT FK_c163b1_Descriptor FOREIGN KEY (BullyingCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.ChoiceBasisDescriptor ADD CONSTRAINT FK_2ecd6b_Descriptor FOREIGN KEY (ChoiceBasisDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.ClassPeriodExtension ADD CONSTRAINT FK_59ba10_ClassPeriod FOREIGN KEY (ClassPeriodName, SchoolId)
REFERENCES edfi.ClassPeriod (ClassPeriodName, SchoolId)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE de.ContactAddressCharacteristic ADD CONSTRAINT FK_ff4c39_AddressCharacteristicDescriptor FOREIGN KEY (AddressCharacteristicDescriptorId)
REFERENCES de.AddressCharacteristicDescriptor (AddressCharacteristicDescriptorId)
;

CREATE INDEX FK_ff4c39_AddressCharacteristicDescriptor
ON de.ContactAddressCharacteristic (AddressCharacteristicDescriptorId ASC);

ALTER TABLE de.ContactAddressCharacteristic ADD CONSTRAINT FK_ff4c39_ContactAddress FOREIGN KEY (ContactUSI, AddressTypeDescriptorId, City, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
REFERENCES edfi.ContactAddress (ContactUSI, AddressTypeDescriptorId, City, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
ON DELETE CASCADE
;

ALTER TABLE de.CTECertificationDescriptor ADD CONSTRAINT FK_e059db_Descriptor FOREIGN KEY (CTECertificationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.DeescalationTechniqueDescriptor ADD CONSTRAINT FK_db7f21_Descriptor FOREIGN KEY (DeescalationTechniqueDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.DiplomaCertificateCategoryDescriptor ADD CONSTRAINT FK_758080_Descriptor FOREIGN KEY (DiplomaCertificateCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.DisciplineActionExtension ADD CONSTRAINT FK_699fda_DisciplineAction FOREIGN KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
REFERENCES edfi.DisciplineAction (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.DisciplineActionExtension ADD CONSTRAINT FK_699fda_DisciplineActionPlacementTypeDescriptor FOREIGN KEY (DisciplineActionPlacementTypeDescriptorId)
REFERENCES de.DisciplineActionPlacementTypeDescriptor (DisciplineActionPlacementTypeDescriptorId)
;

CREATE INDEX FK_699fda_DisciplineActionPlacementTypeDescriptor
ON de.DisciplineActionExtension (DisciplineActionPlacementTypeDescriptorId ASC);

ALTER TABLE de.DisciplineActionPlacementTypeDescriptor ADD CONSTRAINT FK_fc55e4_Descriptor FOREIGN KEY (DisciplineActionPlacementTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.FerpaOptOutDescriptor ADD CONSTRAINT FK_f3bf87_Descriptor FOREIGN KEY (FerpaOptOutDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.FollowupCategoryDescriptor ADD CONSTRAINT FK_eb7ec9_Descriptor FOREIGN KEY (FollowupCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.FundingNeedsCategoryDescriptor ADD CONSTRAINT FK_174280_Descriptor FOREIGN KEY (FundingNeedsCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.HealthAlertCategoryDescriptor ADD CONSTRAINT FK_9307ed_Descriptor FOREIGN KEY (HealthAlertCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.IEPImplementationAfterThirdBirthdayReasonDescriptor ADD CONSTRAINT FK_af9af9_Descriptor FOREIGN KEY (IEPImplementationAfterThirdBirthdayReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.IncidentRelatedToDescriptor ADD CONSTRAINT FK_d086c0_Descriptor FOREIGN KEY (IncidentRelatedToDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.LocationDescriptor ADD CONSTRAINT FK_343830_Descriptor FOREIGN KEY (LocationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.MultiliteracyCertificateCategoryDescriptor ADD CONSTRAINT FK_0659ff_Descriptor FOREIGN KEY (MultiliteracyCertificateCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.NonViolentTechniqueDescriptor ADD CONSTRAINT FK_75f192_Descriptor FOREIGN KEY (NonViolentTechniqueDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.NotificationMethodDescriptor ADD CONSTRAINT FK_a8cb18_Descriptor FOREIGN KEY (NotificationMethodDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.OutOfTimelineReasonDescriptor ADD CONSTRAINT FK_2837c1_Descriptor FOREIGN KEY (OutOfTimelineReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.ReasonForLateIEPDescriptor ADD CONSTRAINT FK_982118_Descriptor FOREIGN KEY (ReasonForLateIEPDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.RestraintEventCategoryDescriptor ADD CONSTRAINT FK_e245f7_Descriptor FOREIGN KEY (RestraintEventCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.RestraintEventExtension ADD CONSTRAINT FK_cb239e_DeescalationTechniqueDescriptor FOREIGN KEY (DeescalationTechniqueDescriptorId)
REFERENCES de.DeescalationTechniqueDescriptor (DeescalationTechniqueDescriptorId)
;

CREATE INDEX FK_cb239e_DeescalationTechniqueDescriptor
ON de.RestraintEventExtension (DeescalationTechniqueDescriptorId ASC);

ALTER TABLE de.RestraintEventExtension ADD CONSTRAINT FK_cb239e_IncidentLocationDescriptor FOREIGN KEY (IncidentLocationDescriptorId)
REFERENCES edfi.IncidentLocationDescriptor (IncidentLocationDescriptorId)
;

CREATE INDEX FK_cb239e_IncidentLocationDescriptor
ON de.RestraintEventExtension (IncidentLocationDescriptorId ASC);

ALTER TABLE de.RestraintEventExtension ADD CONSTRAINT FK_cb239e_NonViolentTechniqueDescriptor FOREIGN KEY (NonViolentTechniqueDescriptorId)
REFERENCES de.NonViolentTechniqueDescriptor (NonViolentTechniqueDescriptorId)
;

CREATE INDEX FK_cb239e_NonViolentTechniqueDescriptor
ON de.RestraintEventExtension (NonViolentTechniqueDescriptorId ASC);

ALTER TABLE de.RestraintEventExtension ADD CONSTRAINT FK_cb239e_NotificationMethodDescriptor FOREIGN KEY (NotificationMethodDescriptorId)
REFERENCES de.NotificationMethodDescriptor (NotificationMethodDescriptorId)
;

CREATE INDEX FK_cb239e_NotificationMethodDescriptor
ON de.RestraintEventExtension (NotificationMethodDescriptorId ASC);

ALTER TABLE de.RestraintEventExtension ADD CONSTRAINT FK_cb239e_RestraintEvent FOREIGN KEY (RestraintEventIdentifier, SchoolId, StudentUSI)
REFERENCES edfi.RestraintEvent (RestraintEventIdentifier, SchoolId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.RestraintEventExtension ADD CONSTRAINT FK_cb239e_RestraintEventCategoryDescriptor FOREIGN KEY (RestraintEventCategoryDescriptorId)
REFERENCES de.RestraintEventCategoryDescriptor (RestraintEventCategoryDescriptorId)
;

CREATE INDEX FK_cb239e_RestraintEventCategoryDescriptor
ON de.RestraintEventExtension (RestraintEventCategoryDescriptorId ASC);

ALTER TABLE de.RestraintEventExtension ADD CONSTRAINT FK_cb239e_SupportPlanChangeDescriptor FOREIGN KEY (SupportPlanChangeDescriptorId)
REFERENCES de.SupportPlanChangeDescriptor (SupportPlanChangeDescriptorId)
;

CREATE INDEX FK_cb239e_SupportPlanChangeDescriptor
ON de.RestraintEventExtension (SupportPlanChangeDescriptorId ASC);

ALTER TABLE de.RestraintEventExtension ADD CONSTRAINT FK_cb239e_TreatmentDescriptor FOREIGN KEY (StudentTreatmentDescriptorId)
REFERENCES de.TreatmentDescriptor (TreatmentDescriptorId)
;

CREATE INDEX FK_cb239e_TreatmentDescriptor
ON de.RestraintEventExtension (StudentTreatmentDescriptorId ASC);

ALTER TABLE de.RestraintEventStaffParticipation ADD CONSTRAINT FK_ae7ed7_RestraintEvent FOREIGN KEY (RestraintEventIdentifier, SchoolId, StudentUSI)
REFERENCES edfi.RestraintEvent (RestraintEventIdentifier, SchoolId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.RestraintEventStaffParticipation ADD CONSTRAINT FK_ae7ed7_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_ae7ed7_Staff
ON de.RestraintEventStaffParticipation (StaffUSI ASC);

ALTER TABLE de.RestraintEventStaffParticipation ADD CONSTRAINT FK_ae7ed7_TreatmentDescriptor FOREIGN KEY (StaffTreatmentDescriptorId)
REFERENCES de.TreatmentDescriptor (TreatmentDescriptorId)
;

CREATE INDEX FK_ae7ed7_TreatmentDescriptor
ON de.RestraintEventStaffParticipation (StaffTreatmentDescriptorId ASC);

ALTER TABLE de.SectionExtension ADD CONSTRAINT FK_86dfb3_School FOREIGN KEY (UnitCountExceptionSchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_86dfb3_School
ON de.SectionExtension (UnitCountExceptionSchoolId ASC);

ALTER TABLE de.SectionExtension ADD CONSTRAINT FK_86dfb3_Section FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
REFERENCES edfi.Section (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE de.SpecialEducationFundingDescriptor ADD CONSTRAINT FK_292139_Descriptor FOREIGN KEY (SpecialEducationFundingDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.StaffEducationOrganizationAssignmentAssociationExtension ADD CONSTRAINT FK_6ea356_StaffEducationOrganizationAssignmentAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationAssignmentAssociation (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentContactAssociationExtension ADD CONSTRAINT FK_c098c4_LocalEducationAgency FOREIGN KEY (LocalEducationAgencyId)
REFERENCES edfi.LocalEducationAgency (LocalEducationAgencyId)
;

CREATE INDEX FK_c098c4_LocalEducationAgency
ON de.StudentContactAssociationExtension (LocalEducationAgencyId ASC);

ALTER TABLE de.StudentContactAssociationExtension ADD CONSTRAINT FK_c098c4_StudentContactAssociation FOREIGN KEY (ContactUSI, StudentUSI)
REFERENCES edfi.StudentContactAssociation (ContactUSI, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentCTEProgramAssociationCTECertification ADD CONSTRAINT FK_0b4386_CTECertificationDescriptor FOREIGN KEY (CTECertificationDescriptorId)
REFERENCES de.CTECertificationDescriptor (CTECertificationDescriptorId)
;

CREATE INDEX FK_0b4386_CTECertificationDescriptor
ON de.StudentCTEProgramAssociationCTECertification (CTECertificationDescriptorId ASC);

ALTER TABLE de.StudentCTEProgramAssociationCTECertification ADD CONSTRAINT FK_0b4386_StudentCTEProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentCTEProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentCTEProgramAssociationCTEProgramServiceExtension ADD CONSTRAINT FK_0c3c9f_StudentCTEProgramAssociationCTEProgramService FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, CTEProgramServiceDescriptorId)
REFERENCES edfi.StudentCTEProgramAssociationCTEProgramService (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, CTEProgramServiceDescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.StudentDisciplineIncidentBehaviorAssociationExtension ADD CONSTRAINT FK_720b00_ArrestInformationDescriptor FOREIGN KEY (ArrestInformationDescriptorId)
REFERENCES de.ArrestInformationDescriptor (ArrestInformationDescriptorId)
;

CREATE INDEX FK_720b00_ArrestInformationDescriptor
ON de.StudentDisciplineIncidentBehaviorAssociationExtension (ArrestInformationDescriptorId ASC);

ALTER TABLE de.StudentDisciplineIncidentBehaviorAssociationExtension ADD CONSTRAINT FK_720b00_StudentDisciplineIncidentBehaviorAssociation FOREIGN KEY (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
REFERENCES edfi.StudentDisciplineIncidentBehaviorAssociation (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory ADD CONSTRAINT FK_be69d7_BullyingCategoryDescriptor FOREIGN KEY (BullyingCategoryDescriptorId)
REFERENCES de.BullyingCategoryDescriptor (BullyingCategoryDescriptorId)
;

CREATE INDEX FK_be69d7_BullyingCategoryDescriptor
ON de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory (BullyingCategoryDescriptorId ASC);

ALTER TABLE de.StudentDisciplineIncidentNonOffenderAssociationBullyingCategory ADD CONSTRAINT FK_be69d7_StudentDisciplineIncidentNonOffenderAssociation FOREIGN KEY (IncidentIdentifier, SchoolId, StudentUSI)
REFERENCES edfi.StudentDisciplineIncidentNonOffenderAssociation (IncidentIdentifier, SchoolId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentDisciplineIncidentNonOffenderAssociationExtension ADD CONSTRAINT FK_26cecd_IncidentRelatedToDescriptor FOREIGN KEY (ReasonIncidentRelatedToDescriptorId)
REFERENCES de.IncidentRelatedToDescriptor (IncidentRelatedToDescriptorId)
;

CREATE INDEX FK_26cecd_IncidentRelatedToDescriptor
ON de.StudentDisciplineIncidentNonOffenderAssociationExtension (ReasonIncidentRelatedToDescriptorId ASC);

ALTER TABLE de.StudentDisciplineIncidentNonOffenderAssociationExtension ADD CONSTRAINT FK_26cecd_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_26cecd_Staff
ON de.StudentDisciplineIncidentNonOffenderAssociationExtension (StaffUSI ASC);

ALTER TABLE de.StudentDisciplineIncidentNonOffenderAssociationExtension ADD CONSTRAINT FK_26cecd_StudentDisciplineIncidentNonOffenderAssociation FOREIGN KEY (IncidentIdentifier, SchoolId, StudentUSI)
REFERENCES edfi.StudentDisciplineIncidentNonOffenderAssociation (IncidentIdentifier, SchoolId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentEarlyChildhoodProgramAssociation ADD CONSTRAINT FK_8f13fc_GeneralStudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding ADD CONSTRAINT FK_e0b3cd_SpecialEducationFundingDescriptor FOREIGN KEY (SpecialEducationFundingDescriptorId)
REFERENCES de.SpecialEducationFundingDescriptor (SpecialEducationFundingDescriptorId)
;

CREATE INDEX FK_e0b3cd_SpecialEducationFundingDescriptor
ON de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding (SpecialEducationFundingDescriptorId ASC);

ALTER TABLE de.StudentEarlyChildhoodProgramAssociationSpecialEducationFunding ADD CONSTRAINT FK_e0b3cd_StudentEarlyChildhoodProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES de.StudentEarlyChildhoodProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentEducationOrganizationAssociationAddressCharacteristic ADD CONSTRAINT FK_34ace4_AddressCharacteristicDescriptor FOREIGN KEY (AddressCharacteristicDescriptorId)
REFERENCES de.AddressCharacteristicDescriptor (AddressCharacteristicDescriptorId)
;

CREATE INDEX FK_34ace4_AddressCharacteristicDescriptor
ON de.StudentEducationOrganizationAssociationAddressCharacteristic (AddressCharacteristicDescriptorId ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationAddressCharacteristic ADD CONSTRAINT FK_34ace4_StudentEducationOrganizationAssociationAddress FOREIGN KEY (EducationOrganizationId, StudentUSI, AddressTypeDescriptorId, City, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
REFERENCES edfi.StudentEducationOrganizationAssociationAddress (EducationOrganizationId, StudentUSI, AddressTypeDescriptorId, City, PostalCode, StateAbbreviationDescriptorId, StreetNumberName)
ON DELETE CASCADE
;

ALTER TABLE de.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_SchoolYearType FOREIGN KEY (SchoolYear)
REFERENCES edfi.SchoolYearType (SchoolYear)
;

CREATE INDEX FK_2c2930_SchoolYearType
ON de.StudentEducationOrganizationAssociationExtension (SchoolYear ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentEducationOrganizationAssociationMultiliteracy ADD CONSTRAINT FK_29dbdc_LanguageDescriptor FOREIGN KEY (LanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_29dbdc_LanguageDescriptor
ON de.StudentEducationOrganizationAssociationMultiliteracy (LanguageDescriptorId ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationMultiliteracy ADD CONSTRAINT FK_29dbdc_MultiliteracyCertificateCategoryDescriptor FOREIGN KEY (MultiliteracyCertificateCategoryDescriptorId)
REFERENCES de.MultiliteracyCertificateCategoryDescriptor (MultiliteracyCertificateCategoryDescriptorId)
;

CREATE INDEX FK_29dbdc_MultiliteracyCertificateCategoryDescriptor
ON de.StudentEducationOrganizationAssociationMultiliteracy (MultiliteracyCertificateCategoryDescriptorId ASC);

ALTER TABLE de.StudentEducationOrganizationAssociationMultiliteracy ADD CONSTRAINT FK_29dbdc_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentEducationOrganizationAssociationPriorId ADD CONSTRAINT FK_288262_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentHealthAlert ADD CONSTRAINT FK_0e02e0_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

ALTER TABLE de.StudentHealthAlert ADD CONSTRAINT FK_0e02e0_HealthAlertCategoryDescriptor FOREIGN KEY (HealthAlertCategoryDescriptorId)
REFERENCES de.HealthAlertCategoryDescriptor (HealthAlertCategoryDescriptorId)
;

CREATE INDEX FK_0e02e0_HealthAlertCategoryDescriptor
ON de.StudentHealthAlert (HealthAlertCategoryDescriptorId ASC);

ALTER TABLE de.StudentHealthAlert ADD CONSTRAINT FK_0e02e0_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion ADD CONSTRAINT FK_0f3e4a_LanguageDescriptor FOREIGN KEY (ImmersionLanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_0f3e4a_LanguageDescriptor
ON de.StudentLanguageInstructionProgramAssociationLanguageImmersion (ImmersionLanguageDescriptorId ASC);

ALTER TABLE de.StudentLanguageInstructionProgramAssociationLanguageImmersion ADD CONSTRAINT FK_0f3e4a_StudentLanguageInstructionProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentLanguageInstructionProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentMedicaidProgramAssociation ADD CONSTRAINT FK_0ca047_GeneralStudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentSection504ProgramAssociationExtension ADD CONSTRAINT FK_e359e3_StudentSection504ProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSection504ProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_AlternateCalendarProgramDescriptor FOREIGN KEY (AlternateCalendarProgramDescriptorId)
REFERENCES de.AlternateCalendarProgramDescriptor (AlternateCalendarProgramDescriptorId)
;

CREATE INDEX FK_3da84f_AlternateCalendarProgramDescriptor
ON de.StudentSpecialEducationProgramAssociationExtension (AlternateCalendarProgramDescriptorId ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_BirthMandateDescriptor FOREIGN KEY (BirthMandateDescriptorId)
REFERENCES de.BirthMandateDescriptor (BirthMandateDescriptorId)
;

CREATE INDEX FK_3da84f_BirthMandateDescriptor
ON de.StudentSpecialEducationProgramAssociationExtension (BirthMandateDescriptorId ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_DiplomaCertificateCategoryDescriptor FOREIGN KEY (DiplomaCertificateCategoryDescriptorId)
REFERENCES de.DiplomaCertificateCategoryDescriptor (DiplomaCertificateCategoryDescriptorId)
;

CREATE INDEX FK_3da84f_DiplomaCertificateCategoryDescriptor
ON de.StudentSpecialEducationProgramAssociationExtension (DiplomaCertificateCategoryDescriptorId ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_FundingNeedsCategoryDescriptor FOREIGN KEY (FundingNeedsCategoryDescriptorId)
REFERENCES de.FundingNeedsCategoryDescriptor (FundingNeedsCategoryDescriptorId)
;

CREATE INDEX FK_3da84f_FundingNeedsCategoryDescriptor
ON de.StudentSpecialEducationProgramAssociationExtension (FundingNeedsCategoryDescriptorId ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_IEPImplementationAfterThirdBirthdayReasonDescriptor FOREIGN KEY (IEPImplementationAfterThirdBirthdayReasonDescriptorId)
REFERENCES de.IEPImplementationAfterThirdBirthdayReasonDescriptor (IEPImplementationAfterThirdBirthdayReasonDescriptorId)
;

CREATE INDEX FK_3da84f_IEPImplementationAfterThirdBirthdayReasonDescriptor
ON de.StudentSpecialEducationProgramAssociationExtension (IEPImplementationAfterThirdBirthdayReasonDescriptorId ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_OutOfTimelineReasonDescriptor FOREIGN KEY (OutOfTimelineReasonDescriptorId)
REFERENCES de.OutOfTimelineReasonDescriptor (OutOfTimelineReasonDescriptorId)
;

CREATE INDEX FK_3da84f_OutOfTimelineReasonDescriptor
ON de.StudentSpecialEducationProgramAssociationExtension (OutOfTimelineReasonDescriptorId ASC);

ALTER TABLE de.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_StudentSpecialEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE de.SupportPlanChangeDescriptor ADD CONSTRAINT FK_7505f3_Descriptor FOREIGN KEY (SupportPlanChangeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE de.TreatmentDescriptor ADD CONSTRAINT FK_c8e303_Descriptor FOREIGN KEY (TreatmentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;


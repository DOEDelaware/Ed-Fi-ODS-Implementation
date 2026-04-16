
delete edfi.StudentAssessmentPerformanceLevel where namespace like 'uri://pearson.com%'

delete edfi.StudentAssessmentItem where Namespace like 'uri://Pearson.com%'

delete edfi.StudentAssessmentStudentObjectiveAssessmentScoreResult  where Namespace like 'uri://Pearson.com%'

delete edfi.StudentAssessmentStudentObjectiveAssessmentPerformanceLevel  where Namespace like 'uri://Pearson.com%'

delete edfi.StudentAssessmentStudentObjectiveAssessment where Namespace like 'uri://Pearson.com%'

delete edfi.StudentAssessmentAccommodation where Namespace like 'uri://Pearson.com%'

delete edfi.StudentAssessmentScoreResult where Namespace like 'uri://Pearson.com%'

delete edfi.StudentAssessment where Namespace like 'uri://Pearson.com%'

delete edfi.ObjectiveAssessment where Namespace like 'uri://Pearson.com%'

delete edfi.AssessmentItem where Namespace like 'uri://Pearson.com%'

delete edfi.AssessmentAssessedGradeLevel where Namespace like 'uri://Pearson.com%'

--delete edfi.Assessment where Namespace like 'uri://Pearson.com%'

delete edfi.Assessment where  Namespace like 'uri://Pearson.com%' and AssessmentIdentifier not in (select AssessmentIdentifier from edfixassessmentroster.AssessmentAdministration)




delete d from edfi.AccommodationDescriptor x join edfi.Descriptor d on x.AccommodationDescriptorid=d.DescriptorId where Namespace like 'uri://Pearson.com%'

delete d from edfi.ResponseIndicatorDescriptor x join edfi.Descriptor d on x.ResponseIndicatorDescriptorId=d.DescriptorId where Namespace like 'uri://Pearson.com%'

delete d from edfi.PerformanceLevelDescriptor x join edfi.Descriptor d on x.PerformanceLevelDescriptorId=d.DescriptorId where Namespace like 'uri://Pearson.com%'

delete d from edfi.AssessmentReportingMethodDescriptor x join edfi.Descriptor d on x.AssessmentReportingMethodDescriptorId=d.DescriptorId where Namespace like 'uri://Pearson.com%'

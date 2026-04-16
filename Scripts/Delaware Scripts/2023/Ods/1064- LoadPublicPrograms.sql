
--Program
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Head Start', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Head Start')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Early Child Spec Ed'   , 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Special Education' and ProgramTypeDescriptorId=(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education'))
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Early Head Start', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Early Head Start')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'ECAP', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education')
from edfi.LocalEducationAgency  LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='ECAP')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Part B 619', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Early Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Part B 619')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Special Education', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Special Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Special Education')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, '504 Plan', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Section 504 Placement')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='504 Plan')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'CTE', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Career and Technical Education')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='CTE')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, 'Language Immersion', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='Language Immersion')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='Language Immersion')
go
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
select LocalEducationAgencyId, '21st Century Participant', 
	(select DescriptorId from edfi.Descriptor where Namespace like '%ProgramTypeDescriptor%' and CodeValue='21st Century Participant')
from edfi.LocalEducationAgency LEA
where not exists (select * from edfi.Program p where p.EducationOrganizationId=LEA.LocalEducationAgencyId and ProgramName='21st Century Participant')
go






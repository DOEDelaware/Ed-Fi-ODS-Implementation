--** Courses and sections
--3 schools: 340410,340412, 290011
--Calendar
delete edfi.Calendar
go
insert into edfi.Calendar (schoolid, schoolyear, CalendarCode, CalendarTypeDescriptorId)
select 340410, 2021, 'R', DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/CalendarTypeDescriptor' and CodeValue='R'
go
insert into edfi.Calendar (schoolid, schoolyear, CalendarCode, CalendarTypeDescriptorId)
select 340412, 2021, 'R', DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/CalendarTypeDescriptor' and CodeValue='R'
go
insert into edfi.Calendar (schoolid, schoolyear, CalendarCode, CalendarTypeDescriptorId)
select 290011, 2021, 'R', DescriptorId from edfi.Descriptor where Namespace='uri://doe.k12.de.us/CalendarTypeDescriptor' and CodeValue='R'
go
--location
delete edfi.Location
go
insert into edfi.Location (schoolid, ClassroomIdentificationCode,MaximumNumberOfSeats) values (340410,'room1', 34)
go
insert into edfi.Location (schoolid, ClassroomIdentificationCode,MaximumNumberOfSeats) values (340412,'room1', 34)
go
insert into edfi.Location (schoolid, ClassroomIdentificationCode,MaximumNumberOfSeats) values (290011,'room1', 29)
go

--Sessions
delete edfi.Session
go
insert into edfi.Session (schoolid, SchoolYear,SessionName,TermDescriptorId,BeginDate,enddate,	TotalInstructionalDays)
select 340432, 2021, '2020-2021', DescriptorId, '15-Aug-2020','15-JUN-2021', 175 from edfi.Descriptor where Namespace='uri://ed-fi.org/TermDescriptor' and CodeValue='Year Round'
go
insert into edfi.Session (schoolid, SchoolYear,SessionName,TermDescriptorId,BeginDate,enddate,	TotalInstructionalDays)
select 340412, 2021, '2020-2021', DescriptorId, '15-Aug-2020','15-JUN-2021', 175 from edfi.Descriptor where Namespace='uri://ed-fi.org/TermDescriptor' and CodeValue='Year Round'
go
insert into edfi.Session (schoolid, SchoolYear,SessionName,TermDescriptorId,BeginDate,enddate,	TotalInstructionalDays)
select 290011, 2021, '2020-2021', DescriptorId, '15-Aug-2020','15-JUN-2021', 175 from edfi.Descriptor where Namespace='uri://ed-fi.org/TermDescriptor' and CodeValue='Year Round'
go



delete edfi.section
delete edfi.CourseOffering
delete de.CourseExtension
delete edfi.CourseIdentificationCode
delete edfi.Course
go
drop procedure CreateCoureSection
go
create procedure CreateCoureSection (@edorgid int, @coursecode varchar(255), @coursetitle varchar(255), @coursedescr varchar(255),
@schoolid int, @localcoursecode varchar(255), @localcoursetitle varchar(255),@location varchar(255), @sectionidentifier varchar(255))
as
insert into edfi.Course (EducationOrganizationId, CourseCode,CourseTitle,CourseDescription,NumberOfParts) values (@edorgid,@coursecode, @coursetitle, @coursedescr,1)
insert into de.CourseExtension (EducationOrganizationId,CourseCode,Active) values (@edorgid, @coursecode, 1)
insert into edfi.CourseOffering(EducationOrganizationId,CourseCode,SchoolId,schoolyear, sessionname,LocalCourseCode,LocalCourseTitle)
values (@edorgid,@coursecode,@schoolid,2021, '2020-2021', @localcoursecode,@localcoursetitle)
insert into edfi.Section (LocalCourseCode,SchoolId,SchoolYear, SessionName, LocationClassroomIdentificationCode, SectionIdentifier)
values (@localcoursecode,@schoolid,2021, '2020-2021', @location, @sectionidentifier)
go


exec CreateCoureSection 34,'course1', 'course num 1', 'course 1 desc',340432, 'localcourse1','local c1 title', 'room1','course1-section1'
exec CreateCoureSection 34,'course2', 'course num 2', 'course 1 desc',340432, 'localcourse2','local c2 title', 'room1','course2-section1'
exec CreateCoureSection 34,'course3', 'course num 1', 'course 3 desc',340412, 'localcourse3','local c3 title', 'room1','course3-section1'
exec CreateCoureSection 29,'course4', 'course num 1', 'course 4 desc',290011, 'localcourse4','local c4 title', 'room1','course4-section1'
go

delete edfi.StaffSectionAssociation
delete edfi.StaffSchoolAssociation
delete edfi.StaffEducationOrganizationAssignmentAssociation
delete edfi.staff

drop procedure CreateStaff
go
create procedure CreateStaff(@StaffUniqueId varchar(255), @firstname varchar(255), @lastname varchar(255), @district int, @schoolid int, @LocalCourseCode varchar(255), @SectionIdentifier varchar(255),@SessionName varchar(255),@StaffClassificationDescriptor varchar(255), @classroompositiondescriptor varchar(255), @sexdescriptor varchar(255))
as

--staff
insert into edfi.staff (StaffUniqueId,FirstName,LastSurname,SexDescriptorId,HispanicLatinoEthnicity)
select @StaffUniqueId,@firstname,@lastname,descriptorid, 0 from edfi.Descriptor where Namespace='uri://doe.k12.de.us/SexDescriptor' and CodeValue=@sexdescriptor

--staffeducationalorganizationassociations
insert into edfi.StaffEducationOrganizationAssignmentAssociation (EducationOrganizationId,staffusi,StaffClassificationDescriptorId,BeginDate)
select @district,staffusi, (select descriptorid from edfi.Descriptor where Namespace='uri://ed-fi.org/StaffClassificationDescriptor'and CodeValue=@StaffClassificationDescriptor), '01-AUG-2020' from edfi.staff where StaffUniqueId=@StaffUniqueId

--staffschoolassociation
insert into edfi.StaffSchoolAssociation (SchoolId,SchoolYear, staffUSI, ProgramAssignmentDescriptorId)
select @schoolid,2021, staffusi, (select descriptorId from edfi.Descriptor where Namespace='uri://ed-fi.org/ProgramAssignmentDescriptor' and CodeValue='Regular Education') from edfi.staff where StaffUniqueId=@StaffUniqueId

--email
insert into edfi.StaffElectronicMail (ElectronicMailAddress, ElectronicMailTypeDescriptorId, staffUSI, PrimaryEmailAddressIndicator)
select @firstname + @lastName + '@email.com', (select DescriptorId from edfi.Descriptor where CodeValue='Work' and NameSpace='uri://ed-fi.org/ElectronicMailTypeDescriptor'),STaffUSI, 1 from edfi.staff where  StaffUniqueId=@StaffUniqueId


--staffsectionassociation
insert into edfi.StaffSectionAssociation (SchoolId, SchoolYear, LocalCourseCode,SectionIdentifier,SessionName,StaffUSI, ClassroomPositionDescriptorId)
select @schoolid, 2021, @LocalCourseCode,@SectionIdentifier,@SessionName, StaffUSI, (select descriptorId from edfi.descriptor where Namespace='uri://ed-fi.org/ClassroomPositionDescriptor' and CodeValue=@classroompositiondescriptor) from edfi.staff where StaffUniqueId=@StaffUniqueId

go
--4 teachers
exec CreateStaff 'st121','Mary','Combs', 34,340432, 'localcourse1','course1-section1','2020-2021','Teacher', 'Teacher of Record','F'
go
exec CreateStaff 'st122','Fred','Rodgers', 34,340432, 'localcourse2','course2-section1','2020-2021','Teacher', 'Teacher of Record','M'
go
exec CreateStaff 'st123','Diana','Prince', 34,340412, 'localcourse3','course3-section1','2020-2021','Teacher', 'Teacher of Record','F'
go
exec CreateStaff 'st124','Bruce','Banner', 29,290011, 'localcourse4','course4-section1','2020-2021','Teacher', 'Teacher of Record','M'
go



--student
delete edfi.studentsectionassociation
delete edfi.StudentSchoolAssociation
delete de.StudentEducationOrganizationAssociationExtension
delete edfi.StudentEducationOrganizationAssociation
delete de.StudentSchoolAssociationExtension
delete edfi.StudentSchoolAssociation
delete edfi.student
go
drop procedure CreateStudent
go
create procedure CreateStudent (@StudentUSI int, @FirstName varchar(255), @LastName varchar(255), @StudentUniqueId varchar(255), @SexDescriptor varchar(255),
@Grade varchar(255), @District int, @SchoolId int, @LocalCourseCode varchar(255), @LocalCourseSection varchar(255),
@StudentChar varchar(255), @StudentInd varchar(255), @Race varchar(255)
) as

--random birthday
declare @Birthdate date 
select @Birthdate=dateadd(day, rand(checksum(newid()))*(1+datediff(day, '2005-01-01', '2015-12-31')),  '2005-01-01')

set identity_insert edfi.student on
insert into edfi.student (StudentUSI,FirstName,LastSurname, BirthDate, StudentUniqueId) values (@StudentUSI,@FirstName,@LastName, @Birthdate,@StudentUniqueId)
set identity_insert edfi.student off

insert into edfi.StudentSchoolAssociation (StudentUSI, SchoolId, SchoolYear, EntryDate, EntryGradeLevelDescriptorId, EntryTypeDescriptorId)
select @StudentUSI, @SchoolId,2021,'01-AUG-2021', (select descriptorid from edfi.Descriptor where namespace='uri://doe.k12.de.us/GradeLevelDescriptor' and CodeValue=@Grade), (select descriptorid from edfi.Descriptor where namespace='uri://doe.k12.de.us/EntryTypeDescriptor' and CodeValue='001')

insert into de.StudentSchoolAssociationExtension( StudentUSI, SchoolId, EntryDate, EnrollmentTypeDescriptorId)
select @StudentUSI, @SchoolId,'01-AUG-2021',(select descriptorid from edfi.Descriptor where namespace='uri://doe.k12.de.us/EnrollmentTypeDescriptor' and CodeValue='C')

insert into edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI, SexDescriptorId)
select @District, @StudentUSI, (select descriptorId from edfi.Descriptor where Namespace like '%SexD%' and codevalue=@SexDescriptor) 

insert into de.StudentEducationOrganizationAssociationExtension (EducationOrganizationId, StudentUSI)
select @District, @StudentUSI

insert into edfi.StudentEducationOrganizationAssociationStudentCharacteristic 
(EducationOrganizationId, StudentCharacteristicDescriptorId, StudentUSI)
select  @District, DescriptorId, @StudentUSI from edfi.Descriptor where namespace='uri://doe.k12.de.us/StudentCharacteristicDescriptor' and CodeValue=@StudentChar

insert into edfi.StudentEducationOrganizationAssociationStudentIndicator 
(EducationOrganizationId, IndicatorName, StudentUSI, Indicator)
select @District, @StudentInd, @StudentUSI, 'Y' where @StudentInd<>''

insert into [edfi].[StudentEducationOrganizationAssociationRace] (EducationOrganizationId, RaceDescriptorId, StudentUSI)
select @District, DescriptorId, @StudentUSI from edfi.Descriptor where CodeValue=@Race and namespace='uri://doe.k12.de.us/RaceDescriptor'

--email
insert into [edfi].[StudentEducationOrganizationAssociationElectronicMail]
(EducationORganizationID, ElectronicMailTypeDescriptorId, StudentUSI, ElectronicMailAddress, PrimaryEmailAddressIndicator)
select  @District, (select DescriptorId from edfi.Descriptor where CodeValue='Work' and NameSpace='uri://ed-fi.org/ElectronicMailTypeDescriptor'), @StudentUSI, @firstname + @lastName + '@email.com', 1 


insert into edfi.StudentSectionAssociation (schoolid, schoolyear, LocalCourseCode,SectionIdentifier,SessionName,StudentUSI,begindate,enddate, HomeroomIndicator)
select @SchoolId,2021,@LocalCourseCode,@LocalCourseSection,'2020-2021',@StudentUSI,'12-AUG-2020','15-JUN-2021',0
go



exec CreateStudent 1,'Fred', 'Micheal', '121', 'M', 'KN', 34, 340432,'localcourse1','course1-section1','Foster Care','Has IEP','1'
exec CreateStudent 2,'Mary', 'Smith', '122', 'F', 'KN', 34, 340432,'localcourse1','course1-section1','HOMELESS','','2'
exec CreateStudent 3,'Noel', 'Do', '123', 'M', 'KN', 34, 340432,'localcourse1','course1-section1','','','1'
exec CreateStudent 4,'Margret', 'Wen', '124', 'F', 'KN', 34, 340432,'localcourse1','course1-section1','Foster Care','Has IEP','1'
exec CreateStudent 5,'Mike', 'Woz', '126', 'M', 'KN', 34, 340432,'localcourse1','course1-section1','','','1'

exec CreateStudent 6,'Digory', 'Peir', '113', 'M', 'KN', 34, 340432,'localcourse2','course2-section1','Migrant','','1'
exec CreateStudent 7,'Susan', 'Smith', '1234', 'F', 'KN', 34, 340432,'localcourse2','course2-section1','','','5'
exec CreateStudent 8,'Lucy', 'Smyth', '133', 'F', 'KN', 34, 340432,'localcourse2','course2-section1','HOMELESS','','7'
exec CreateStudent 9,'Peter', 'Spring', '143', 'M', 'KN', 34, 340432,'localcourse2','course2-section1','','','1'
exec CreateStudent 10,'Mark', 'Steen', '153', 'M', 'KN', 34, 340432,'localcourse2','course2-section1','','','1'

exec CreateStudent 11,'Bruce', 'Stien', '11123', 'M', 'KN', 34, 340412,'localcourse3','course3-section1','','','2'
exec CreateStudent 12,'Dick', 'Tut', '2123', 'M', 'KN', 34, 340412,'localcourse3','course3-section1','Migrant','','2'
exec CreateStudent 13,'Alice', 'Tot', '3123', 'F', 'KN', 34, 340412,'localcourse3','course3-section1','','','1'
exec CreateStudent 14,'Scott', 'Pear', '4123', 'M', 'KN', 34, 340412,'localcourse3','course3-section1','','','1'
exec CreateStudent 15,'George', 'Apple', '5123', 'M', 'KN', 34, 340412,'localcourse3','course3-section1','','','1'

exec CreateStudent 16,'Herbert', 'Grape', '1231', 'M', 'KN', 29, 290011,'localcourse4','course4-section1','','','1'
exec CreateStudent 17,'Milicent', 'Peach', '1232', 'F', 'KN', 29, 290011,'localcourse4','course4-section1','','','1'
exec CreateStudent 18,'Lucy', 'Tomato', '1233', 'F', 'KN', 29, 290011,'localcourse4','course4-section1','','Has IEP','2'
exec CreateStudent 19,'Amber', 'Lettuce', '12341', 'F', 'KN', 29, 290011,'localcourse4','course4-section1','','Has IEP','6'
exec CreateStudent 20,'Buffy', 'Ardvark', '12351', 'F', 'KN', 29, 290011,'localcourse4','course4-section1','','Has IEP','1'



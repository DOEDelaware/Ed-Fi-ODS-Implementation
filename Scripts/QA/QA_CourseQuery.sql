use QA
go 
alter procedure QA_CourseEnrollment as
/*
create table MissingStudentCourseEnrollmentStudentRegistered ( Student_ID int not null, BUILDING int not null, course varchar(255) , course_section varchar(255) , Section_Key varchar(255) , Description varchar(255) )
*/
--EdFi courses
--drop table  #EdFi_StudentSchedule
select convert(int, StudentUniqueId) StudentUniqueId,CourseOff.LocalCourseCode,CourseOff.SchoolId, Section.SectionIdentifier, CourseOff.LocalCourseTitle, CourseOff.SchoolYear, stu.StudentUSI into #EdFi_StudentSchedule
from [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.student stu 
		join [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.StudentSectionAssociation StuSec on stu.StudentUSI=StuSec.StudentUSi
		join [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.Section section on StuSec.LocalCourseCode=Section.LocalCourseCode 
				and StuSec.SchoolId=Section.SchoolId
				and StuSec.SchoolYear=Section.SchoolYear
				and StuSec.SectionIdentifier=Section.SectionIdentifier
				and StuSec.SessionName=Section.SessionName
		join [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.CourseOffering CourseOff on StuSec.LocalCourseCode=CourseOff.LocalCourseCode 
				and StuSec.SchoolId=CourseOff.SchoolId
				and StuSec.SchoolYear=CourseOff.SchoolYear
				and StuSec.SessionName=CourseOff.SessionName

--eSchool Courses
--drop table #ESP_StudentSchedule
select convert(int,Student_id) Student_Id, Course, Course_Section, eschool_BUILDING BUILDING,schd_ms.SECTION_KEY,DESCRIPTION, SCHOOL_YEAR into #ESP_StudentSchedule
from [DOESISDB\DB1S].eSchoolMaster.dbo.schd_ms 
	join [DOESISDB\DB1S].eSchoolMaster.dbo.schd_stu_course on schd_ms.DISTRICT=SCHD_STU_COURSE.DISTRICT and schd_ms.SECTION_KEY=SCHD_STU_COURSE.SECTION_KEY 


delete MissingStudentCourseEnrollmentStudentRegistered

insert into MissingStudentCourseEnrollmentStudentRegistered (Student_ID , BUILDING, course , course_section, Section_Key, [Description])
select  Student_id, BUILDING, Course, Course_Section, SECTION_KEY,DESCRIPTION
from #ESP_StudentSchedule  ESP 
	left outer join #EdFi_StudentSchedule EDFI on 
		 convert(int,EDFI.StudentUniqueId)=convert(int,ESP.STUDENT_ID) and LocalCourseCode=rtrim(ESP.Course) + '-' + convert(varchar(250),ESP.Course_Section) and ESP.SCHOOL_YEAR=EDFI.SchoolYear and EDFI.SchoolId=ESP.BUILDING 
where ESP.SCHOOL_YEAR=2023 and LocalCourseCode is null

delete MissingStudentCourseEnrollmentStudentRegistered  where -- remove students who are not registered in Ed-Fi
 STUDENT_ID not in (select StudentUniqueId from  [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.student stu 
		join [DOESISEDFIDB\EDFI].EdFi_Delaware_Ods_2023.edfi.StudentSectionAssociation StuSec on stu.StudentUSI=StuSec.StudentUSi 
where SchoolId=BUILDING)




go
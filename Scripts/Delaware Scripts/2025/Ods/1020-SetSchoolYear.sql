delete edfi.SchoolYearType
go

insert into edfi.SchoolYearType (SchoolYear, SchoolYearDescription, CurrentSchoolYear, CreateDate, LastModifiedDate)
--select Code, Description,0,CreateDate,UpdateDate from [DOESISDB\DB1S,11433].CodeLibrary.doeCode.SchoolYearType
go
update edfi.schoolYearType set CurrentSchoolYear=0
go
update edfi.schoolYearType set CurrentSchoolYear=1 where schoolYear=2026
go
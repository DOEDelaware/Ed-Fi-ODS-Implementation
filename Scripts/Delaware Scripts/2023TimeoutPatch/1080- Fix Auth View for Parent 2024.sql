USE [EdFi_Delaware_Ods_2024]
GO



-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

CREATE   VIEW [auth].[EducationOrganizationIdToParentUSI]   --original
    WITH SCHEMABINDING AS
    SELECT  edOrgs.SourceEducationOrganizationId, spa.ParentUSI, COUNT_BIG(*) AS Ignored
    FROM    auth.EducationOrganizationIdToEducationOrganizationId edOrgs
            INNER JOIN edfi.StudentSchoolAssociation ssa 
                ON edOrgs.TargetEducationOrganizationId = ssa.SchoolId
            INNER JOIN edfi.StudentParentAssociation spa 
                ON ssa.StudentUSI = spa.StudentUSI
    GROUP BY edOrgs.SourceEducationOrganizationId, spa.ParentUSI
GO


alter   VIEW [auth].[EducationOrganizationIdToParentUSI]  --new
    WITH SCHEMABINDING AS
    SELECT  sch.LocalEducationAgencyId SourceEducationOrganizationId, spa.ParentUSI, COUNT_BIG(*) AS Ignored
    FROM     edfi.School sch
        INNER JOIN edfi.StudentSchoolAssociation ssa 
                ON sch.Schoolid = ssa.SchoolId
            INNER JOIN edfi.StudentParentAssociation spa 
                ON ssa.StudentUSI = spa.StudentUSI
			--could possibly do further authentication on LEA in extension
	group by sch.LocalEducationAgencyId, spa.ParentUSI
	union 
	select distinct ssa.SchoolId, ParentUSI, COUNT_BIG(*) AS Ignored
		from edfi.StudentSchoolAssociation ssa
			inner join edfi.studentParentAssociation spa
				on spa.StudentUSI=ssa.StudentUSI
    GROUP BY ssa.SchoolId, ParentUSI
GO



-- alter   VIEW [auth].[EducationOrganizationIdToStudentUSI] 
    -- WITH SCHEMABINDING AS

      -- SELECT distinct  sch.LocalEducationAgencyId SourceEducationOrganizationId, ssa.StudentUSI
    -- FROM    edfi.School sch
        -- INNER JOIN edfi.StudentSchoolAssociation ssa
            -- ON sch.Schoolid = ssa.SchoolId
	-- union All
	   	-- select distinct ssa.SchoolId, StudentUSI
	-- from edfi.StudentSchoolAssociation ssa

-- GO



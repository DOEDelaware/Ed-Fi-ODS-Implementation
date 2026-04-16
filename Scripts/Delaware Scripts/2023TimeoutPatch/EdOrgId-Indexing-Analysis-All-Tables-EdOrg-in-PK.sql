declare
	-- Schemas to analyze
	@schemaName nvarchar(50) = 'edfi',
	@extensionSchemaName nvarchar(50) = 'de',
	-- Schema for which to generate indexes
	@indexesSchema nvarchar(50) = 'edfi'
begin
with AggregateRootTables as
(
	select c.Table_schema, c.TABLE_NAME from INFORMATION_SCHEMA.COLUMNS c
	where c.COLUMN_NAME = 'Id'
	and c.TABLE_SCHEMA not like 'tracked_%'
)
, PrimaryKeyEdOrgIds as (
	select TABLE_SCHEMA as SchemaName, TABLE_NAME as TableName, CONSTRAINT_NAME as IndexName, COLUMN_NAME as ColumnName, ORDINAL_POSITION as OrdinalPosition 
	from INFORMATION_SCHEMA.KEY_COLUMN_USAGE
	where TABLE_SCHEMA IN (@schemaName, @extensionSchemaName) --in ('edfi', 'tpdm', 'sample')
		and COLUMN_NAME IN ('EducationOrganizationId', 'StateEducationAgencyId', 'SchoolId', 'PostSecondaryInstitutionId', 'OrganizationDepartmentId', 'LocalEducationAgencyId', 'EducationServiceCenterId', 'EducationOrganizationNetworkId', 'CommunityProviderId', 'CommunityOrganizationId')
)
, IndexedEdOrgIds as (
select OBJECT_SCHEMA_NAME(i.object_id) as [SchemaName], OBJECT_NAME(i.object_id) as [TableName], 
		i.name as IndexName,
		c.name as ColumnName,
		--ic.index_column_id,
		ic.key_ordinal as OrdinalPosition
		--, i.*
from	sys.indexes i
	inner join sys.index_columns ic
		on i.object_id = ic.object_id
		and i.index_id = ic.index_id
	inner join sys.columns c
		on i.object_id = c.object_id
		and ic.column_id = c.column_id
where OBJECT_SCHEMA_NAME(i.object_id) IN (@schemaName, @extensionSchemaName) --in ('edfi', 'tpdm', 'sample')
	and c.name IN ('EducationOrganizationId', 'StateEducationAgencyId', 'SchoolId', 'PostSecondaryInstitutionId', 'OrganizationDepartmentId', 'LocalEducationAgencyId', 'EducationServiceCenterId', 'EducationOrganizationNetworkId', 'CommunityProviderId', 'CommunityOrganizationId')
	--	and c.name IN ('StudentUSI', 'StaffUSI', 'ParentUSI', 'ContactUSI')

)
--select * from IndexedEdOrgIds order by SchemaName, TableName
/*
, SecondaryPositions as (
	select distinct i.SchemaName, i.TableName
	from IndexedEdOrgIds i
	where OrdinalPosition > 1
)
,PrimaryPositions as (
	select distinct i.SchemaName, i.TableName
	from IndexedEdOrgIds i
	where OrdinalPosition = 1
)
*/
--select * from SecondaryPositions order by SchemaName, TableName
, MissingIndexes as (
	select i.* 
	from PrimaryKeyEdOrgIds i
	-- from IndexedEdOrgIds i
		inner join AggregateRootTables agg
			on i.SchemaName = agg.TABLE_SCHEMA
			and i.TableName = agg.TABLE_NAME
			/*
		--inner join SecondaryPositions s
		--	on i.SchemaName = s.SchemaName
		--		and i.TableName = s.TableName
	--where CONCAT(i.SchemaName, '.', i.TableName) 
	--	NOT IN (SELECT CONCAT(p.SchemaName, '.', p.TableName) FROM PrimaryPositions p)
			*/
)
--select distinct SchemaName, TableName, ColumnName from MissingIndexes order by SchemaName, TableName

select distinct CONCAT('/**',SchemaName, '.', TableName,'**/') AS Name, 
	CONCAT('IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name=''IX_', TableName, '_', ColumnName, ''' AND object_id = OBJECT_ID(''', SchemaName, '.', TableName, ''')) BEGIN CREATE INDEX IX_', TableName, '_', ColumnName, ' ON ', SchemaName, '.', TableName, '(', ColumnName, ') INCLUDE (Id) END;') AS MsSql,
	--CONCAT('CREATE INDEX IF NOT EXISTS IX_', LOWER(SUBSTRING(CONVERT(varchar(100), HASHBYTES('SHA2_256', TableName), 1), 3, 6)), '_', ColumnName, ' ON ', SchemaName, '.', TableName, '(', ColumnName, ') INCLUDE (Id);') AS PgSql
	CONCAT('IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name=''IX_', LOWER(SUBSTRING(CONVERT(varchar(100), HASHBYTES('SHA2_256', TableName), 1), 3, 6)), '_', ColumnName, ''') BEGIN CREATE INDEX IX_', LOWER(SUBSTRING(CONVERT(varchar(100), HASHBYTES('SHA2_256', TableName), 1), 3, 6)), '_', ColumnName, ' ON ', SchemaName, '.', TableName, '(', ColumnName, ') INCLUDE (Id) end;') AS PgSql,
	CONCAT('alter table ', TableName, ' DROP INDEX IX_', TableName, '_', ColumnName, ' ON ', SchemaName, '.', TableName) drop_MsSql,
	CONCAT('alter table ', TableName, ' DROP INDEX IX_', TableName, '_', ColumnName, ' ON ', SchemaName, '.', TableName) drop_PgSql
from MissingIndexes
where SchemaName = @indexesSchema
order by 1 --SchemaName, TableName, CONCAT('CREATE INDEX IX_', TableName, '_', ColumnName, ' ON ', SchemaName, '.', TableName, '(', ColumnName, ') INCLUDE (Id);')

/*
select * from sys.index_columns ic
select * from sys.columns
*/
--select LOWER(SUBSTRING(CONVERT(varchar(100), HASHBYTES('SHA2_256', 'AbcDescriptor'), 1), 3, 6))



--CREATE INDEX IX_StudentSectionAssociation_Student ON edfi.StudentSectionAssociation(StudentUSI)
end

--sp_help 'edfi.SurveySectionResponseEducationOrganizationTargetAssociation'




--IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_SurveySectionResponseEducationOrganizationTargetAssociation_EducationOrganizationId' AND object_id = OBJECT_ID('edfi.SurveySectionResponseEducationOrganizationTargetAssociation')) BEGIN CREATE INDEX IX_SurveySectionResponseEducationOrganizationTargetAssociation_EducationOrganizationId ON edfi.SurveySectionResponseEducationOrganizationTargetAssociation(EducationOrganizationId) INCLUDE (Id) END;
--IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_0bc73a_EducationOrganizationId') BEGIN CREATE INDEX IX_0bc73a_EducationOrganizationId ON edfi.SurveySectionResponseEducationOrganizationTargetAssociation(EducationOrganizationId) INCLUDE (Id) end;
--AcademicWeek_PK
--FK_AcademicWeek_School
--IX_213515_SchoolId
--IX_AcademicWeek_SchoolId
--UX_AcademicWeek_ChangeVersion
--UX_AcademicWeek_Id
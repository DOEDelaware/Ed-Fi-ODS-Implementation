select s.name, t.name from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where t.name like '%descriptor%' and t.name <>'Descriptor' and s.name not like 'tracked_deletes%'
order by t.name

select * from sys.schemas

--INSERT INTO edfi.AcademicSubjectDescriptor
--SELECT Descriptorid
--FROM edfi.Descriptor
--WHERE NameSpace like '%AcademicSubjectDescriptor%'


select 
'INSERT INTO ' + s.name + '.' + t.name +
' SELECT Descriptorid FROM edfi.Descriptor
WHERE NameSpace like ''%' + t.name + '%''
and CodeValue not in (select CodeValue from edfi.Descriptor d join ' + s.name + '.' + t.name + ' x on d.DescriptorId=x.' + t.name + 'Id)'
from sys.tables t join sys.schemas s on t.schema_id=s.schema_id
where t.name like '%descriptor' and s.name not like 'tracked_deletes%' and t.name<>'descriptor'
order by t.name


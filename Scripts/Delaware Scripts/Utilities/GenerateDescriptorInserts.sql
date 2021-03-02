select * from edfi.Descriptor where namespace like '%doe.k12.de.us%' order by Namespace

select 
'insert into edfi.Descriptor (NameSpace, CodeValue,ShortDescription, Description, CreateDate, LastModifiedDate) values (''' + Namespace + ''',''' + CodeValue + ''',''' + replace(ShortDescription,'''','''''') + ''',''' + replace(Description,'''','''''') + ''',''' + convert(varchar(50),CreateDate) + ''',''' + convert(varchar(50),LastModifiedDate) + ''')'
 from edfi.Descriptor 
 order by Namespace



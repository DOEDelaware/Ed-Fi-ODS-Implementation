use EdFi_Delaware_Ods_2022
go
select * into #POS from CODELIBRARYSOURCE.CodeLibrary.doeCode.ProgramOfStudy
go
select * from #POS

select * from #POS where Code like '03.0%'


select * FROM edfi.Descriptor  WHERE NameSpace like '%CareerPathway%'

--select *  from edfi.Descriptor d join #POS POS on d.CodeValue=POS.Code
--where Namespace ='uri://doe.k12.de.us/CareerPathwayDescriptor' and POS.Active=1

--update description on codes that exist
update d set d.Description=POS.Description, d.ShortDescription=POS.ShortDescription, LastModifiedDate=getdate()
from edfi.Descriptor d join #POS POS on d.CodeValue=POS.Code
where Namespace ='uri://doe.k12.de.us/CareerPathwayDescriptor' and POS.Active=1
go

--select * from edfi.Descriptor where Namespace ='uri://doe.k12.de.us/CareerPathwayDescriptor' and CodeValue not in (select Code from  #POS)


--delete codes not in list
delete edfi.Descriptor where Namespace ='uri://doe.k12.de.us/CareerPathwayDescriptor' and CodeValue not in (select Code from  #POS)



--insert additional codes
insert into edfi.Descriptor (Namespace,CodeValue,ShortDescription,Description,CreateDate,LastModifiedDate)
select 'uri://doe.k12.de.us/CareerPathwayDescriptor', POS.Code, POS.ShortDescription, POS.Description, getdate(), getdate() from #POS POS
where POS.Code not in (select CodeValue from edfi.Descriptor where Namespace='uri://doe.k12.de.us/CareerPathwayDescriptor')



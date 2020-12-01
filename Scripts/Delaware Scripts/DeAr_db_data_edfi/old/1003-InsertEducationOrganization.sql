 create function [dbo].[descriptor]( @ns varchar(255), @codevalue varchar(50)) returns int as
 begin
 declare @result int
 select @result=descriptorid from edfi.descriptor where codevalue = @codevalue and namespace like  @ns 
return @result
 end

GO
/*
select '
insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)
select ''' + convert(varchar(10),EducationOrganizationId) + ''',''' +  isnull(NameOfInstitution,'') + ''',''' +  isnull(ShortNameOfInstitution,'') + ''',''' +  isnull(WebSite,'') + ''', 
dbo.descriptor(''%OperationalStatusDescriptor%'','''+ (select CodeValue from edfi.Descriptor where DescriptorId=OperationalStatusDescriptorId) + ''')'
 from edfi.EducationOrganization


 */
 
 insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '10','Caesar Rodney School District','Caesar Rodney','www.cr.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '12','Consortium Discipline Alternative Programs','C-DAP','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '13','Capital School District','Capital','www.capital.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '15','Lake Forest School District','Lake Forest','www.lf.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '16','Laurel School District','Laurel','www.laurel.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '17','Cape Henlopen School District','Cape Henlopen','www.capehenlopenschools.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '18','Milford School District','Milford','milfordschooldistrict.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '23','Seaford School District','Seaford','www.seafordbluejays.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '24','Smyrna School District','Smyrna','www.smyrna.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '29','Appoquinimink School District','Appoquinimink','www.apposchooldistrict.com/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '31','Brandywine School District','Brandywine','www.bsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '32','Red Clay Consolidated School District','Red Clay','www.redclayschools.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '33','Christina School District','Christina','www.christina.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '34','Colonial School District','Colonial','www.colonialschooldistrict.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '35','Woodbridge School District','Woodbridge','www.woodbridgeraiders.net',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '36','Indian River School District','Indian River','www.irsd.net',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '37','Delmar School District','Delmar','www.delmar.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '38','New Castle County Vocational-Technical School District','NCC Votech','www.nccvotech.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '39','POLYTECH School District','POLYTECH','www.polytechschooldistrict.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '40','Sussex Technical School District','Sussex Tech','www.sussexvt.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '67','Prestige Academy','Prestige Academy','www.prestigeacademycs.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '68','Delaware Academy of Public Safety and Security','DAPSS','www.dapsscharterschool.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '69','Las Americas Aspira Academy','Aspira Academy','www.aspiraacademy.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '70','Charter School of Wilmington','Charter Sch of Wilm','www.charterschool.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '71','Positive Outcomes Charter School','Positive Outcomes','www.positiveoutcomescs.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '72','East Side Charter School','East Side','www.eastsidecharterschool.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '74','Campus Community Charter School','Campus Comm','www.campuscommunityschool.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '76','Edison (Thomas A.) Charter School','Thomas Edison','www.thomasedison.charter.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '77','Sussex Academy','Sussex Academy','www.sussexacademy.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '79','Delaware Military Academy','Delaware Military Academy','www.demilacad.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '80','Charter School of New Castle','Charter of New Castle','www.familyfoundationsacademy.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '82','Kuumba Academy Charter School','Kuumba','www.kuumbaacademycharter.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '85','Academy of Dover Charter School','Academy of Dover','www.aodcharter.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '86','Odyssey Charter School','Odyssey Charter','www.odysseycharterschooldel.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '87','Providence Creek Academy Charter School','Providence Creek','www.providencecreekacademy.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '88','MOT Charter School','MOT','www.motcharter.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '89','Newark Charter School','Newark Charter','www.NewarkCharter.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '92','Gateway Lab School','Gateway Lab','www.gatewaylabschool.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '95','Department Of Education','DOE','www.doe.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '9604','Early College High School at Delaware State University','ECHS at DSU','echs.desu.edu/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '9605','Academia Antonia Alonso','Alonso','www.academiacharter.com/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '9606','First State Montessori Academy','First State Montessori ','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '9607','First State Military Academy','First State Military','www.fsmilitary.org/#',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '9609','Design Thinking Academy','DTA','www.ddlhs.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '9611','Great Oaks Charter School','Great Oaks Charter School','www.greatoakscharter.org/schools/wilmington',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '9612','Freire Charter School Wilmington','Freire Charter School','www.freirewilmington.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '9614','Sussex Montessori School','Sussex Montessori ','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100610','Allen Frear Elementary School','Frear Elem','www.crk12.org/Domain/13',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100611','J. Ralph McIlvaine Early Childhood Center','McIlvaine Elem','www.crk12.org/Domain/19',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100612','Major George S. Welch Elementary School','Welch Elem','www.crk12.org/Domain/17',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100615','Kent Elementary Intensive Learning Center','Kent Elementary ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100616','Nellie Hughes Stokes Elementary School','Stokes Elem','www.crk12.org/Domain/16',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100618','Star Hill Elementary School','Star Hill Elem','www.crk12.org/Domain/15',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100620','W. B. Simpson Elementary School','Simpson Elem','www.crk12.org/Domain/14',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100621','F. Niel Postlethwait Middle School','Postlethwait Middle','www.crk12.org/Domain/11',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100622','W. Reily Brown Elementary School','Brown Elem','www.crk12.org/Domain/12',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100625','Fred Fifer III Middle School','Fifer Middle','www.crk12.org/Domain/10',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100626','Caesar Rodney High School','Caesar Rodney High','www.crk12.org/Domain/8',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100628','Dover Air Force Base Middle School','DAFB Middle','www.crk12.org/Domain/9',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100629','Dover AFB Choice','DAFB Choice','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '100630','John S. Charlton School','Charlton School','www.crk12.org/Domain/18',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '120501','Kingswood Academy','Kingswood Academy','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '120701','SCOPE - South','SCOPE - South','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '120777','SCOPE - North','SCOPE - North','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '120791','Parkway Academy - Middle School','Parkway Middle','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '120792','Parkway Academy - Upper School','Parkway Upper','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '120793','Parkway Academy ','Parkway Central','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130632','East Dover Elementary School','East Dover Elem','www.east.capital.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130634','South Dover Elementary School','South Dover Elem','www.south.capital.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130635','North Dover Elementary School','North Dover Elem','www.north.capital.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130636','Booker T. Washington Elementary School','B T WASHINGTON ELEM SCH','www.btw.capital.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130638','Fairview Elementary School','Fairview Elem','www.fairview.capital.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130640','Hartly Elementary School','Hartly Elem','www.hartly.capital.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130642','Towne Point Elementary School','Towne Point Elem','www.townepoint.capital.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130644','Central Middle School','Central Middle','www.central.capital.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130646','William Henry Middle School','William Henry Middle','www.capital.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130648','Dover High School','Dover High','www.doverhigh.capital.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130649','Capital Intensive Learning Center','Capital ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130650','Kent County Community School','Kent County Community','www.capital.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130653','Capital Exceptional VocEd','Capital Ex VocEd','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130655','Kent County Secondary ILC','Kent County Alternative','www.capital.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130656','y','y','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '150658','Lake Forest East Elementary School','Lake Forest East Elem','www.lf.k12.de.us/east',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '150659','Lake Forest ILC','Lake Forest ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '150660','Lake Forest North Elementary School','Lake Forest North Elem','www.lf.k12.de.us/north',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '150661','Low Incident Special Programs','Low Incident Prog','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '150662','Lake Forest South Elementary School','Lake Forest South Elem','www.lf.k12.de.us/south',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '150663','Delaware Early Childhood Center','Childhood Cntr','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '150664','Chipman (W.T.) Middle School','W.T. Chipman Middle','www.lf.k12.de.us/chipman',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '150665','Lake Forest High School','Lake Forest High','www.lf.k12.de.us/lfhs',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '150669','Lake Forest Central Elementary School','Lake Forest Central Elem','www.lf.k12.de.us/central',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '160752','North Laurel Elementary School','North Laurel Elem','www.north.laurel.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '160753','Dunbar (Paul Laurence) Elementary School','Dunbar Elem','www.dunbar.laurel.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '160756','Laurel Senior High School','Laurel  High','www.lhs.laurel.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '160781','Laurel Intensive Learning Centers','Laurel Sec ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '160782','Laurel Intermediate Middle School','Laurel Int Middle','www.lms.laurel.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '160783','Laurel Elementary School','Laurel Elem','www.lms.laurel.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '170710','H. O. Brittingham Elementary School','Brittingham Elem','www.edlinesites.net/pages/H_O__Brittingham_Elementary_Sc',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '170712','Shields (Richard A.) Elementary School','Shields Elem','www.edlinesites.net/pages/Richard_A__Shields_Elementary_',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '170718','Love Creek Elementary School','Love Creek Elementary','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '170720','Mariner Middle School','Mariner Middle','www.edlinesites.net/pages/Mariner_Middle_School',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '170721','Milton Elementary School','Milton Elementary','www.edlinesites.net/pages/826136254565690354',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '170722','Rehoboth Elementary School','Rehoboth Elem','www.edlinesites.net/pages/Rehoboth_Elementary_School',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '170724','Beacon Middle School','Beacon Middle','www.edlinesites.net/pages/Beacon_Middle_School',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '170726','Cape Henlopen High School','Cape Henlopen High','www.edlinesites.net/pages/Cape_Henlopen_High_School',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '170728','Sussex Consortium','Sussex Consortium','www.edlinesites.net/pages/Sussex_Consortium',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '180668','Banneker (Benjamin) Elementary School','Banneker Elem','be.milfordschooldistrict.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '180670','Morris (Evelyn I.) Early Childhood','Morris ECC','me.milfordschooldistrict.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '180672','Ross (Lulu M.) Elementary School','Ross Elem','re.milfordschooldistrict.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '180673','Mispillion Elementary','Mispillion Elementary','mes.milfordschooldistrict.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '180675','Milford Central Academy','Central Academy','mca.milfordschooldistrict.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '180678','Milford Senior High School','Milford High','mhs.milfordschooldistrict.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '180679','Milford ILC','Milford ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '190008','Delaware Adolescent Program Inc. (DAPI)','DAPI - NCC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '190030','Delaware Adolescent Program Inc. (DAPI) Kent','DAPI - Kent','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '190031','Delaware Adolescent Program Inc. (DAPI) Sussex','DAPI - Sussex','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '230759','Seaford Central Elementary School','Seaford Central Elem','ces.seafordbluejays.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '230760','West Seaford Elementary School','West Seaford Elem','wses.seafordbluejays.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '230761','Blades Elementary School','Blades Elem','bes.seafordbluejays.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '230762','Frederick Douglass Elementary School','Fred Douglass Elem','fdes.seafordbluejays.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '230763','Seaford Autistic Program','Seaford Autistic Program','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '230764','Seaford Middle School','Seaford Middle','sms.seafordbluejays.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '230766','Seaford Senior High School','Seaford High','shs.seafordbluejays.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '230768','Sussex Orthopedic Program','Sussex Ortho Prog','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '240680','Clayton Elementary School','Clayton Elem','ces.smyrna.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '240681','Sunnyside Elementary School','Sunnyside Elementary','sse.smyrna.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '240682','Smyrna Elementary School','Smyrna Elem','ses.smyrna.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '240684','North Smyrna Elementary School','N Smyrna Elem','nes.smyrna.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '240685','Smyrna Middle School','Smyrna Middle','sms.smyrna.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '240686','Moore (John Bassett) School','J Bassett Moore','jbm.smyrna.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '240687','Smyrna ILC','Smyrna ILC','www.smyrna.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '240688','Smyrna High School','Smyrna High','shs.smyrna.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '240696','Clayton Intermediate School','Clayton Intermediate Sch','cis.smyrna.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290010','Silver Lake Elementary School','Silver Lake Elem','www.sleschool.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290011','Cedar Lane Elementary School','Cedar Lane Elem','www.cedarlaneschool.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290013','Appoquinimink PreSchool Center','Appoquinimink ECC','www.appopreschool.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290014','Townsend Elementary School','Townsend Elem','www.townsendelem.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290016','Redding (Louis L.) Middle School','Redding Middle','www.reddingms.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290017','Meredith (Everett) Middle School','Meredith Middle','www.meredithmiddle.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290018','Middletown High School','Middletown High','www.middletownhs.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290020','Loss (Olive B.) Elementary School','Loss Elementary','www.olivebloss.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290021','Brick Mill Elementary School','Brick Mill Elem','www.brickmilldolphins.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290022','Cedar Lane Early Childhood Center','Cedar Lane ECC','www.clecc.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290023','Waters (Alfred G.) Middle School','Waters Middle School','www.agwaters.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290024','Appoquinimink High School','Appoquinimink High','www.appohigh.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290027','Townsend Early Childhood Center','Townsend ECC','www.townsendecc.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290028','Bunker Hill Elementary School','Bunker Hill','www.bunkerhillelem.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290029','Spring Meadow Early Childhood Center','Spring Meadow ECC','springmeadowecc.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290032','Old State Elementary School','Old State Elem Sch','www.oldstateelementary.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290505','Appoquinimink ILC','Appoquinimink ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290507','Appoquinimink Low Incident Program','Appo Low Incident','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '290508','Gateway to Learning ','Gateway to Learning ','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310108','Brandywine SITE','Brandywine SITE','www.brandywineschools.org/mphs/site/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310110','Hanby Elementary School','Hanby Elem','www.brandywineschools.org/hanby',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310112','Carrcroft Elementary School','Carrcroft Elem','www.brandywineschools.org/carrcroft',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310124','Forwood Elementary School','Forwood Elem','www.brandywineschools.org/forwood',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310128','Lancashire Elementary School','Lancashire Elem','www.brandywineschools.org/lancashire',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310130','Lombardy Elementary School','Lombardy Elem','www.brandywineschools.org/lombardy',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310132','Maple Lane Elementary School','Maple Lane Elem','www.brandywineschools.org/maple',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310150','Brandywine Community School (BCS) and Twilight Academy Program (TAP)','Brandywine Community','www.afriendofthefamily.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310151','Claymont Elementary School','Claymont Elem','www.brandywineschools.org/claymont',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310156','Harlan (David W. ) Elementary School','Harlan Elem','www.brandywineschools.org/harlan',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310170','duPont (Pierre S.) Middle School','P. S. duPont Middle','www.brandywineschools.org/psdupont',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310176','Mount Pleasant Elementary School','Mt. Pleasant Elem','www.brandywineschools.org/mpe',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310178','Springer Middle School','Springer Middle','www.brandywineschools.org/springer',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310180','Talley Middle School','Talley Middle','www.brandywineschools.org/talley',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310190','Brandywine High School','Brandywine High','www.brandywineschools.org/brandywine',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310194','Concord High School','Concord High','www.brandywineschools.org/concord',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310196','Mount Pleasant High School','Mt Pleasant High','www.brandywineschools.org/mphs',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '310510','Bush (Charles W.) Pre-School','Bush School','www.brandywineschools.org/bush',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320203','Red Clay Alternative Education','Red Clay Alternative','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320240','Forest Oak Elementary School','Forest Oak Elem','http://redclay.schoolwires.net/forestoak',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320242','Heritage Elementary School','Heritage Elem','http://redclay.schoolwires.net/heritage',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320244','Highlands Elementary School','Highlands Elem','http://redclay.schoolwires.net/highlands',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320246','Lewis (William C.) Dual Language Elementary School','Lewis Dual Language Elem','http://redclay.schoolwires.net/lewis',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320248','Shortlidge (Evan G.) Academy','Shortlidge Elem','http://redclay.schoolwires.net/shortlidge',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320250','Linden Hill Elementary School','Linden Hill Elem','http://redclay.schoolwires.net/lindenhill',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320252','Baltz (Austin D.) Elementary School','Baltz Elem','http://redclay.schoolwires.net/baltz',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320254','Richardson Park Elementary School','Richardson Park Elem','http://redclay.schoolwires.net/rpes',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320256','Marbrook Elementary School','Marbrook Elem','http://redclay.schoolwires.net/marbrook',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320260','Richey Elementary School','Richey Elem','http://redclay.schoolwires.net/richey',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320261','Brandywine Springs School','Brandywine Springs','http://redclay.schoolwires.net/bss',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320264','Mote (Anna P.) Elementary School','Mote Elem','http://redclay.schoolwires.net/mote',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320266','Warner Elementary School','Warner Elem','http://redclay.schoolwires.net/warner',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320270','North Star Elementary School','North Star Elem','http://redclay.schoolwires.net/northstar',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320271','William F. Cooke Jr. Elementary','Cooke Elementary','http://redclay.schoolwires.net/cooke',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320274','duPont (Alexis I.) Middle School','A I duPont Middle','http://redclay.schoolwires.net/aims',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320276','duPont (H.B.) Middle School','H B duPont Middle','http://redclay.schoolwires.net/hb',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320280','Skyline Middle School','Skyline Middle','http://redclay.schoolwires.net/skyline',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320282','Stanton Middle School','Stanton Middle','http://redclay.schoolwires.net/stanton',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320284','Conrad Schools of Science','Conrad Schools of Science','http://redclay.schoolwires.net/conrad',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320286','Calloway (Cab) School of the Arts','Calloway Sch of the Arts','www.cabcallowayschool.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320290','Dickinson (John) High School','Dickinson High','http://redclay.schoolwires.net/dickinson',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320292','duPont (Alexis I.) High School','A I duPont High','http://redclay.schoolwires.net/aihs',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320294','McKean (Thomas) High School','McKean High','http://redclay.schoolwires.net/mckean',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320516','Meadowood Program','Meadowood Program','http://redclay.schoolwires.net/meadowood',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320526','Richardson Park Learning Center','Richardson Park Lrng Cntr','http://redclay.schoolwires.net/rplc',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320527','Central School (The)','Central School',' ',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320530','First State School','First State School','http://redclay.schoolwires.net/first',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330310','Brookside Elementary School','Brookside Elem','www.brooksidees.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330312','Marshall (Thurgood) Elementary School','Marshall Elem','www.marshalles.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330314','Jones (Albert H.) Elementary School','Jones Elem','www.albertjoneses.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330318','Downes (John R.) Elementary School','Downes Elem','www.downeses.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330320','Gallaher (Robert S.) Elementary School','Gallaher Elem','www.gallaheres.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330321','Keene (William B.) Elementary School','Keene Elem','www.keenees.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330322','Leasure (May B.) Elementary School','Leasure Elem','www.leasurees.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330324','Maclary (R. Elisabeth) Elementary School','Maclary Elem','www.maclaryes.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330326','McVey (Joseph M.) Elementary School','McVey Elem','www.mcveyes.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330327','Oberle (William) Elementary School','Oberle Elem Sch','www.oberlees.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330330','Smith (Jennie E.) Elementary School','Smith Elem','www.smithes.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330332','West Park Place Elementary School','West Park Place Elem','www.westparkplace.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330334','Wilson (Etta J.) Elementary School','Wilson Elem','www.wilsones.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330339','Brader (Henry M.) Elementary School','Brader Elem','www.braderes.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330350','Bancroft Elementary School','Bancroft Elem','www.bancroftes.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330351','Montessori Academy Wilmington','MAC','www.bancroftes.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330352','Bayard Middle School','Bayard Middle','www.bayardms.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330354','Pyle (Sarah) Academy','Pyle Academy','www.sarahpyleacademy.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330356','Elbert-Palmer Elementary School','Elbert-Palmer Elem','www.elbertpalmeres.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330358','Pulaski (Casimir) Elementary School','Pulaski Elem','www.pulaskies.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330362','Stubbs (Frederick Douglass) Elementary School','Stubbs Elem','www.stubbses.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330372','Gauger-Cobbs Middle School','Gauger-Cobbs Middle','www.gaugercobbsms.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330374','Kirk (George V.) Middle School','Kirk Middle','www.kirkms.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330376','Shue-Medill Middle School','Shue-Medill Middle','www.shuemedillms.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330390','Christiana High School','Christiana High','www.christianahs.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330392','Glasgow High School','Glasgow High','www.glasgowhs.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330394','Newark High School','Newark High','www.newarkhigh.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330512','REACH/CBIP','REACH','www.csdreachprogram.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330534','Networks','Networks','www.christinak12.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330535','Christina - Intensive Learning Center','Christina ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330537','Douglass School','Douglass School','www.christinak12.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330538','Brennen School (The)','Brennen School','www.christinak12.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330540','Delaware School for the Deaf School (DSD)','School for the Deaf SEC','www.dsdeaf.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330544','Delaware School for the Deaf Statewide Programs/Services','School for the Deaf ES','www.dsdeaf.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '330545','Christina Early Education Center','Christina Early Ed Center','www.christinaeec.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340410','Downie (Carrie) Elementary School','Downie Elem','www.colonialschooldistrict.org/carriedownie',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340412','Castle Hills Elementary School','Castle Hills Elem','www.colonialschooldistrict.org/castlehills',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340418','Pleasantville Elementary School','Pleasantville Elem','www.colonialschooldistrict.org/pleasantville',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340420','Wilmington Manor Elementary School','Wilmington Manor Elem','www.colonialschooldistrict.org/wilmingtonmanor',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340422','Wilbur (Kathleen H.) Elementary','Wilbur Elementary','www.colonialschooldistrict.org/wilbur',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340427','Southern Elementary School','Southern Elem','www.colonialschooldistrict.org/southern',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340432','New Castle Elementary School','New Castle ES','www.colonialschooldistrict.org/newcastle',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340450','The Colwyck Center','The Colwyck Center','www.colonialschooldistrict.org/ceep',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340456','Eisenberg (Harry O.) Elementary School','Eisenberg Elem','www.colonialschooldistrict.org/eisenberg',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340470','Bedford (Gunning) Middle School','Bedford Middle','www.colonialschooldistrict.org/gunningbedford/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340474','Read (George) Middle School','Read Middle','georgeread.colonial.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340476','McCullough (Calvin R. ) Middle School','McCullough Middle','www.colonialschooldistrict.org/mccullough',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340490','Penn (William) High School','Penn High','www.colonialschooldistrict.org/williampenn',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340514','Leach (John G.) School','Leach School','www.colonialschooldistrict.org/leach',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340515','Leach Exceptional VocEd','Leach Ex VocEd','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340522','The Wallace Wallin School','The Wallin School','www.colonialschooldistrict.org/wallin',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '340523','Southern Elementary School ILC','Southern ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '350775','Woodbridge Middle School','Woodbridge Middle','www.wmsraiders.net',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '350776','Woodbridge Early Childhood Education Center','WECEC','www.ececraiders.net',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '350779','Phillis Wheatley Elementary School','PWES ','www.pwesraiders.net',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '350780','Woodbridge High School','Woodbridge High','www.whsraiders.net',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360689','Carver (G.W.) Educational Center','Carver Center','www.cc.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360690','Long Neck Elementary School','Long Neck Elem','www.ln.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360691','Georgetown Kindergarten Center','Georgetown Kin Ctr','www.irsd.net/pages/Indian_River_School_District/Our_Schools/Elementary_Schools/Kindergarten_Center',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360692','North Georgetown Elementary School','North Georgetown Elem','www.ng.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360732','Clayton (John M.) Elementary School','John Clayton Elementary','www.jc.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360734','Georgetown Elementary School','Georgetown Elem','www.ge.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360736','Lord Baltimore Elementary School','Lord Balt Elem','www.lb.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360738','East Millsboro Elementary School','East Millsboro Elem','www.em.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360740','Showell (Phillip C.) Elementary School','Showell Elem','www.ps.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360741','Millsboro Middle School','Millsboro Middle','www.edline.net/pages/Millsboro_Middle_School',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360742','Selbyville Middle School','Selbyville Middle','www.sm.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360743','Georgetown Middle School','Georgetown Middle','www.gm.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360745','Indian River Intensive Learning Center','Indian River ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360746','Indian River High School','Indian River High','www.ir.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360748','Sussex Central High School','Sussex Central High','www.sc.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360749','Southern Delaware School of the Arts','Southern DE Sch of Arts','www.irsd.net',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360750','Ennis (Howard T.) School','Ennis','www.he.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '360758','Ingram Pond','Ingram Pond','www.sc.irsd.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '370730','Delmar High School','Delmar High School ','www.delmar.k12.de.us/education/components/layout/default.php?sectionid=4',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '370733','Delmar Middle School','Delmar Middle','www.delmar.k12.de.us/education/school/school.php?sectiondetailid=75&',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '370737','Delmar Secondary ILC','Delmar Secondary ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '370739','Delmar Middle Level ILC','Delmar Middle ILC','www.delmar.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '380026','Howard High School of Technology','Howard HS of Tech','www.howardhsde.com/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '380044','St. Georges Technical High School','St. Georges HS of Tech','www.stgeorgesde.com/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '380051','NCC Votech Applicant','Vo-Tech Applicant','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '380066','Hodgson (Paul M.) Vocational Technical High School','Hodgson Vo-Tech High','www.hodgsonde.com/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '380080','Delcastle Technical High School','Delcastle Tech High','delcastleths.com/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '380539','Delcastle ILC','Delcastle ILC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '380541','NCC Exceptional VocEd','NCC Ex VocEd','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '390652','POLYTECH High School','POLYTECH High','www.polytechpanthers.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '400770','Sussex Technical High School','Sussex Tech High','www.sussexvt.k12.de.us/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '670566','Prestige Academy','Prestige Academy','www.prestigeacademycs.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '680567','Delaware Academy of Public Safety and Security','DAPSS','www.dapsscharterschool.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '690568','Las Americas ASPIRA Academy','Las Aspira ','www.aspiraacademy.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '690569','z','z','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '700295','Charter School of Wilmington','Charter Sch of Wilm','www.charterschool.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '710570','Positive Outcomes Charter School','Positive Outcomes','www.positiveoutcomescs.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '720571','East Side Charter School','East Side Charter','www.escs.charter.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '730572','Reach Academy for Girls','Reach Academy','www.reachacademyforgirls.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '740573','Campus Community School','Campus Community','www.campuscommunityschool.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '740980','Campus Community School','Campus Community School','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '750574','Moyer (Maurice J.) Academy','Moyer Academy','www.mauricejmoyeracademicinstitute.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '760575','Edison (Thomas A.) Charter School','Thomas Edison Charter','www.thomasedison.charter.k12.de.us',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '770576','Sussex Academy of Arts and Sciences','Sussex Academy','www.sussexacademy.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '779576','Sussex Academy High School','Sussex Academy High School','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '790578','Delaware Military Academy','Delaware Military Academy','www.demilacad.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '800579','Charter School of New Castle','Charter of New Castle','www.familyfoundationsacademy.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '820581','Kuumba Academy Charter School','Kuumba Academy','kuumbaacademy.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '850584','Academy Of Dover Charter School','Academy of Dover','www.aodcharter.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '860585','Odyssey Charter School','Odyssey Charter','www.odysseycharterschooldel.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '860586','Odyssey Charter Intermediate','Odyssey Charter Intermediate','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '860591','Odyssey Charter Upper/High','Odyssey Charter Upper/High','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '870586','Providence Creek Academy Charter School','Providence Creek','www.pcasaints.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '880587','MOT Charter School','MOT Charter','www.motcharter.com',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '884587','MOT Charter High School','MOT Charter High School','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '890588','Newark Charter School','Newark Charter','www.newarkcharterschool.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '890589','NCS Intermediate School','NCS Intermediate School','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '890590','NCS Primary School','NCS Primary School','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '920543','Gateway Lab School','Gateway Lab','www.gatewaylabschool.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '96044040','Early College High School at Delaware State University','ECHS at DSU','echs.desu.edu',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '96054045','Academia Antonia Alonso','Academia Antonia Alonso','www.academiacharter.com/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '96064050','First State Montessori Academy','First State Montessori','www.firststatemontessori.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '96065050','First State Montessori Middle School','First State Montessori Middle School','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '96074055','First State Military Academy','First State Military','www.fsmilitary.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '96094065','Design Thinking Academy','DDLHS','www.ddlhs.org',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '96114075','Great Oaks Charter School','Great Oaks Charter School','www.greatoakscharter.org/schools/wilmington',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '96124080','Freire Charter School','Freire Charter School','www.freirewilmington.org/',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '96144090','Sussex Montessori School','Sussex Montessori','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
go
  
insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '130645','Capital Early Childhood Center','Capital ECC','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')

insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '320529','Red Clay Early Years Program','Early Years Program','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
 
go
--StateEducationAgency
insert into edfi.StateEducationAgency
values (95)
go




--edfi.EducationOrganizationCategory
/*
select 'insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)
select 
	dbo.descriptor(''%EducationOrganizationCategoryDescriptor%'','''+ (select CodeValue from edfi.Descriptor where DescriptorId=EducationOrganizationCategoryDescriptorId) + '''),' + 
	convert(varchar(20),EducationOrganizationId )
from edfi.EducationOrganizationCategory
*/
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),10
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),12
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),13
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),15
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),16
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),17
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),18
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),23
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),24
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),29
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),31
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),32
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),33
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),34
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),35
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),36
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),37
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),38
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),39
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),40
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),67
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),68
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),69
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),70
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),71
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),72
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),74
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),76
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),77
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),79
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),80
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),82
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),85
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),86
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),87
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),88
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),89
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),92
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),9604
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),9605
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),9606
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),9607
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),9609
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),9611
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),9612
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','Local Education Agency'),9614
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100610
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100611
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100612
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100615
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100616
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100618
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100620
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100621
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100622
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100625
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100626
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100628
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100629
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),100630
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),120501
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),120701
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),120777
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),120791
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),120792
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),120793
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130632
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130634
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130635
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130636
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130638
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130640
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130642
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130644
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130646
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130648
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130649
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130650
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130653
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130655
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130656
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),150658
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),150659
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),150660
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),150661
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),150662
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),150663
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),150664
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),150665
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),150669
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),160752
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),160753
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),160756
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),160781
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),160782
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),160783
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),170710
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),170712
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),170718
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),170720
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),170721
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),170722
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),170724
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),170726
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),170728
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),180668
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),180670
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),180672
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),180673
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),180675
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),180678
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),180679
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),190008
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),190030
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),190031
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),230759
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),230760
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),230761
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),230762
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),230763
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),230764
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),230766
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),230768
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),240680
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),240681
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),240682
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),240684
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),240685
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),240686
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),240687
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),240688
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),240696
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290010
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290011
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290013
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290014
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290016
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290017
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290018
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290020
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290021
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290022
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290023
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290024
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290027
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290028
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290029
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290032
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290505
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290507
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),290508
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310108
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310110
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310112
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310124
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310128
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310130
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310132
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310150
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310151
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310156
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310170
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310176
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310178
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310180
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310190
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310194
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310196
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),310510
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320203
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320240
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320242
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320244
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320246
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320248
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320250
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320252
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320254
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320256
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320260
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320261
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320264
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320266
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320270
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320271
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320274
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320276
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320280
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320282
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320284
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320286
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320290
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320292
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320294
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320516
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320526
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320527
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320530
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330310
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330312
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330314
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330318
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330320
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330321
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330322
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330324
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330326
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330327
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330330
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330332
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330334
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330339
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330350
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330351
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330352
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330354
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330356
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330358
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330362
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330372
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330374
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330376
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330390
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330392
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330394
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330512
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330534
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330535
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330537
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330538
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330540
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330544
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),330545
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340410
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340412
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340418
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340420
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340422
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340427
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340432
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340450
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340456
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340470
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340474
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340476
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340490
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340514
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340515
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340522
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),340523
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),350775
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),350776
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),350779
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),350780
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360689
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360690
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360691
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360692
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360732
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360734
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360736
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360738
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360740
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360741
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360742
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360743
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360745
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360746
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360748
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360749
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360750
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),360758
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),370730
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),370733
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),370737
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),370739
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),380026
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),380044
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),380051
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),380066
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),380080
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),380539
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),380541
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),390652
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),400770
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),670566
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),680567
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),690568
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),690569
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),700295
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),710570
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),720571
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),730572
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),740573
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),740980
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),750574
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),760575
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),770576
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),779576
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),790578
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),800579
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),820581
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),850584
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),860585
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),860586
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),860591
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),870586
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),880587
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),884587
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),890588
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),890589
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),890590
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),920543
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),96044040
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),96054045
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),96064050
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),96065050
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),96074055
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),96094065
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),96114075
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),96124080
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),96144090
go
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),130645
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),320529
go
go

  /*
select '
INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])
select 
	dbo.descriptor(''%AddressTypeDescriptor%'','''+ (select CodeValue from edfi.Descriptor where DescriptorId=AddressTypeDescriptorId) + '''),' + 
	convert(varchar(20),EducationOrganizationId) + ', ''' + [StreetNumberName] + ''',''' + [City]+ ''',' + 
	'dbo.descriptor(''%StateAbbreviationDescriptor%'','''+ (select CodeValue from edfi.Descriptor where DescriptorId=StateAbbreviationDescriptorId) + '''),''' + 
	isnull([PostalCode],'')+ ''',''' + isnull([NameOfCounty],'') + ''',' +  convert(varchar(20),[DoNotPublishIndicator])
from edfi.EducationOrganizationAddress
*/
go
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),10, '7 Front Street','Wyoming',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19934','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),12, ' ','',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'','',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),13, '198 Commerce Way','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199043498','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),15, '5423 Killens Pond Road','Felton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199439801','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),16, '1160 South Central Avenue','Laurel',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199561413','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),17, '820 Savannah Road','Lewes',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199581798','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),18, '906 Lakeview Avenue','Milford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199631799','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),23, '390 North Market Street Extended','Seaford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199732612','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),24, '82 Monrovia Avenue','Smyrna',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19977','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),29, 'Tony Marchio Building','Odessa',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197304010','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),31, '1311 Brandywine Boulevard','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19809','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),32, '1502 Spruce Avenue','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19805','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),33, 'Drew Educational Support Building','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198014499','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),34, '318 East Basin Road','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197204214','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),35, '16359 Sussex Highway','Bridgeville',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19933','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),36, '31 Hosier Street','Selbyville',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19975','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),37, '200 North Eighth Street','Delmar',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199401399','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),38, '1417 Newport Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198043499','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),39, 'PO Box 22','Woodside',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199800022','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),40, 'PO Box 351','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199470351','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),67, '1121 Thatcher Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19802','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),68, '801 North DuPont Highway','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),69, '326 Ruthar Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19711-8017','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),70, '100 North duPont Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198073199','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),71, '3337 South DuPont Highway','Camden',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19934','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),72, '3000 North Claymont Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19802','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),74, '350 Pear Street','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),76, '2200 North Locust Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19802','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),77, '21150 Airport','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19947','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),79, '112 Middleboro Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19804','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),80, '170 Lukens Drive','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),82, '1200 North French Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),85, '104 Saulsbury Road','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),86, '4319 Lancaster Pike','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19805','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),87, ' ','Clayton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199380265','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),88, '1156 Levels Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19709','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),89, '2001 Patriot Way','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19711','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),92, '2501 Centerville Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19808','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),9604, '1570 North DuPont Highway','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19901','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),9605, '4403 Lancaster Pike','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19805','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),9606, '1000  N. French Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),9607, '355 West Duck Creek Road','Clayton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19938','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),9609, '179 Stanton Christiana Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19702','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),9611, '1200 North French St','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),9612, '201 W 14th Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),9614, '3029 Bowlerama Drive','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720','',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100610, '238 Sorghum Mill Road','Camden',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19934','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100611, 'Post Office Box 258','Magnolia',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19962','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100612, '3100 Hawthorne Drive','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199015391','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100615, '5 Old North Road','Camden',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199341247','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100616, '3874 Upper King Road','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100618, '594 Voshells Mill/Star Hill Road','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199016121','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100620, '5 Old North Road','Camden',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199341247','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100621, '2841 South State Street','Camden',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199349627','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100622, '360 Webbs Lane','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199045438','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100625, '109 East Camden-Wyoming Avenue','Camden',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199341250','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100626, '239 Old North Road','Camden',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199341248','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100628, '3100 Hawthorne Drive','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199015391','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100629, ' ','',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'','Kent',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),100630, '278 Sorghum Mill Road','Camden-Wyoming',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19901','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),120501, '3210 Philadelphia Pike','Claymont',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19703','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),120701, '33576 Wilgus Cemetery Road','Frankford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199459667','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),120777, 'PO Box 927','Bridgeville',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19933','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),120791, '11 Parkway Circle','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),120792, '11 Parkway Circle','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),120793, '304 Harrison Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19805','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130632, '852 South Little Creek Road','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199014797','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130634, '955 South State Street','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199014177','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130635, '855 College Road','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199042234','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130636, '901 Forest Street','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199043497','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130638, '700 Walker Road','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199042792','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130640, 'PO Box 25','Hartly',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199530025','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130642, '629 Buckson Drive','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199012599','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130644, '211 Delaware Avenue','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199013895','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130646, '65 Carver Road','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130648, 'One Dover High Drive','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130649, '198 Commerce Way','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130650, '65-1 Carver Road','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130653, 'Unit Count Use Only','',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'','Kent',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130655, '631 Ridgley Street, Suite 19','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),150658, '124 West Front Street','Frederica',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199469703','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),150659, '5423 Killens Pond Road','Felton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19943','Kent',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),150660, '319 East Main Street','Felton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199430296','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),150661, '5423 Killens Pond Road','Felton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19943','Kent',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),150662, '301 Dorman Street','Harrington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199521099','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),150663, '100 West Mispillion Street','Harrington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199521099','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),150664, '101 West Center Street','Harrington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199521098','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),150665, '5407 Killens Pond Road','Felton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199439259','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),150669, '5424 Killens Pond Road','Felton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19943','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),160752, '300 Wilson Street','Laurel',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199561626','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),160753, '499 West Sixth Street','Laurel',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199561363','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),160756, '1133 South Central Avenue','Laurel',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199561491','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),160781, '1133 S Central Avenue','Laurel',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19956','Sussex',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),160782, '1133 S Central Ave','Laurel',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19956','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),160783, '801 South Central Avenue','Laurel',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199561498','Sussex',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),170710, '400 Mulberry Street','Milton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199681628','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),170712, '910 Shields Avenue','Lewes',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199581597','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),170718, '19488 John J. Williams Hwy','Lewes',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19958','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),170720, '16391 Harbeson Rd.','Milton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19968','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),170721, '512 Federal Street','Milton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19968','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),170722, '500 Stockley Street','Rehoboth Beach',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199711899','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),170724, '19483 John J. Williams Highway','Lewes',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19958','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),170726, '1250 Kings Highway','Lewes',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199581798','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),170728, '520 duPont Avenue','Lewes',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199581239','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),180668, '449 North Street','Milford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199631199','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),180670, '8609 Third Street','Lincoln',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199609998','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),180672, '310 Lovers Lane','Milford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199632699','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),180673, '311 Lovers Lane','Milford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199632699','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),180675, '1021 N Walnut Street','Milford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199631298','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),180678, '1019 North Walnut Street','Milford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199631298','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),180679, '906 Lakeview Avenue','Milford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19963','Kent',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),190008, '2900 N. Van Buren Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19711','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),190030, '185 South St.','Camden',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19934','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),190031, '22213 Lewes Georgetown Hwy','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19947','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),230759, '1 Delaware Place','Seaford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199731434','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),230760, '511 Sussex Avenue','Seaford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199732041','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),230761, '900 South Arch Street','Blades',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199734553','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),230762, '1 Swain Road','Seaford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199732827','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),230763, '1 Swain Road','Seaford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19973','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),230764, '500 East Stein Highway','Seaford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199731528','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),230766, '399 North Market Street Ext','Seaford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199732611','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),230768, 'One Delaware Place','Seaford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199731528','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),240680, '510 West Main Street','Clayton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199383400','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),240681, '123  Rabbit Chase Road','Smyrna',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19977','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),240682, '121 South School Lane','Smyrna',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199771399','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),240684, '365 North Main Street','Smyrna',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199771092','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),240685, '700 Duck Creek Parkway','Smyrna',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199771091','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),240686, '20 West Frazier Street','Smyrna',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199771497','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),240687, '82 Monrovia Avenue','Smyrna',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19977','Kent',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),240688, '500 Duck Creek Parkway','Smyrna',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199771091','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),240696, '86 Sorrento Drive','Clayton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19938','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290010, '200 East Cochran Street','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197091496','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290011, '1259 Cedar Lane Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197099636','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290013, '502 South Broad Street','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197091196','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290014, 'PO Box 369','Townsend',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197340369','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290016, '201 New Street','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197091140','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290017, '504 South Broad Street','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197091196','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290018, '120 Silver Lake Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197091494','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290020, '200 Brennan Boulevard','Bear',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19701','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290021, '378 Brick Mill Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19709','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290022, '1221 Cedar Lane Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19709','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290023, '1235 Cedar Lane Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19709','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290024, '1080 Bunker Hill Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19709','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290027, '10 Brook Ramble Lane','Townsend',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19734','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290028, '1070 Bunker Hill Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19709','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290029, '611 Campus Drive','Townsend',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19734','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290032, 'PO Box 4010','Odessa',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197304010','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290505, '118 South Sixth Street','Odessa',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197304010','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290507, '118 South Sixth Street','Odessa',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197304010','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),290508, '313 S. Fifth St ','Odessa',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197304010','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310108, '3301 Green St','Claymont',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19703','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310110, '2523 Berwyn Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19810','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310112, '503 Crest Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198034321','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310124, '1900 Westminster Drive','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198103998','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310128, '2000 Naamans Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198102697','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310130, '412 Foulk Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198033880','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310132, '100 Maple Lane','Claymont',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197032479','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310150, '500 Darley Road','Claymont',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19703','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310151, '3401 Green Street','Claymont',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19703','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310156, '3601 Jefferson Street ','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19802    ','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310170, '701 West 34th Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198022699','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310176, '500 Duncan Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198092359','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310178, '2220 Shipley Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198032398','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310180, '1110 Cypress Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198101999','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310190, '1400 Foulk Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198032794','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310194, '2501 Ebright Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198101198','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310196, '5201 Washington Street Extension','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198092198','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),310510, '2523 Berwyn Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19810','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320203, '801 West 18th Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19802','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320240, '55 South Meadowood Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197116756','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320242, '2815 Highlands Lane','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198083634','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320244, '2100 Gilpin Avenue','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198062298','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320246, '920 North Van Buren Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198064540','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320248, '100 West 18th Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198024836','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320250, '3415 Skyline Drive','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198081701','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320252, '1500 Spruce Avenue','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19805','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320254, '16 Idella Avenue','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19804','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320256, '2101 Centerville Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198084799','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320260, '105 East Highland Avenue','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198042700','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320261, '2916 Duncan Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19808','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320264, '2110 Edwards Avenue','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198083195','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320266, '801 West 18th Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198023890','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320270, '1340 Little Baltimore Road','Hockessin',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19707','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320271, '2025 Graves Road','Hockessin',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19707','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320274, '3130 Kennett Pike','Greenville',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198073099','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320276, '735 Meeting House Road','Hockessin',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197079245','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320280, '2900 Skyline Drive','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198082800','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320282, '1800 Limestone Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198044196','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320284, '201 Jackson Avenue','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198042199','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320286, '100 North duPont Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198073199','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320290, '1801 Milltown Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198084099','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320292, '50 Hillside Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198072297','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320294, '301 McKennan''s Church Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198081398','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320516, '55A South Meadowood Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197116756','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320526, '99 Middleboro Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198041600','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320527, '1621 Telegraph Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198044198','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320530, '501 West 14th Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19899','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330310, '800 Marrows Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197131511','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330312, '101 Barrett Run Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197022949','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330314, '35 West Main Street','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197021599','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330318, '220 Casho Mill Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197112699','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330320, '800 North Brownleaf Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197133300','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330321, '200 LaGrange Avenue','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19702','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330322, '1015 Church Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19702','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330324, '300 St. Regis Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197113800','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330326, '908 Janice Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197134099','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330327, '500 South Caledonia Way','Bear',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19701','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330330, '142 Brennen Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197133998','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330332, '193 West Park Place','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197114520','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330334, '14 Forge Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197117699','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330339, '350 Four Seasons Parkway','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197022326','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330350, '700 North Lombard Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198014299','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330351, '700 North Lombard Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330352, '200 South duPont Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198053975','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330354, '501 North Lombard Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198014499','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330356, '1210 Lobdell Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198015404','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330358, '1300 Cedar Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198054396','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330362, '1100 North Pine Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198014099','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330372, '50 Gender Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197132797','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330374, '140 Brennen Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197133999','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330376, '1500 Capitol Trail','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197115716','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330390, '190 Salem Church Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197132998','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330392, '1901 South College Avenue','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197022395','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330394, '750 East Delaware Avenue','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197117188','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330512, '620 E. Chestnut Hill Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19713','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330534, '30 Blue Hen Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19713','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330535, '300 St. Regis Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197113800','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330537, '1800 Prospect Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198054120','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330538, '144 Brennen Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197133998','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330540, '630 East Chestnut Hill Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197131814','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330544, '630 East Chestnut Hill Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197131814','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),330545, '620 East Chestnut Hill Rd','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197131814','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340410, '1201 Delaware Street','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720-6098','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340412, '502 Moores Lane','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197203499','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340418, '16 Pleasant Street','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197203005','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340420, '200 East Roosevelt Avenue','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197203399','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340422, '4050 Wrangle Hill Road','Bear',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19701','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340427, '795 Cox Neck Road','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197205704','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340432, '903 Delaware Street','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197206097','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340450, '12 Landers Lane','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197202095','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340456, '27 Landers Lane','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720-2093','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340470, '801 Cox Neck Road','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197205705','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340474, '314 East Basin Road','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197204298','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340476, '20 Chase Avenue','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197201299','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340490, '713 East Basin Road','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197204295','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340514, '10 Landers Lane','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720-2094','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340515, 'Unit Count Use Only','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197202094','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340522, '701 East Basin Road','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),340523, '795 Cox Neck Road','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197205704','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),350775, '307 Laws Street','Bridgeville',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199331034','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),350776, 'PO Box 2007','Greenwood',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199502007','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),350779, '48 Church Street','Bridgeville',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19933','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),350780, '14712 Woodbridge Road','Greenwood',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19950','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360689, '30207 Frankford School Road','Frankford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19945','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360690, '26064 School Lane','Millsboro',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199661199','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360691, '301A West Market Street','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19947','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360692, '664 North Bedford Street','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199472162','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360732, '252 Clayton Ave','Frankford',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19945','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360734, '301-A West Market Street','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199472398','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360736, '120 Atlantic Avenue','Ocean View',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199700021','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360738, '29346 Iron Branch Road','Millsboro',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199661199','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360740, '41 Bethany Road','Selbyville',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199759601','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360741, '302 East State Street','Millsboro',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199660668','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360742, '80 Bethany Rd.','Selbyville',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199750230','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360743, '301 West Market Street','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199472399','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360745, '31 Hosier Street','Selbyville',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19975','Sussex',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360746, '29772 Armory Road','Dagsboro',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199459522','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360748, '26026 Patriots Way','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199472399','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360749, '27 Hosier Street','Selbyville',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19975','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360750, '20346 Ennis Road','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199479666','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),360758, '12484 Godwin School Rd','Millsboro',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19966','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),370730, '200 North Eighth Street','Delmar',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199401399','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),370733, '200 North Eighth Street','Delmar',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199401399','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),370737, '200 North Eighth Street','Delmar',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19940','Sussex',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),370739, '200 North Eighth Street','Delmar',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19940','Sussex',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),380026, '401 East 12th Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198013400','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),380044, '555 Hyetts Corner Rd.','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19709','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),380051, 'NCC VT School District','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19804','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),380066, '2575 Glasgow Avenue','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'197024756','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),380080, '1417 Newport Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198043499','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),380539, '1417 Newport Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19804','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),380541, 'Unit Count use only','',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'','New Castle',0
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),390652, 'PO Box 97','Woodside',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199800097','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),400770, '17099 County Seat Highway','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'199470351','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),670566, '1121 Thatcher Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19802','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),680567, '801 North DuPont Highway','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),690568, '326 Ruthar Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19711','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),690569, '326 Ruthar Drive','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19711','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),700295, '100 North duPont Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198073199','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),710570, '3337 South DuPont Highway','Camden',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19934','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),720571, '3000 North Claymont Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19802','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),730572, '170 Lukens Drive','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),740573, '350 Pear Street','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),740980, '350 Pear Street','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),750574, '610 East 17th Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19802','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),760575, '2200 North Locust Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19802','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),770576, '21150 Airport Road','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19947','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),779576, '21150 Airport Road','Georgetown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19947','Sussex',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),790578, '112 Middleboro Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19804','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),800579, '170 Lukens Drive','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),820581, '1200 North French Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),850584, '104 Saulsbury Road','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),860585, '4319 Lancaster Pike','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19805','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),860586, '4319 Lancaster Pike','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19805','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),860591, '4319 Lancaster Pike','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19805','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),870586, '273 West Duck Creek Road','Clayton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19938','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),880587, '1156 Levels Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19709','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),884587, '1156 Levels Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19709','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),890588, '2001 Patriot Way','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19711','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),890589, '2001 Patriot Way','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19711','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),890590, '2001 Patriot Way','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19711','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),920543, '2501 Centerville Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19808','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),96044040, '1570 North DuPont Highway','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19901','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),96054045, '4403 Lancaster Pike','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19805','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),96064050, '1000 North French Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),96065050, '1000 North French Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),96074055, '355 West Duck Creek Road','Clayton',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19938','Kent',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),96094065, '179 Stanton Christiana Road','Newark',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19702','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),96114075, '1200 North French St','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),96124080, '201 West 14th Street','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),96144090, '3029 Bowlerama Drive','New Castle',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19720','Kent',1
  go
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),320529, '1621 Telegraph Road','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'198044198','NCC',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),130645, '198 Commerce Way','Dover',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19904','Kent',1
go

/*
select '
insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)
select ' +
	convert(nvarchar(20),EducationOrganizationId) + ',' + 
	'dbo.descriptor(''%InstitutionTelephoneNumberTypeDescriptor%'','''+ (select CodeValue from edfi.Descriptor where DescriptorId=InstitutionTelephoneNumberTypeDescriptorId) + '''),' + 
	TelephoneNumber
from edfi.EducationOrganizationInstitutionTelephone where isnull(TelephoneNumber,'')<>''
go
*/
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 10,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026973406
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 13,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721714
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 15,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022844491
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 16,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028756106
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 17,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026456684
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 18,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024221608
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 23,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026292619
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 24,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026533149
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 29,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785016
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 31,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027651995
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 32,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029927820
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 33,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024293944
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 34,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023232748
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 35,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023377998
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 36,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024361034
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 37,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028462793
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 38,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029958038
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 39,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026976749
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 40,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028567078
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 67,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027624782
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 68,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023224029
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 69,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022921291
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 70,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026521246
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 71,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026978813
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 72,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027623864
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 74,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027365330
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 76,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027782232
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 77,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028563376
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 79,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029983521
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 80,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023248908
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 82,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024726452
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 85,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026743894
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 86,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),8887805962
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 87,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026535238
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 88,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023765120
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 89,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023683460
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 92,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026335680
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9604,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027394654
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9605,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026604761
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9606,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027394654
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9607,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022232178
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9609,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022925457
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9612,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023807595
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100610,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026974056
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100611,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023353705
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100612,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026740682
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100615,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026974962
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100616,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026974029
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100618,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026974983
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100620,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026974963
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100621,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3926988419
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100622,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026974973
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100625,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026988409
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100626,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026976888
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100628,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027304283
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100630,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026974998
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 120777,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023373361
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 120701,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024369087
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130632,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721663
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130634,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721697
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130635,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721985
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130636,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721902
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130638,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721654
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130640,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024921883
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130642,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721595
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130644,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721733
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130646,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721633
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130648,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721565
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130649,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721516
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130650,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721967
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130655,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027365263
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150658,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023355273
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150659,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022844491
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150660,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022845820
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150662,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023988492
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150663,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023988983
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150664,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023988375
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150665,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022845833
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150669,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022845819
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160752,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028756133
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160753,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028756143
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160756,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028756123
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160781,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028756106
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160782,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028756148
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160783,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028756148
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170710,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026842043
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170712,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026447924
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170720,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026845606
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170721,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026848565
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170722,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022275178
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170724,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026446118
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170726,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026451356
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170728,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026455439
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180668,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024245487
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180670,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024245447
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180672,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024245453
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180673,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024223469
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180678,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024245463
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180675,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024226959
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230759,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026284380
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230760,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026284487
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230761,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026284480
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230762,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026284486
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230764,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026284485
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230766,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026284411
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230768,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026292619
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240680,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026533421
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240681,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026535402
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240682,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026533411
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240684,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026533146
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240685,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026533424
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240686,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026596299
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240688,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026533139
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240696,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026533271
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290010,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785092
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290011,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785091
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290013,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785696
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290014,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785088
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290016,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785080
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290017,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785008
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290018,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785268
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290020,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028323213
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290021,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785299
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290022,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024495877
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290024,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785130
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290027,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785128
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290028,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785139
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290032,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785016
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290505,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785016
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290507,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785016
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290508,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023785016
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310108,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027627042
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310110,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024792216
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310112,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027627106
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310124,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3025293092
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310128,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024753999
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310130,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027627108
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310132,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027923941
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310150,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027923814
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310151,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027923877
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310156,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027627117
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310170,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027627196
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310176,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027627040
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310178,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024791628
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310180,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024753998
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310190,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024791604
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310194,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3025293094
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310196,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027627042
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310510,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024791644
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320203,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3025523700
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320240,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543423
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320242,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543427
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320244,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024254599
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320246,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026512759
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320248,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024253385
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320250,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543549
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320252,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029925518
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320254,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028923255
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320256,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028923253
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320260,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028923242
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320261,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026365683
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320264,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028923251
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320266,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026512661
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320270,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022347212
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320271,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029927822
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320274,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024254585
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320276,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022393450
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320280,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543541
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320282,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029925586
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320284,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029925585
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320286,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024254594
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320290,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029925506
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320292,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026512757
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320294,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029925525
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320526,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029955125
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320516,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543403
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330310,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543480
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330312,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024544701
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330314,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543481
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330318,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543483
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330320,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543484
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330321,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024545969
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330322,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024542109
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330324,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543485
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330326,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543486
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330327,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028345916
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330330,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543487
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330332,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543488
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330334,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024542052
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330339,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024545459
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330350,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024293956
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330351,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024293956
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330352,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024294153
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330354,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024293959
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330356,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024293957
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330358,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024293955
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330362,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024293958
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330372,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543482
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330374,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543491
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330376,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543492
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330390,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543490
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330392,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024545453
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330394,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024542155
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330512,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024542298
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330537,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024294920
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330538,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024545427
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330540,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543493
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330544,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024543493
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330545,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024542720
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340410,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023232929
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340412,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023232921
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340418,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023232943
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340420,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023232908
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340422,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028326335
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340427,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028326305
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340432,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023232897
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340450,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024294097
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340456,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024294081
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340470,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028346729
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340474,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023232763
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340476,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024294005
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340490,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023232955
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340514,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024294057
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340515,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024294057
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340522,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023232787
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340523,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028326305
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 350775,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023370631
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 350776,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023491413
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 350779,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023376016
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 350780,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023490237
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360689,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027323790
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360690,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029456203
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360691,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028552149
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360692,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028552439
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360732,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027323811
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360734,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028552479
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360736,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3025372708
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360738,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029343227
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360740,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024361053
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360741,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029343215
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360742,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024361035
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360743,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028561915
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360746,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027321514
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360748,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029343234
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360749,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024361068
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360750,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028561931
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360758,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029343234
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 370730,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028465056
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 370733,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028465056
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 370737,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028465056
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 370739,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028465056
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 380026,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3025715843
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 380044,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023766796
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 380066,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028340598
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 380080,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029958197
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 390652,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026974536
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 400770,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028561760
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 670566,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027624782
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 680567,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023224029
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 690568,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022921291
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 700295,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026521246
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 710570,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026978813
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 720571,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027623864
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 730572,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026543724
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 740573,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027365330
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 750574,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024289506
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 760575,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3027782232
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 770576,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028563376
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 790578,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3029983521
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 800579,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023248908
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 820581,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3024726452
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 850584,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026743894
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 860585,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),8887805962
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 870586,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026535238
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 880587,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023765120
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 890588,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3023683460
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 920543,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026335680
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96044040,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028574456
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96054045,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022337376
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96074055,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022232178
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96094065,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3022925457
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96144090,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3028574456
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96094065,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022925450
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96114075,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023326110
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96124080,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024074800
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96074055,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022232150
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96054045,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023518200
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96064050,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3025761500
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 96044040,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026783247
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 920543,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026334091
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 890588,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023692001
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 880587,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023765125
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 870586,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026536276
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 860585,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3025168000
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 850584,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026740684
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 820581,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024726450
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 800579,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023248901
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 790578,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029980745
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 770576,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028563636
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 760575,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027781101
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 750574,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024289501
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 740573,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027360403
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 730572,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026543720
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 720571,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027625834
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 710570,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026978805
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 700295,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512727
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 690568,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022921463
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 680567,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023226050
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 670566,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027623240
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 400770,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028560961
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 390652,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026973255
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 380080,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029958100
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 380539,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),9958000
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 380066,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028340990
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 380044,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024493360
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 380051,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029958000
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 380026,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3025715400
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 370739,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028469544
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 370737,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028469544
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 370733,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028469544
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 370730,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028469544
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360758,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029343216
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360750,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028561930
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360749,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024361066
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360748,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029343166
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360746,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027321500
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360743,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028561900
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360745,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024361000
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360742,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024361020
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360741,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029343200
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360740,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024361040
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360738,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029343222
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360736,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3025372700
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360734,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028561940
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360732,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027323808
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360692,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028552430
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360691,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028561946
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360690,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029456200
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 360689,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027323800
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 350780,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022323333
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 350779,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023373469
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 350776,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023494010
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 350775,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023378289
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340523,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028326300
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340522,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023232952
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340515,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294055
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340514,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294055
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340490,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023232800
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340476,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294000
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340474,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023232760
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340470,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028326280
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340456,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294074
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340450,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294085
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340432,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023232880
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340427,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028326300
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340422,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028326330
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340420,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023232901
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340418,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023232935
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340412,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023232915
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 340410,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023232926
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330545,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542720
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330544,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542301
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330540,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542301
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330538,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542202
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330537,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294146
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330512,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542720
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330534,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542233
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330535,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542142
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330394,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026314700
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330392,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026315600
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330390,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026312400
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330376,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542171
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330374,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024517021
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330372,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542358
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330362,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294175
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330358,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294136
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330356,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294188
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330354,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294158
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330352,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294118
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330351,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294102
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330350,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024294102
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330339,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024545959
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330334,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542180
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330332,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542290
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330330,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542174
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330327,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028345910
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330326,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542145
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330324,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542142
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330322,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542103
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330321,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542018
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330320,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542464
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330318,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542133
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330314,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024542131
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330312,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024544700
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 330310,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024545454
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320516,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024543400
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320526,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029925574
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320527,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512709
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320530,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023205848
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320294,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029925520
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320292,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512626
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320290,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029925500
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320286,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512700
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320284,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029925545
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320282,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029925540
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320280,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024543410
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320276,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022393420
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320274,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512690
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320271,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3025523789
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320270,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022347200
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320266,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512740
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320264,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029925565
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320261,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026365681
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320260,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029925535
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320256,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029925555
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320254,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029925570
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320252,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029925560
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320250,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024543406
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320248,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512710
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320246,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512695
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320244,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512715
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320242,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024543424
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320240,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024543420
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320203,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3025523700
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310510,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024791617
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310196,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027627125
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310194,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024753951
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310190,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024791600
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310180,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024753976
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310178,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024791621
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310176,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027627120
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310170,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027627146
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310156,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027627156
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310151,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027923880
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310150,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027923920
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310132,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027923906
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310130,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027627190
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310128,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024753990
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310124,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024753956
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310112,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027627165
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310110,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024792220
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 310108,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027922757
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290508,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023785010
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290507,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023785010
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290505,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023764128
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290032,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023764128
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290028,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023785135
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290029,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023764128
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290027,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023789960
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290024,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024493840
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290022,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024495873
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290023,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024493490
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290021,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023785288
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290020,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028321343
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290018,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023764141
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290017,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023785001
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290016,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023785030
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290014,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023785020
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290013,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023764400
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290011,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023785045
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 290010,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023785023
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240696,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026534512
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240688,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026538581
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240686,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026596297
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240687,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026538585
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240685,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026538584
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240684,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026538589
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240682,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026538588
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240681,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026538580
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 240680,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026538587
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230768,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026294587
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230766,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026294587
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230764,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026294587
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230762,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026284587
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230763,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026294587
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230761,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026294587
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230760,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026284587
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 230759,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026294587
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180675,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024307900
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180678,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024221610
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180679,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024221600
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 190008,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026523445
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 190030,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026970356
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 190031,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028567331
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180673,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024245800
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180672,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024221640
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180670,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024221650
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 180668,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024221630
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170728,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026457210
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170726,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026457711
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170724,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026456288
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170722,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022272571
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170721,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026842516
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170720,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026848516
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170712,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026457748
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170718,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027033456
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 170710,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026848522
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160783,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028756110
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160782,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028756110
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160781,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028756105
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160756,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028756120
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160753,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028756140
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 160752,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028756130
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150669,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022845810
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150665,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022849291
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150664,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023988197
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150663,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023988945
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150662,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023988011
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150660,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022849611
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150659,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022843020
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 150658,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023355261
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130655,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027365355
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130650,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721960
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130649,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028574214
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130648,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022412400
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130646,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721622
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130644,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721772
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130642,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721590
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130640,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024921870
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130638,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721645
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130636,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721900
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130635,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721980
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130634,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721690
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130632,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721655
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 120701,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024369085
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 120777,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023377501
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 120791,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023226446
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 120792,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023226446
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 120793,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023226446
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100630,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026973103
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 120501,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024728038
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100628,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026743284
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100626,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026972161
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100625,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026988400
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100622,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026972101
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100621,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026988410
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100620,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026973207
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100618,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026976117
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100616,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026973205
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100615,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026973504
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100612,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026749080
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100611,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023355039
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 100610,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026973279
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9612,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024074800
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9609,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022925450
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9611,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023326110
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9607,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022232150
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9606,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3025761500
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9605,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023518200
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 9604,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026783247
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 92,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026334091
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 89,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023692001
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 88,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023765125
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 87,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026536276
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 86,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3025168000
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 85,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026740684
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 82,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023326110
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 80,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023248901
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 79,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029980745
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 77,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028563636
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 76,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027781101
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 74,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027360403
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 72,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027625834
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 71,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026978805
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 70,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512727
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 69,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022921463
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 68,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023226050
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 67,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027623240
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 40,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028562541
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 39,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026972170
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 38,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3029958000
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 37,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028469544
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 36,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024361000
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 35,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023377990
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 34,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023232700
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 33,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3025522600
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 32,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3025523700
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 31,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3027935000
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 29,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3023764128
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 24,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026538585
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 23,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026294587
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 18,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3024221600
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 17,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026456686
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 16,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3028756100
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 15,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3022843020
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 13,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721500
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 10,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026984800
  
  go
  insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 320529,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026512709

    insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130645,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Main'),3026721500

	 insert into edfi.EducationOrganizationInstitutionTelephone (EducationOrganizationId,InstitutionTelephoneNumberTypeDescriptorId,TelephoneNumber)  select 130645,dbo.descriptor('%InstitutionTelephoneNumberTypeDescriptor%','Fax'),3026721500

go
  /*
select '
INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)
	select ' + convert(varchar(10), LocalEducationAgencyId) + ',' + 
	'dbo.descriptor(''%LocalEducationAgencyCategoryDescriptor%'','''+ (select CodeValue from edfi.Descriptor where DescriptorId=LocalEducationAgencyCategoryDescriptorId) + ''')' 
from edfi.LocalEducationAgency
*/
go
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 67,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 68,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 69,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 70,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 71,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 72,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 74,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 76,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 77,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 79,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 80,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 82,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 85,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 86,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 87,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 88,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 89,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 92,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 9604,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 9605,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 9606,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 9607,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 9609,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 9611,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 9612,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 9614,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','Charter')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 10,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 12,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 13,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 15,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 16,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 17,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 18,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 23,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 24,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 29,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 31,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 32,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 33,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 34,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 35,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 36,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 37,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 38,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 39,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')
  INSERT INTO edfi.LocalEducationAgency (LocalEducationAgencyId, LocalEducationAgencyCategoryDescriptorId)   select 40,dbo.descriptor('%LocalEducationAgencyCategoryDescriptor%','District')

  go

/*
select '
INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])
	select ' + convert(varchar(20),[SchoolId]) + ',' + 
	'dbo.descriptor(''%SchoolTypeDescriptor%'','''+ (select CodeValue from edfi.Descriptor where DescriptorId=SchoolTypeDescriptorId) + '''), ' +
	'dbo.descriptor(''%CharterStatusDescriptor%'',''' + (select CodeValue from edfi.Descriptor where DescriptorId=CharterStatusDescriptorId) + '''),' +
	convert(varchar(20),[LocalEducationAgencyId])
from [edfi].[School]
*/
go

  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100610,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100611,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100612,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100615,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100616,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100618,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100620,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100621,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100622,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100625,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100626,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100628,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100629,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 100630,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),10
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130632,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130634,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130635,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130636,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130638,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130640,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130642,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130644,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130646,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130648,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130649,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130650,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130653,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130655,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130656,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),13
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 150658,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),15
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 150659,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),15
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 150660,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),15
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 150661,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),15
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 150662,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),15
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 150663,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),15
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 150664,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),15
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 150665,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),15
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 150669,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),15
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 160752,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),16
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 160753,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),16
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 160756,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),16
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 160781,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),16
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 160782,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),16
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 160783,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),16
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 170710,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),17
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 170712,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),17
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 170718,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),17
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 170720,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),17
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 170721,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),17
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 170722,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),17
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 170724,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),17
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 170726,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),17
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 170728,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),17
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 180668,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),18
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 180670,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),18
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 180672,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),18
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 180673,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),18
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 180675,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),18
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 180678,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),18
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 180679,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),18
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 230759,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),23
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 230760,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),23
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 230761,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),23
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 230762,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),23
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 230763,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),23
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 230764,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),23
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 230766,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),23
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 230768,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),23
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 240680,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),24
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 240681,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),24
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 240682,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),24
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 240684,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),24
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 240685,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),24
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 240686,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),24
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 240687,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),24
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 240688,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),24
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 240696,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),24
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290010,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290011,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290013,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290014,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290016,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290017,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290018,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290020,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290021,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290022,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290023,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290024,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290027,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290028,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290029,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290032,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290505,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290507,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 290508,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),29
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310108,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310110,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310112,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310124,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310128,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310130,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310132,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310150,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310151,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310156,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310170,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310176,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310178,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310180,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310190,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310194,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310196,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 310510,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),31
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320203,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320240,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320242,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320244,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320246,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320248,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320250,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320252,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320254,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320256,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320260,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320261,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320264,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320266,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320270,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320271,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320274,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320276,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320280,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320282,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320284,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320286,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320290,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320292,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320294,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320516,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320526,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320530,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330310,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330312,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330314,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330318,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330320,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330321,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330322,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330324,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330326,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330327,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330330,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330332,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330334,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330339,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330350,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330351,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330352,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330354,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330356,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330358,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330362,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330372,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330374,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330376,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330390,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330392,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330394,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330512,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330534,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330535,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330537,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330538,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330540,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330544,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 330545,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),33
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340410,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340412,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340418,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340420,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340422,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340427,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340432,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340450,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340456,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340470,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340474,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340476,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340490,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340514,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340515,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340522,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 340523,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),34
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 350775,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),35
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 350776,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),35
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 350779,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),35
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 350780,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),35
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360689,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360690,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360691,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360692,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360732,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360734,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360736,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360738,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360740,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360741,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360742,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360743,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360745,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360746,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360748,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360749,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360750,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 360758,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),36
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 370730,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),37
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 370733,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),37
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 370737,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),37
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 370739,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),37
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 380026,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),38
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 380044,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),38
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 380051,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),38
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 380066,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),38
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 380080,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),38
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 380539,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),38
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 380541,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),38
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 390652,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),39
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 400770,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),40
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 680567,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),68
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 690568,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),69
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 690569,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),69
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 700295,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),70
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 710570,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),71
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 720571,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),72
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 740573,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),74
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 740980,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),74
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 760575,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),76
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 770576,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),77
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 779576,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),77
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 790578,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),79
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 800579,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),80
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 820581,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),82
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 850584,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),85
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 860585,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),86
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 860586,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),86
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 860591,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),86
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 870586,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),87
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 880587,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),88
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 884587,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),88
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 890588,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),89
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 890589,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),89
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 890590,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),89
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 920543,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),92
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 96044040,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),9604
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 96054045,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),9605
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 96064050,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),9606
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 96065050,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),9606
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 96074055,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),9607
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 96094065,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),9609
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 96114075,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),9611
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 96124080,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),9612
  go
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 320529,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),32

  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 130645,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','Not a Charter School'),13
go
  -- insert into extension.SchoolExtension (SchoolId) select SchoolId from edfi.School
go


/*
select '
insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)
	select ' + 
	'dbo.descriptor(''%GradeLevelDescriptor%'','''+ (select CodeValue from edfi.Descriptor where DescriptorId=GradeLevelDescriptorId) + '''), ' +
	convert(nvarchar(20), SchoolId)
from edfi.SchoolGradeLevel
*/
go
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 100610
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 100612
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 100615
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 100616
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 100618
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 100620
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 100622
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 130632
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 130634
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 130635
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 130636
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 130638
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 130640
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 130642
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 150658
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 150660
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 150662
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 160753
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 160783
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 170710
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 170712
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 170718
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 170721
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 170722
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 180668
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 180673
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 230760
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 240680
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 240681
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 240682
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 240684
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 290010
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 290011
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 290014
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 290020
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 290021
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 290028
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 290032
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 310110
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 310112
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 310124
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 310128
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 310130
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 310132
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 310151
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 310156
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 310176
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320203
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320240
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320242
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320244
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320246
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320248
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320250
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320252
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320254
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320256
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320260
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320261
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320264
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320266
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320270
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320271
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320526
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330310
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330312
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330314
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330318
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330320
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330321
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330322
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330324
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330326
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330327
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330330
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330332
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330334
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330339
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330350
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330356
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330358
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330362
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330544
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340410
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340412
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340418
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340420
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340422
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340427
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340432
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340450
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340456
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 350776
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360690
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360692
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360732
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360734
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360736
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360738
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360740
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360749
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 690568
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 720571
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 740573
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 760575
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 800579
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 820581
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 850584
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 870586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 890590
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 96054045
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','01'), 96064050
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 100610
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 100612
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 100615
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 100616
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 100618
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 100620
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 100622
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 130632
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 130634
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 130635
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 130636
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 130638
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 130640
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 130642
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 150658
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 150660
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 150662
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 160752
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 160783
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 170710
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 170712
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 170718
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 170721
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 170722
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 180668
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 180672
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 180673
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 230760
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 230761
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 240680
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 240681
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 240682
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 240684
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 290010
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 290011
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 290014
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 290020
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 290021
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 290028
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 290032
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 310110
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 310112
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 310124
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 310128
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 310130
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 310132
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 310151
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 310156
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 310176
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320203
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320240
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320242
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320244
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320246
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320248
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320250
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320252
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320254
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320256
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320260
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320261
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320264
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320266
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320270
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320271
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320526
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330310
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330312
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330314
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330318
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330320
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330321
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330322
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330324
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330326
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330327
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330330
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330332
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330334
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330339
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330350
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330356
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330358
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330362
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330544
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340410
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340412
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340418
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340420
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340422
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340427
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340432
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340450
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340456
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 350776
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360690
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360692
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360732
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360734
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360736
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360738
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360740
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360749
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 690568
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 720571
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 740573
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 760575
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 800579
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 820581
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 850584
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 870586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 890590
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 96054045
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','02'), 96064050
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 100610
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 100612
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 100615
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 100616
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 100618
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 100620
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 100622
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 130632
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 130634
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 130635
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 130636
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 130638
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 130640
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 130642
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 150658
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 150660
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 150662
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 160752
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 160783
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 170710
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 170712
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 170718
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 170721
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 170722
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 180668
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 180672
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 180673
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 230759
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 230762
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 240680
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 240681
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 240682
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 240684
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 290010
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 290011
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 290014
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 290020
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 290021
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 290028
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 290032
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 310110
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 310112
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 310124
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 310128
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 310130
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 310132
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 310151
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 310156
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 310176
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320203
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320240
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320242
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320244
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320246
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320248
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320250
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320252
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320254
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320256
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320260
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320261
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320264
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320266
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320270
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320271
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320526
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330310
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330312
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330314
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330318
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330320
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330321
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330322
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330324
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330326
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330327
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330330
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330332
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330334
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330339
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330350
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330356
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330358
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330362
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330544
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340410
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340412
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340418
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340420
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340422
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340427
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340432
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340450
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340456
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 350779
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360690
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360692
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360732
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360734
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360736
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360738
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360740
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360749
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 690568
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 720571
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 740573
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 760575
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 800579
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 820581
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 850584
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 860586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 870586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 890590
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 920543
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 96054045
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','03'), 96064050
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 100610
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 100612
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 100615
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 100616
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 100618
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 100620
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 100622
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 130632
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 130634
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 130635
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 130636
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 130638
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 130640
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 130642
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 150658
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 150660
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 150662
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 150669
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 160752
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 160783
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 170710
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 170712
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 170718
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 170721
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 170722
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 170724
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 180668
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 180672
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 180673
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 230759
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 230762
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 240680
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 240681
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 240682
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 240684
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 290010
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 290011
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 290014
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 290020
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 290021
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 290028
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 290032
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 310110
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 310112
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 310124
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 310128
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 310130
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 310132
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 310151
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 310156
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 310176
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320203
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320240
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320242
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320244
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320246
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320248
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320250
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320252
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320254
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320256
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320260
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320261
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320264
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320266
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320270
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320271
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320526
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330310
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330312
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330314
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330318
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330320
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330321
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330322
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330324
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330326
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330327
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330330
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330332
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330334
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330339
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330350
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330356
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330358
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330362
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330544
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340410
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340412
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340418
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340420
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340422
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340427
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340432
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340450
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340456
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 350779
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360690
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360692
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360732
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360734
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360736
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360738
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360740
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360749
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 690568
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 720571
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 740573
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 760575
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 800579
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 820581
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 850584
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 860586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 870586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 890589
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 890590
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 920543
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 96054045
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','04'), 96064050
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 100610
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 100612
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 100615
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 100616
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 100618
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 100620
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 100622
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 130646
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 150669
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 160782
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 160783
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 170710
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 170712
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 170718
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 170720
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 170721
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 170722
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 170724
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 180668
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 180672
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 180673
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 230759
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 230762
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 240684
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 240686
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 240696
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 290010
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 290011
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 290014
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 290020
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 290021
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 290028
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 290032
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 310110
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 310112
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 310124
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 310128
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 310130
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 310132
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 310151
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 310156
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 310176
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320203
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320240
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320242
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320244
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320246
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320248
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320250
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320252
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320254
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320256
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320260
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320261
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320264
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320266
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320270
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320271
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320526
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330310
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330312
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330314
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330318
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330320
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330321
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330322
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330324
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330326
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330327
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330330
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330332
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330334
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330339
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330350
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330356
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330358
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330362
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330544
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340410
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340412
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340418
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340420
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340422
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340427
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340432
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340450
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340456
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 350779
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360690
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360692
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360732
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360734
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360736
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360738
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360740
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360749
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 370733
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 690568
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 720571
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 740573
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 760575
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 800579
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 820581
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 850584
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 860586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 870586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 890589
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 920543
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 96054045
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','05'), 96064050
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 100621
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 100625
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 100628
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 130646
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 130655
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 150659
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 150664
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 160782
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 170720
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 170722
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 170724
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 180675
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 230764
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 240684
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 240685
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 240686
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 240696
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 290016
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 290017
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 290023
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 310132
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 310170
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 310178
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 310180
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320203
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320261
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320274
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320276
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320280
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320282
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320284
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320286
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320290
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 330352
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 330372
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 330374
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 330376
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 340470
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 340474
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 340476
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 350775
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 360741
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 360742
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 360743
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 360749
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 370733
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 370739
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 690568
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 720571
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 740573
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 760575
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 770576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 800579
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 820581
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 860586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 870586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 890589
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 920543
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 96114075
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 100621
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 100625
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 100628
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 130644
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 130655
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 150659
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 150664
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 160782
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 170720
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 170724
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 180675
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 230764
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 240685
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 290016
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 290017
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 290023
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 310170
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 310178
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 310180
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320203
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320261
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320274
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320276
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320280
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320282
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320284
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320286
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320290
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 330352
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 330372
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 330374
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 330376
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 340470
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 340474
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 340476
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 350775
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 360741
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 360742
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 360743
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 360749
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 370733
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 370739
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 690568
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 710570
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 720571
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 740573
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 760575
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 770576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 800579
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 860591
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 870586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 920543
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 96065050
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 96114075
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 100621
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 100625
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 100628
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 130644
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 130655
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 150659
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 150664
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 150665
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 160782
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 170720
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 170724
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 170726
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 180675
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 230764
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 240685
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 290016
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 290017
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 290018
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 290023
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 310170
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 310178
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 310180
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320203
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320261
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320274
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320276
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320280
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320282
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320284
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320286
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320290
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320294
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 330352
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 330372
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 330374
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 330376
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 340470
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 340474
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 340476
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 350775
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 360741
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 360742
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 360743
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 360746
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 360749
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 370733
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 370739
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 380026
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 380066
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 380080
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 710570
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 720571
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 740573
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 760575
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 770576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 800579
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 860591
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 870586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 920543
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 96065050
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 96114075
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 96124080
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 100626
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 130648
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 130655
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 150659
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 150665
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 160756
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 160781
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 170726
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 180678
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 230766
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 240688
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 290018
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 290024
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 310190
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 310194
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 310196
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 320284
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 320286
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 320290
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 320292
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 320294
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 330390
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 330392
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 330394
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 340490
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 350780
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 360746
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 360748
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 370730
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 380026
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 380044
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 380066
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 380080
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 390652
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 400770
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 680567
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 700295
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 710570
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 740980
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 770576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 779576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 790578
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 860591
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 884587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 96044040
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 96074055
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 96094065
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 96114075
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 96124080
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 100626
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 130648
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 130655
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 150659
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 150665
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 160756
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 160781
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 170726
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 180678
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 230766
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 240688
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 290018
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 290024
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 310190
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 310194
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 310196
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 320284
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 320286
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 320290
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 320292
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 320294
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 330390
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 330392
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 330394
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 340490
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 350780
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 360746
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 360748
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 370730
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 380026
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 380044
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 380066
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 380080
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 390652
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 400770
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 680567
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 700295
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 710570
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 740980
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 770576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 779576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 790578
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 860591
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 884587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 96044040
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 96074055
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 96094065
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 96114075
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 96124080
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 100626
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 130648
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 130655
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 150659
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 150665
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 160756
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 160781
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 170726
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 180678
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 230766
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 240688
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 290018
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 290024
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 310190
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 310194
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 310196
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 320284
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 320286
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 320290
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 320292
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 320294
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 330390
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 330392
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 330394
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 340490
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 350780
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 360746
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 360748
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 370730
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 380026
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 380044
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 380066
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 380080
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 390652
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 400770
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 680567
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 700295
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 710570
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 740980
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 770576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 779576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 790578
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 860591
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 884587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 96044040
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 96094065
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 100626
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 130648
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 130655
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 150659
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 150665
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 160756
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 160781
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 170726
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 180678
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 230766
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 240688
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 290018
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 290024
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 310190
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 310194
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 310196
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 320284
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 320286
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 320290
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 320292
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 320294
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 330390
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 330392
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 330394
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 340490
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 350780
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 360746
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 360748
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 370730
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 380026
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 380044
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 380066
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 380080
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 390652
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 400770
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 680567
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 700295
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 710570
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 740980
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 770576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 779576
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 790578
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 860591
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 884587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 96044040
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 96094065
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','AE'), 310108
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','AE'), 390652
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','AE'), 400770
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','B3'), 350776
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 130632
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 130638
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 130640
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 150660
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 160753
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 170710
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 170712
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 170721
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 170722
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 180670
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 240684
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 290013
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 290022
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 290027
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 310510
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 320252
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 320264
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 320526
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330310
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330318
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330322
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330324
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330330
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330339
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330350
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330356
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330358
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330544
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 340412
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 340427
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 340450
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 350776
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 360690
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 360692
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 360732
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 360734
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 360736
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 360738
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 360740
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','BK'), 720571
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 130632
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 130634
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 170712
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 180670
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 240684
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 290013
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 290029
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 340450
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 360732
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 360736
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 360738
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EC'), 360740
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EP'), 130632
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EP'), 130634
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','EP'), 130636
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KA'), 890590
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KG'), 230760
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KG'), 230761
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KG'), 360749
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KG'), 860585
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KG'), 890590
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KG'), 96054045
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KG'), 96064050
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 100611
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 100615
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 100630
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 130632
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 130634
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 130635
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 130636
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 130638
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 130640
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 130642
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 130649
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 150658
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 150660
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 150662
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 160753
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 170710
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 170712
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 170718
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 170721
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 170722
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 170728
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 180670
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 180679
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 240680
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 240681
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 240682
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 240684
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 240687
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 290010
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 290022
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 290027
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 290029
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 310110
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 310112
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 310124
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 310128
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 310130
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 310132
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 310151
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 310156
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 310176
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 310510
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320203
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320240
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320242
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320244
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320246
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320248
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320250
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320252
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320254
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320256
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320260
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320261
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320264
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320266
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320270
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320271
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320516
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320526
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 320530
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330310
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330312
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330314
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330318
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330320
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330321
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330322
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330324
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330326
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330327
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330330
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330332
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330334
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330339
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330350
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330356
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330358
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330362
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330538
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330540
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 330545
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340410
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340412
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340418
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340420
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340422
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340427
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340432
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340450
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340456
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340514
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 340522
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 350776
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360689
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360690
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360691
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360692
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360732
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360734
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360736
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360738
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360740
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360745
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360749
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 360750
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 690568
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 720571
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 740573
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 760575
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 800579
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 820581
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 850584
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 870586
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 880587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 890588
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 890590
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 96054045
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KN'), 96064050
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','KP'), 890590
  
  go

  /*
select '
insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)
select
	dbo.descriptor(''%SchoolCategoryDescriptor%'','''+ (select CodeValue from edfi.Descriptor where DescriptorId=SchoolCategoryDescriptorId) + '''),'
	+ convert(varchar(20),SchoolId)
from edfi.SchoolCategory
*/

  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EC'),100611
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EC'),150663
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EC'),180670
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EC'),290013
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EC'),290022
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EC'),290027
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EC'),290029
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EC'),310510
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EC'),330545
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),100610
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),100612
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),100616
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),100618
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),100620
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),100622
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),130632
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),130634
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),130635
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),130636
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),130638
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),130640
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),130642
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),150658
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),150660
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),150662
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),150669
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),160752
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),160753
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),160783
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),170710
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),170712
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),170718
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),170721
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),170722
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),180668
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),180672
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),180673
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),230759
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),230760
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),230761
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),230762
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),240680
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),240681
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),240682
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),240684
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),240686
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),240696
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),290010
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),290011
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),290014
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),290020
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),290021
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),290028
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),290032
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),310110
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),310112
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),310124
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),310128
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),310130
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),310132
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),310151
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),310156
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),310176
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320240
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320242
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320244
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320246
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320248
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320250
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320252
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320254
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320256
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320260
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320264
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320266
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320270
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),320271
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330310
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330312
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330314
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330318
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330320
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330321
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330322
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330324
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330326
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330327
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330330
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330332
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330334
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330339
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330350
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330351
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330356
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330358
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),330362
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),340410
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),340412
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),340418
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),340420
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),340422
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),340427
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),340432
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),340450
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),340456
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),340523
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),350776
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),350779
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),360690
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),360691
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),360692
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),360732
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),360734
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),360736
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),360738
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),360740
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),690568
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),850584
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),860585
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','E'),890590
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),100629
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),320261
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),360749
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),720571
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),740573
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),760575
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),800579
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),820581
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),870586
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),920543
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),96054045
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EM'),96064050
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EH'),880587
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','EH'),890588
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),100626
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),130648
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),150665
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),160756
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),170726
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),180678
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),230766
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),240688
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),290018
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),290024
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),310108
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),310190
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),310194
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),310196
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),320290
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),320292
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),320294
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),330354
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),330390
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),330392
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),330394
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),330540
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),330544
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),340490
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),350780
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),360746
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),360748
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),370730
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),380026
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),380044
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),380066
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),380080
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),390652
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),400770
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),680567
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),700295
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),740980
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),770576
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),779576
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),790578
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),860591
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),884587
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),96044040
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),96074055
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),96094065
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),96114075
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),96124080
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),100621
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),100625
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),100628
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),130644
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),130646
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),150664
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),160782
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),170720
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),170724
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),180675
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),230764
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),240685
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),290016
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),290017
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),290023
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),310170
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),310178
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),310180
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),320274
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),320276
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),320280
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),320282
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),330352
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),330372
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),330374
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),330376
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),340470
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),340474
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),340476
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),350775
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),360741
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),360742
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),360743
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),370733
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),860586
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),890589
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),96065050
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','MH'),320284
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','MH'),320286
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','MH'),710570
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),100615
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),130649
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),130650
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),130655
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),150659
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),160781
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),180679
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),240687
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),290505
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),290507
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),290508
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),330535
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),340522
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),360745
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),370737
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),370739
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','I'),380539
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),100630
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),130653
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),150661
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),170728
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),230763
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),230768
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),310150
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),320203
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),320516
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),320526
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),320530
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),330512
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),330534
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),330537
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),330538
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),340514
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),340515
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),360689
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),360750
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),360758
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','S'),380541
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','P'),130656
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','O'),380051

go

/*
select '
INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
	select ' + convert(nvarchar(20),EducationOrganizationId) + ', ''' +  ProgramName + ''', ' + 
	'dbo.descriptor(''%ProgramTypeDescriptor%'','''+ (select CodeValue from edfi.Descriptor where DescriptorId=ProgramTypeDescriptorId) + ''')'
from edfi.Program 



*/
go

  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 10, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 12, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 13, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 15, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 16, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 17, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 18, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 23, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 24, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 29, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 31, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 32, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 33, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 34, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 35, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 36, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 37, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 38, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 39, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 40, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 67, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 68, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 69, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 70, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 71, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 72, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 74, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 76, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 77, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 79, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 80, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 82, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 85, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 86, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 87, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 88, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 89, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 92, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9604, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9605, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9606, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9607, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9609, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9611, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9612, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9614, 'CTE', dbo.descriptor('%ProgramTypeDescriptor%','Career and Technical Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 10, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 12, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 13, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 15, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 16, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 17, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 18, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 23, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 24, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 29, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 31, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 32, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 33, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 34, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 35, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 36, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 37, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 38, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 39, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 40, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 67, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 68, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 69, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 70, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 71, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 72, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 74, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 76, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 77, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 79, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 80, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 82, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 85, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 86, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 87, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 88, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 89, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 92, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9604, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9605, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9606, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9607, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9609, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9611, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9612, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9614, '504 Plan', dbo.descriptor('%ProgramTypeDescriptor%','Section 504 Placement')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 10, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 12, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 13, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 15, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 16, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 17, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 18, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 23, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 24, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 29, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 31, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 32, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 33, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 34, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 35, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 36, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 37, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 38, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 39, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 40, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 67, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 68, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 69, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 70, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 71, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 72, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 74, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 76, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 77, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 79, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 80, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 82, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 85, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 86, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 87, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 88, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 89, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 92, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9604, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9605, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9606, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9607, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9609, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9611, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9612, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9614, 'Special Education', dbo.descriptor('%ProgramTypeDescriptor%','Special Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 10, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 10, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 10, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 10, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 12, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 12, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 12, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 12, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 13, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 13, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 13, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 13, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 15, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 15, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 15, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 15, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 16, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 16, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 16, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 16, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 17, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 17, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 17, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 17, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 18, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 18, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 18, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 18, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 23, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 23, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 23, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 23, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 24, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 24, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 24, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 24, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 29, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 29, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 29, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 29, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 31, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 31, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 31, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 31, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 32, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 32, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 32, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 32, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 33, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 33, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 33, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 33, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 34, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 34, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 34, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 34, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 35, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 35, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 35, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 35, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 36, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 36, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 36, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 36, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 37, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 37, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 37, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 37, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 38, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 38, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 38, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 38, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 39, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 39, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 39, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 39, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 40, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 40, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 40, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 40, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 67, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 67, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 67, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 67, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 68, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 68, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 68, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 68, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 69, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 69, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 69, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 69, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 70, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 70, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 70, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 70, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 71, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 71, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 71, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 71, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 72, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 72, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 72, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 72, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 74, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 74, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 74, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 74, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 76, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 76, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 76, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 76, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 77, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 77, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 77, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 77, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 79, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 79, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 79, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 79, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 80, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 80, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 80, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 80, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 82, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 82, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 82, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 82, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 85, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 85, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 85, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 85, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 86, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 86, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 86, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 86, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 87, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 87, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 87, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 87, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 88, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 88, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 88, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 88, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 89, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 89, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 89, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 89, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 92, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 92, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 92, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 92, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9604, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9604, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9604, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9604, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9605, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9605, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9605, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9605, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9606, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9606, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9606, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9606, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9607, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9607, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9607, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9607, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9609, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9609, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9609, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9609, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9611, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9611, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9611, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9611, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9612, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9612, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9612, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9612, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9614, 'Early Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9614, 'ECAP', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9614, 'Head Start', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9614, 'Part B 619', dbo.descriptor('%ProgramTypeDescriptor%','Early Education')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 10, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 12, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 13, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 15, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 16, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 17, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 18, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 23, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 24, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 29, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 31, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 32, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 33, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 34, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 35, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 36, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 37, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 38, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 39, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 40, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 67, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 68, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 69, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 70, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 71, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 72, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 74, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 76, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 77, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 79, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 80, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 82, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 85, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 86, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 87, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 88, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 89, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 92, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9604, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9605, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9606, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9607, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9609, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9611, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9612, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  INSERT INTO edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)   select 9614, 'Language Immersion', dbo.descriptor('%ProgramTypeDescriptor%','Language Immersion')
  go
  
  
  --Fix missing Charter fake buildings
  insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '860589','Odyssey Charter Middle','Odyssey Charter Middle','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '882587','MOT Charter Middle School','MOT Charter Middle School','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
insert into edfi.EducationOrganization (EducationOrganizationId, NameOfInstitution, ShortNameOfInstitution, WebSite, OperationalStatusDescriptorId)  select '96114175','Great Oaks Charter High School','Great Oaks Charter High School','',   dbo.descriptor('%OperationalStatusDescriptor%','Active')
go

insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),860589
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),882587
insert into edfi.EducationOrganizationCategory (EducationOrganizationCategoryDescriptorId,EducationOrganizationId)  select    dbo.descriptor('%EducationOrganizationCategoryDescriptor%','School'),96114175
go
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 860589,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),86
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 882587,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),88
  INSERT INTO [edfi].[School]  ([SchoolId],[SchoolTypeDescriptorId],[CharterStatusDescriptorId],[LocalEducationAgencyId])   select 96114175,dbo.descriptor('%SchoolTypeDescriptor%','Regular'), dbo.descriptor('%CharterStatusDescriptor%','School Charter'),9611
 go
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 860589
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 860589
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 860589
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','06'), 882587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','07'), 882587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','08'), 882587
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','09'), 96114175
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','10'), 96114175
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','11'), 96114175
  insert into EdFi.SchoolGradeLevel (GradeLevelDescriptorId, SchoolId)   select dbo.descriptor('%GradeLevelDescriptor%','12'), 96114175
go

  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),860589
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','M'),882587
  insert into edfi.SchoolCategory (SchoolCategoryDescriptorId, SchoolId)  select   dbo.descriptor('%SchoolCategoryDescriptor%','H'),96114175
go



  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),860589, '4319 Lancaster Pike','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19805','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),882587, '1156 Levels Road','Middletown',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19709','New Castle',1
  INSERT INTO [edfi].[EducationOrganizationAddress]([AddressTypeDescriptorId],[EducationOrganizationId],[StreetNumberName],[City],[StateAbbreviationDescriptorId],[PostalCode],[NameOfCounty],[DoNotPublishIndicator])  select    dbo.descriptor('%AddressTypeDescriptor%','M'),96114175, '1200 North French St','Wilmington',dbo.descriptor('%StateAbbreviationDescriptor%','DE'),'19801','New Castle',1
  go
-- insert into de.SchoolExtension (SchoolId) 
-- select SchoolId from edfi.School where schoolid not in (Select schoolid from de.SchoolExtension)

-- go
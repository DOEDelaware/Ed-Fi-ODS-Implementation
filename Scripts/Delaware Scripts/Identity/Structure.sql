drop table iden.DeIdentitySearch
go
--create schema iden
--go
create table iden.DeIdentitySearch (
token char(15) not null,
LastName varchar(30) not null,
MiddleName varchar(30) null,
FirstName varchar(30) null,
SuffixName varchar(10) null,
DOB datetime null,
LEAId int null,
SchoolId int null,
SearchIntentType char(10) not null,
SexType char(1) null
)
go
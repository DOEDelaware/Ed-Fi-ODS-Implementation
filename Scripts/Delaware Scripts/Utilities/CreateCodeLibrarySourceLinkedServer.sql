--The development environment cannot connect to CodeLibrary, therefore references a local copy of CodeLibrary. 
--It does this without changing the connection in this script by requiring a linked server named 'CODELIBRARYSOURCE'
--This can be set up to reference the local server based on this 'https://serverfault.com/questions/435440/alias-a-linked-server-in-sql-server-management-studio'
--steps:
			-- step 1:
			-- in sql server management studio open linked servers and then 'new linked server'.
			-- inside of appeared wizard – select the general tab.
			-- specify alias name in "linked server" field.
			-- select sql native client as provider.
			-- add sql_server in "product name" field (that's the magic).
			-- in "data source" – specify name of the host to be used as linked server.
			-- step 2:
			-- in security tab – specify proper security options (e.g. security context)
			-- step 3:
			-- in server options tab – set "data access", rpc, "rpc out" and "use remote collation" to true.
--UAT and Production have this linked server set up pointing to the real copy, dev to the local one.


USE [master]
GO

declare @DataSourceName nvarchar(100)
--set @DataSourceName=N'doesisdb\db1s'  -- Production, UAT
set @DataSourceName=N'doesisEdFiInt.doesis.pas'  -- Production, UAT


/****** Object:  LinkedServer [CODELIBRARYSOURCE]    Script Date: 3/2/2021 9:13:26 AM ******/
EXEC master.dbo.sp_addlinkedserver @server = N'CODELIBRARYSOURCE', @srvproduct=N'sql_server', @provider=N'SQLNCLI11', @datasrc=@DataSourceName
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'CODELIBRARYSOURCE',@useself=N'True',@locallogin=NULL,@rmtuser=NULL,@rmtpassword=NULL

GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'collation compatible', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'data access', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'dist', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'pub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'rpc', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'rpc out', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'sub', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'connect timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'collation name', @optvalue=null
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'lazy schema validation', @optvalue=N'false'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'query timeout', @optvalue=N'0'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'use remote collation', @optvalue=N'true'
GO

EXEC master.dbo.sp_serveroption @server=N'CODELIBRARYSOURCE', @optname=N'remote proc transaction promotion', @optvalue=N'true'
GO



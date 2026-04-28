
 create function [dbo].[descriptor]( @ns varchar(255), @codevalue varchar(50)) returns int as
 begin
 declare @result int
 select @result=descriptorid from edfi.descriptor where codevalue = @codevalue and namespace like  @ns 
return @result
 end
 GO
 

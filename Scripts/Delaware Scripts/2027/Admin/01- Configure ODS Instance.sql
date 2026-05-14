DECLARE @OdsInstanceName nvarchar(100) = '2027'
DECLARE @OdsInstanceType nvarchar(100) = 'SharedInstance'
DECLARE @OdsInstanceConnectionString nvarchar(500) = 'server=doesisedfiintne;trusted_connection=True;database=EdFi_Delaware_ODS_2027;application name=EdFi.Ods.WebApi;Encrypt=False'

DECLARE @OdsInstanceId int

-- Ensure OdsInstance exists
SELECT @OdsInstanceId = OdsInstanceId FROM [dbo].[OdsInstances] WHERE [Name] = @OdsInstanceName and InstanceType = @OdsInstanceType

IF(@OdsInstanceId IS NULL)
BEGIN
    INSERT INTO [dbo].[OdsInstances] ([Name], InstanceType, ConnectionString)
    VALUES (@OdsInstanceName, @OdsInstanceType, @OdsInstanceConnectionString)
    SET @OdsInstanceId = SCOPE_IDENTITY()
END
ELSE
BEGIN
    UPDATE [dbo].[OdsInstances] SET ConnectionString = @OdsInstanceConnectionString WHERE OdsInstanceId = @OdsInstanceId
END


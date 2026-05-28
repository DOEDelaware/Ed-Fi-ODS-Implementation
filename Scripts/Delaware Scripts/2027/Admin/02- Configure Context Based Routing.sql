DECLARE @ContextKey nvarchar(50) = 'schoolYearFromRoute'
DECLARE @ContextValue nvarchar(50) = '2027'
DECLARE @OdsInstanceId int = 1 -- Must be a valid OdsInstanceId in the OdsInstances Table

IF NOT EXISTS(SELECT 1 FROM [dbo].[OdsInstanceContexts] WHERE OdsInstance_OdsInstanceId = @OdsInstanceId AND ContextKey = @ContextKey AND ContextValue = @ContextValue)
BEGIN
    INSERT INTO [dbo].[OdsInstanceContexts] (OdsInstance_OdsInstanceId, ContextKey, ContextValue)
    VALUES (@OdsInstanceId, @ContextKey, @ContextValue)
END

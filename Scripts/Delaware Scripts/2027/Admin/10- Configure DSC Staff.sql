/*=========================================================
    PARAMETERS - CHANGE ONLY THESE VALUES
=========================================================*/
DECLARE @VendorName NVARCHAR(255) = 'DataServiceCenter';
DECLARE @ApplicationName NVARCHAR(255) = 'DSCStaff';
DECLARE @ClaimSetName NVARCHAR(255) = 'Staff';
DECLARE @EducationOrganizationId INT = 33;
DECLARE @ApiClientKey NVARCHAR(255) = 'DSCStaff';
DECLARE @ApiClientName NVARCHAR(255) = 'DSC_Staff';
DECLARE @OdsInstanceName NVARCHAR(255) = '2027';

/*=========================================================
    INTERNAL VARIABLES
=========================================================*/
DECLARE @VendorId INT;
DECLARE @ApplicationId INT;
DECLARE @UserId INT;
DECLARE @ApiClientId INT;
DECLARE @ApplicationEducationOrganizationId INT;
DECLARE @OdsInstanceId INT;

/*=========================================================
    VENDOR
=========================================================*/
IF NOT EXISTS
(
    SELECT 1
    FROM dbo.Vendors
    WHERE VendorName = @VendorName
)
BEGIN
    INSERT INTO dbo.Vendors (VendorName)
    VALUES (@VendorName);
END;

SELECT @VendorId = VendorId
FROM dbo.Vendors
WHERE VendorName = @VendorName;

/*=========================================================
    APPLICATION
=========================================================*/
IF NOT EXISTS
(
    SELECT 1
    FROM dbo.Applications
    WHERE ApplicationName = @ApplicationName
)
BEGIN
    INSERT INTO dbo.Applications
    (
        ApplicationName,
        Vendor_VendorId,
        ClaimSetName,
        OperationalContextUri
    )
    VALUES
    (
        @ApplicationName,
        @VendorId,
        @ClaimSetName,
        'uri://ed-fi-api-host.org'
    );
END;

SELECT @ApplicationId = ApplicationId
FROM dbo.Applications
WHERE ApplicationName = @ApplicationName;

/*=========================================================
    USER
=========================================================*/
IF NOT EXISTS
(
    SELECT 1
    FROM dbo.Users
    WHERE Email = 'test@test.com'
)
BEGIN
    INSERT INTO dbo.Users
    (
        Email,
        FullName,
        Vendor_VendorId
    )
    VALUES
    (
        'test@test.com',
        @VendorName,
        @VendorId
    );
END;

SELECT @UserId = UserId
FROM dbo.Users
WHERE Email = 'test@test.com';

/*=========================================================
    APPLICATION EDUCATION ORGANIZATION
=========================================================*/
IF NOT EXISTS
(
    SELECT 1
    FROM dbo.ApplicationEducationOrganizations
    WHERE EducationOrganizationId = @EducationOrganizationId
      AND Application_ApplicationId = @ApplicationId
)
BEGIN
    INSERT INTO dbo.ApplicationEducationOrganizations
    (
        EducationOrganizationId,
        Application_ApplicationId
    )
    VALUES
    (
        @EducationOrganizationId,
        @ApplicationId
    );
END;

SELECT @ApplicationEducationOrganizationId =
       ApplicationEducationOrganizationId
FROM dbo.ApplicationEducationOrganizations
WHERE EducationOrganizationId = @EducationOrganizationId
  AND Application_ApplicationId = @ApplicationId;

/*=========================================================
    API CLIENT
=========================================================*/
IF NOT EXISTS
(
    SELECT 1
    FROM dbo.ApiClients
    WHERE [Key] = @ApiClientKey
)
BEGIN
    INSERT INTO dbo.ApiClients
    (
        [Key],
        Secret,
        Name,
        IsApproved,
        UseSandbox,
        SandboxType,
        Application_ApplicationId,
        User_UserId,
        KeyStatus,
        ChallengeId,
        ActivationRetried,
        SecretIsHashed
    )
    VALUES
    (
        @ApiClientKey,
        REPLACE(SUBSTRING(CAST(NEWID() AS VARCHAR(50)), 1, 15), '-', ''),
        @ApiClientName,
        1,
        0,
        0,
        @ApplicationId,
        @UserId,
        'Active',
        '',
        1,
        0
    );
END;

SELECT @ApiClientId = ApiClientId
FROM dbo.ApiClients
WHERE [Key] = @ApiClientKey;

/*=========================================================
    API CLIENT -> APPLICATION EDORG
=========================================================*/
IF NOT EXISTS
(
    SELECT 1
    FROM dbo.ApiClientApplicationEducationOrganizations
    WHERE ApiClient_ApiClientId = @ApiClientId
      AND ApplicationEducationOrganization_ApplicationEducationOrganizationId =
          @ApplicationEducationOrganizationId
)
BEGIN
    INSERT INTO dbo.ApiClientApplicationEducationOrganizations
    (
        ApiClient_ApiClientId,
        ApplicationEducationOrganization_ApplicationEducationOrganizationId
    )
    VALUES
    (
        @ApiClientId,
        @ApplicationEducationOrganizationId
    );
END;

/*=========================================================
    API CLIENT -> ODS INSTANCE
=========================================================*/
SELECT @OdsInstanceId = OdsInstanceId
FROM dbo.OdsInstances
WHERE Name = @OdsInstanceName;

IF @OdsInstanceId IS NULL
BEGIN
    THROW 50001, 'ODS Instance not found.', 1;
END;

IF NOT EXISTS
(
    SELECT 1
    FROM dbo.ApiClientOdsInstances
    WHERE ApiClient_ApiClientId = @ApiClientId
      AND OdsInstance_OdsInstanceId = @OdsInstanceId
)
BEGIN
    INSERT INTO dbo.ApiClientOdsInstances
    (
        ApiClient_ApiClientId,
        OdsInstance_OdsInstanceId
    )
    VALUES
    (
        @ApiClientId,
        @OdsInstanceId
    );
END;

/*=========================================================
    VERIFICATION
=========================================================*/
SELECT
    v.VendorName,
    a.ApplicationName,
    a.ClaimSetName,
    ac.[Key] AS ApiClientKey,
    ac.Name AS ApiClientName,
    oe.Name AS OdsInstance
FROM dbo.ApiClients ac
INNER JOIN dbo.Applications a
    ON ac.Application_ApplicationId = a.ApplicationId
INNER JOIN dbo.Vendors v
    ON a.Vendor_VendorId = v.VendorId
INNER JOIN dbo.ApiClientOdsInstances aco
    ON ac.ApiClientId = aco.ApiClient_ApiClientId
INNER JOIN dbo.OdsInstances oe
    ON aco.OdsInstance_OdsInstanceId = oe.OdsInstanceId
WHERE ac.[Key] = @ApiClientKey;
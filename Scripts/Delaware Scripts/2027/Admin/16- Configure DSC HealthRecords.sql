/*=========================================================
    PARAMETERS - CHANGE ONLY THESE VALUES
=========================================================*/
DECLARE @VendorName NVARCHAR(255) = 'DataServiceCenter';
DECLARE @ApplicationName NVARCHAR(255) = 'DSCHealthRecords';
DECLARE @ClaimSetName NVARCHAR(255) = 'HealthRecords';
DECLARE @ApiClientKey NVARCHAR(255) = 'DSCHealthRecords';
DECLARE @ApiClientName NVARCHAR(255) = 'DSC_HealthRecords';
DECLARE @OdsInstanceName NVARCHAR(255) = '2027';

/*=========================================================
    INTERNAL VARIABLES
=========================================================*/
DECLARE @VendorId INT;
DECLARE @ApplicationId INT;
DECLARE @UserId INT;
DECLARE @ApiClientId INT;
DECLARE @OdsInstanceId INT;

/*=========================================================
    EDUCATION ORGANIZATIONS
=========================================================*/
DECLARE @EducationOrganizations TABLE
(
    EducationOrganizationId INT PRIMARY KEY
);

INSERT INTO @EducationOrganizations (EducationOrganizationId)
VALUES
(9),(10),(13),(15),(16),(17),(18),(23),(24),(29),
(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),
(69),(70),(71),(72),(74),(76),(77),(79),(80),(82),
(85),(86),(87),(88),(89),(92),(97),
(9604),(9605),(9606),(9607),(9611),(9612),(9614),(9615);

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
    APPLICATION EDUCATION ORGANIZATIONS
=========================================================*/
INSERT INTO dbo.ApplicationEducationOrganizations
(
    EducationOrganizationId,
    Application_ApplicationId
)
SELECT
    eo.EducationOrganizationId,
    @ApplicationId
FROM @EducationOrganizations eo
WHERE NOT EXISTS
(
    SELECT 1
    FROM dbo.ApplicationEducationOrganizations aeo
    WHERE aeo.EducationOrganizationId = eo.EducationOrganizationId
      AND aeo.Application_ApplicationId = @ApplicationId
);

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
    API CLIENT -> APPLICATION EDORGS
=========================================================*/
INSERT INTO dbo.ApiClientApplicationEducationOrganizations
(
    ApiClient_ApiClientId,
    ApplicationEducationOrganization_ApplicationEducationOrganizationId
)
SELECT
    @ApiClientId,
    aeo.ApplicationEducationOrganizationId
FROM dbo.ApplicationEducationOrganizations aeo
INNER JOIN @EducationOrganizations eo
    ON eo.EducationOrganizationId = aeo.EducationOrganizationId
WHERE aeo.Application_ApplicationId = @ApplicationId
  AND NOT EXISTS
(
    SELECT 1
    FROM dbo.ApiClientApplicationEducationOrganizations acaeo
    WHERE acaeo.ApiClient_ApiClientId = @ApiClientId
      AND acaeo.ApplicationEducationOrganization_ApplicationEducationOrganizationId =
          aeo.ApplicationEducationOrganizationId
);

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
    oe.Name AS OdsInstance,
    ac.[Secret],
    aeo.EducationOrganizationId
FROM dbo.ApiClients ac
INNER JOIN dbo.Applications a
    ON ac.Application_ApplicationId = a.ApplicationId
INNER JOIN dbo.Vendors v
    ON a.Vendor_VendorId = v.VendorId
INNER JOIN dbo.ApiClientOdsInstances aco
    ON ac.ApiClientId = aco.ApiClient_ApiClientId
INNER JOIN dbo.OdsInstances oe
    ON aco.OdsInstance_OdsInstanceId = oe.OdsInstanceId
INNER JOIN dbo.ApiClientApplicationEducationOrganizations acaeo
    ON ac.ApiClientId = acaeo.ApiClient_ApiClientId
INNER JOIN dbo.ApplicationEducationOrganizations aeo
    ON acaeo.ApplicationEducationOrganization_ApplicationEducationOrganizationId =
       aeo.ApplicationEducationOrganizationId
WHERE ac.[Key] = @ApiClientKey
ORDER BY aeo.EducationOrganizationId;

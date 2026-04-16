USE EdFi_Security;
GO

/*
    Ed-Fi 7.x Claim Set Build Script
    --------------------------------
    Creates a claim set and assigns the permissions shown in the screenshot.

    Update these two values first:
*/
DECLARE @ClaimSetName       NVARCHAR(255) = N'Custom Claim Set';
DECLARE @ApplicationName    NVARCHAR(255) = N'Ed-Fi ODS API';

/*
    Permission legend:
      R    = Read
      C    = Create
      U    = Update
      D    = Delete
*/

SET NOCOUNT ON;

BEGIN TRY
    BEGIN TRANSACTION;

    DECLARE @ApplicationId INT;
    DECLARE @ClaimSetId INT;

    SELECT @ApplicationId = ApplicationId
    FROM dbo.Applications
    WHERE ApplicationName = @ApplicationName;

    IF @ApplicationId IS NULL
    BEGIN
        THROW 50001, 'ApplicationName not found in EdFi_Security..Applications.', 1;
    END;

    IF NOT EXISTS
    (
        SELECT 1
        FROM dbo.ClaimSets
        WHERE ClaimSetName = @ClaimSetName
    )
    BEGIN
        INSERT INTO dbo.ClaimSets
        (
            ClaimSetName,
            Application_ApplicationId
        )
        VALUES
        (
            @ClaimSetName,
            @ApplicationId
        );
    END;

    SELECT @ClaimSetId = ClaimSetId
    FROM dbo.ClaimSets
    WHERE ClaimSetName = @ClaimSetName;

    IF @ClaimSetId IS NULL
    BEGIN
        THROW 50002, 'Claim set could not be created or located.', 1;
    END;

    -------------------------------------------------------------------------
    -- Define requested permissions from your screenshot
    -------------------------------------------------------------------------
    DECLARE @RequestedPermissions TABLE
    (
        ResourceName NVARCHAR(255) NOT NULL,
        ActionName   NVARCHAR(50)  NOT NULL
    );

    INSERT INTO @RequestedPermissions (ResourceName, ActionName)
    VALUES
        (N'assessment', N'read'),
        (N'assessmentAdministration', N'read'),

        (N'bulk', N'create'),
        (N'bulk', N'read'),
        (N'bulk', N'update'),
        (N'bulk', N'delete'),

        (N'claimOnly', N'create'),
        (N'claimOnly', N'read'),
        (N'claimOnly', N'update'),
        (N'claimOnly', N'delete'),

        (N'communityProviderLicense', N'create'),
        (N'communityProviderLicense', N'read'),
        (N'communityProviderLicense', N'update'),
        (N'communityProviderLicense', N'delete'),

        (N'DeescalationTechniqueDescriptor', N'read'),

        (N'educationContent', N'create'),
        (N'educationContent', N'read'),
        (N'educationContent', N'update'),
        (N'educationContent', N'delete'),

        (N'educationOrganizations', N'read'),

        (N'educationStandards', N'create'),
        (N'educationStandards', N'read'),
        (N'educationStandards', N'update'),
        (N'educationStandards', N'delete'),

        (N'identity', N'create'),
        (N'identity', N'read'),
        (N'identity', N'update'),

        (N'managedDescriptors', N'create'),
        (N'managedDescriptors', N'read'),
        (N'managedDescriptors', N'update'),
        (N'managedDescriptors', N'delete'),

        (N'medical', N'create'),
        (N'medical', N'read'),
        (N'medical', N'update'),
        (N'medical', N'delete'),

        (N'medicationBox', N'create'),
        (N'medicationBox', N'read'),
        (N'medicationBox', N'update'),
        (N'medicationBox', N'delete'),

        (N'NonViolentTechniqueDescriptor', N'read'),

        (N'people', N'create'),
        (N'people', N'read'),
        (N'people', N'update'),
        (N'people', N'delete'),

        (N'person', N'read'),

        (N'primaryRelationships', N'create'),
        (N'primaryRelationships', N'read'),
        (N'primaryRelationships', N'update'),
        (N'primaryRelationships', N'delete'),

        (N'reasonForLateIEPDescriptor', N'read'),

        (N'relationshipBasedData', N'create'),
        (N'relationshipBasedData', N'read'),
        (N'relationshipBasedData', N'update'),
        (N'relationshipBasedData', N'delete'),

        (N'studentAssessmentRegistration', N'create'),
        (N'studentAssessmentRegistration', N'read'),
        (N'studentAssessmentRegistration', N'update'),
        (N'studentAssessmentRegistration', N'delete'),

        (N'studentEarlyChildhoodProgramAssociation', N'create'),
        (N'studentEarlyChildhoodProgramAssociation', N'read'),
        (N'studentEarlyChildhoodProgramAssociation', N'update'),
        (N'studentEarlyChildhoodProgramAssociation', N'delete'),

        (N'studentEducationOrganizationAssociation', N'create'),
        (N'studentEducationOrganizationAssociation', N'read'),
        (N'studentEducationOrganizationAssociation', N'update'),
        (N'studentEducationOrganizationAssociation', N'delete'),

        (N'studentEducationOrganizationResponsibilityAssociation', N'create'),
        (N'studentEducationOrganizationResponsibilityAssociation', N'read'),
        (N'studentEducationOrganizationResponsibilityAssociation', N'update'),
        (N'studentEducationOrganizationResponsibilityAssociation', N'delete'),

        (N'systemDescriptors', N'read'),
        (N'types', N'read');

    -------------------------------------------------------------------------
    -- Validation 1: resource claims that do not exist
    -------------------------------------------------------------------------
    IF EXISTS
    (
        SELECT 1
        FROM @RequestedPermissions rp
        LEFT JOIN dbo.ResourceClaims rc
            ON rc.ResourceName = rp.ResourceName
        WHERE rc.ResourceClaimId IS NULL
    )
    BEGIN
        PRINT 'WARNING: The following resource claims were not found in dbo.ResourceClaims:';

        SELECT DISTINCT rp.ResourceName
        FROM @RequestedPermissions rp
        LEFT JOIN dbo.ResourceClaims rc
            ON rc.ResourceName = rp.ResourceName
        WHERE rc.ResourceClaimId IS NULL
        ORDER BY rp.ResourceName;
    END;

    -------------------------------------------------------------------------
    -- Validation 2: resource/action definitions missing from ResourceClaimActions
    -- These must exist for claim set permissions to work.
    -------------------------------------------------------------------------
    IF EXISTS
    (
        SELECT 1
        FROM @RequestedPermissions rp
        JOIN dbo.ResourceClaims rc
            ON rc.ResourceName = rp.ResourceName
        JOIN dbo.Actions a
            ON a.ActionName = rp.ActionName
        LEFT JOIN dbo.ResourceClaimActions rca
            ON rca.ResourceClaimId = rc.ResourceClaimId
           AND rca.ActionId = a.ActionId
        WHERE rca.ResourceClaimActionId IS NULL
    )
    BEGIN
        PRINT 'WARNING: The following resource/action pairs do not exist in dbo.ResourceClaimActions:';

        SELECT
            rp.ResourceName,
            rp.ActionName
        FROM @RequestedPermissions rp
        JOIN dbo.ResourceClaims rc
            ON rc.ResourceName = rp.ResourceName
        JOIN dbo.Actions a
            ON a.ActionName = rp.ActionName
        LEFT JOIN dbo.ResourceClaimActions rca
            ON rca.ResourceClaimId = rc.ResourceClaimId
           AND rca.ActionId = a.ActionId
        WHERE rca.ResourceClaimActionId IS NULL
        ORDER BY rp.ResourceName, rp.ActionName;
    END;

    -------------------------------------------------------------------------
    -- Insert claim set permissions idempotently
    -------------------------------------------------------------------------
    INSERT INTO dbo.ClaimSetResourceClaimActions
    (
        ClaimSetId,
        ResourceClaimId,
        ActionId
    )
    SELECT
        @ClaimSetId,
        rc.ResourceClaimId,
        a.ActionId
    FROM @RequestedPermissions rp
    JOIN dbo.ResourceClaims rc
        ON rc.ResourceName = rp.ResourceName
    JOIN dbo.Actions a
        ON a.ActionName = rp.ActionName
    JOIN dbo.ResourceClaimActions rca
        ON rca.ResourceClaimId = rc.ResourceClaimId
       AND rca.ActionId = a.ActionId
    LEFT JOIN dbo.ClaimSetResourceClaimActions csrca
        ON csrca.ClaimSetId = @ClaimSetId
       AND csrca.ResourceClaimId = rc.ResourceClaimId
       AND csrca.ActionId = a.ActionId
    WHERE csrca.ClaimSetResourceClaimActionId IS NULL;

    COMMIT TRANSACTION;

    PRINT 'Claim set build completed successfully.';
    PRINT 'Claim set name: ' + @ClaimSetName;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;

    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;
GO

---------------------------------------------------------------------------
-- Verification query
---------------------------------------------------------------------------
DECLARE @ClaimSetName NVARCHAR(255) = N'Custom Claim Set';

SELECT
    cs.ClaimSetName,
    rc.ResourceName,
    a.ActionName
FROM dbo.ClaimSets cs
JOIN dbo.ClaimSetResourceClaimActions csrca
    ON csrca.ClaimSetId = cs.ClaimSetId
JOIN dbo.ResourceClaims rc
    ON rc.ResourceClaimId = csrca.ResourceClaimId
JOIN dbo.Actions a
    ON a.ActionId = csrca.ActionId
WHERE cs.ClaimSetName = @ClaimSetName
ORDER BY rc.ResourceName, a.ActionName;
GO
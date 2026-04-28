USE [msdb]
GO

/****** Object:  Job [Upsert Community Organizations and Providers from DHSS ECQI DB]    Script Date: 7/20/2021 2:11:53 PM ******/
BEGIN TRANSACTION
DECLARE @ReturnCode INT
SELECT @ReturnCode = 0
/****** Object:  JobCategory [[Uncategorized (Local)]]    Script Date: 7/20/2021 2:11:53 PM ******/
IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
BEGIN
EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback

END

DECLARE @jobId BINARY(16)
EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'Upsert Community Organizations and Providers from DHSS ECQI DB', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=0, 
		@notify_level_netsend=0, 
		@notify_level_page=0, 
		@delete_level=0, 
		@description=N'No description available.', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'DOESIS\suman.budde', @job_id = @jobId OUTPUT
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Education Organizations]    Script Date: 7/20/2021 2:11:54 PM ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Education Organizations', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'------- EducationOrganization-----------------
SET QUOTED_IDENTIFIER ON
MERGE edfi.EducationOrganization Target
USING (
	-------- Organizations and Providers that are self Organization
	SELECT DISTINCT Organization =PROVIDER_IDNO 
		,Name =  left(PROVIDER_NAME, 75)
		,ShortName =  left(PROVIDER_NICKNAME, 75)
		,OpStatusId = ( SELECT CASE WHEN STATUS_TYPE = ''I'' THEN dbo.descriptor(''%OperationalStatusDescriptor%'', ''Inactive'')
					ELSE dbo.descriptor(''%OperationalStatusDescriptor%'', ''Active'')
					END )
		,[Discriminator] = ''edfi.CommunityProvider''
	FROM [doesisdb\db1s].ECQI.dbo.PROVIDER P
Where PROVIDER_IDNO not in (select SchoolId from edfi.School union select LocalEducationAgencyId from edfi.LocalEducationAgency)
	union 
	--------- Providers that have Organizations
	SELECT DISTINCT Organization = CONVERT(VARCHAR(30), PROVIDER_IDNO)				
		,Name = left(PROVIDER_NAME, 75)
		,ShortName = left(PROVIDER_NICKNAME, 75)
		,OpStatusId = ( SELECT CASE WHEN STATUS_TYPE = ''I'' THEN dbo.descriptor(''%OperationalStatusDescriptor%'', ''Inactive'')
					ELSE dbo.descriptor(''%OperationalStatusDescriptor%'', ''Active'')
					END )
	,[Discriminator] = ''edfi.CommunityProvider''
	FROM [doesisdb\db1s].ECQI.dbo.PROVIDER P
Where PROVIDER_IDNO not in (select SchoolId from edfi.School union select LocalEducationAgencyId from edfi.LocalEducationAgency)
	) Source
	ON (Target.EducationOrganizationId = Source.Organization)
WHEN MATCHED
	THEN
		UPDATE
		SET Target.NameOfInstitution = Source.NAME
			,Target.ShortNameOfInstitution = Source.ShortName
			,Target.OperationalStatusDescriptorId = Source.OpStatusId
			,Target.Discriminator = Source.Discriminator
			,Target.LastModifiedDate = getdate()
WHEN NOT MATCHED BY TARGET
	THEN
		INSERT (
			EducationOrganizationId
			,NameOfInstitution
			,ShortNameOfInstitution
			,OperationalStatusDescriptorId
			,Discriminator
			,createdate
			,LastModifiedDate
			)
		VALUES (
			Source.Organization
			,Source.NAME
			,Source.ShortName
			,Source.OpStatusId
			,Source.Discriminator
			,getdate()
			,getdate()
			)
;', 
		@database_name=N'EdFi_Delaware_Ods_2022', 
		@flags=8
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Community Organizations]    Script Date: 7/20/2021 2:11:54 PM ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Community Organizations', 
		@step_id=2, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'------- CommunityOrganization-----------------

MERGE edfi.CommunityOrganization Target
USING (
	SELECT DISTINCT Organization = PROVIDER_IDNO 
		FROM [doesisdb\db1s].ECQI.dbo.PROVIDER P

Where PROVIDER_IDNO not in (select SchoolId from edfi.School union select LocalEducationAgencyId from edfi.LocalEducationAgency)
	) Source
	ON (Target.CommunityOrganizationId = Source.Organization)
WHEN NOT MATCHED BY TARGET
	THEN
		INSERT (
			CommunityOrganizationId
			)
		VALUES (
			Source.Organization
			)
	;
', 
		@database_name=N'EdFi_Delaware_Ods_2022', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Community Providers]    Script Date: 7/20/2021 2:11:54 PM ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Community Providers', 
		@step_id=3, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'------- CommunityProvider-----------------

MERGE edfi.CommunityProvider Target
USING (
	SELECT DISTINCT Organization = PROVIDER_IDNO
		,PROVIDER_IDNO
		,ProStatus = isnull(dbo.descriptor(''%ProviderStatusDescriptor%'',STATUS_TYPE),dbo.descriptor(''%ProviderStatusDescriptor%'',''Nll'') ) 
        , ProCate= isnull(dbo.descriptor(''%ProviderCategoryDescriptor%'',PROVIDER_TYPE),dbo.descriptor(''%ProviderCategoryDescriptor%'',''Nll''))
		
	FROM [doesisdb\db1s].ECQI.dbo.PROVIDER P
	
Where PROVIDER_IDNO not in (select SchoolId from edfi.School union select LocalEducationAgencyId from edfi.LocalEducationAgency)
	) Source
	ON (Target.CommunityProviderId = Source.PROVIDER_IDNO)
WHEN MATCHED
	THEN
		UPDATE
		SET Target.CommunityOrganizationId = Source.Organization
			,Target.ProviderStatusDescriptorId = Source.ProStatus
			,Target.ProviderCategoryDescriptorId = Source.ProCate
		
WHEN NOT MATCHED BY TARGET
	THEN
		INSERT (
		CommunityOrganizationId
		,CommunityProviderId
		,ProviderStatusDescriptorId 
		,ProviderCategoryDescriptorId
		
		)
		VALUES (
			Source.PROVIDER_IDNO
			,Source.Organization
			,Source.ProStatus
			,Source.ProCate
			
			)
;
', 
		@database_name=N'EdFi_Delaware_Ods_2022', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 1
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'Weekly', 
		@enabled=1, 
		@freq_type=8, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20200622, 
		@active_end_date=99991231, 
		@active_start_time=500, 
		@active_end_time=235959, 
		@schedule_uid=N'bb838f26-8bda-46ad-ad89-3ce3620f194f'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
COMMIT TRANSACTION
GOTO EndSave
QuitWithRollback:
    IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
EndSave:
GO



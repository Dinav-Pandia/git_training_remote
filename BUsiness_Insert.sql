--create table [#tempTB_BUSINESS_SCHEMA_BKUP] (
--[ID] [int] identity,
--[BusinessSchemaName] [varchar] (255),
--[MasterSchemaName] [varchar] (255),
--[CatalogDatabricksGroupName] [varchar] (255),
--[ViewName] [varchar] (255),
--[ViewLogic] [nvarchar] (max),
--[IsDeleted] [bit] NULL,
--[InsertedDateTime] [datetime] NULL,
--[InsertedBy] [varchar] (255) NULL,
--[LastUpdatedDateTime] [datetime] NULL,
--[LastUpdatedBy] [varchar] (255) NULL,
--[IsDIY] [varchar] (1),
--[WBSECode] [varchar] (50) NULL,
--[ConsumerSPNName] [varchar] (50) NULL,
--[ConsumerSPNAppID] [varchar] (50) NULL,
--[ProductName] [varchar] (255),
--[IsConsumerHasDatabricks] [varchar] (10),
--[IsConsumerADBEnabledWithUC] [varchar] (10),
--[IsBAOApprovalCompleted] [varchar] (10),
--[CatalogADGroupName] [varchar] (50) NULL,
--[CatalogADGroupID] [varchar] (50) NULL,
--[IsProviderADBEnabledWithUC] [varchar] (10) NULL,
--[Environment] [varchar] (50),
--[IsProvisioned] [varchar] (1),
--[DemandNo] [varchar] (255) NULL);

---Change here---


set identity_insert [#tempTB_BUSINESS_SCHEMA_BKUP] on;


insert [DIY].[TB_BUSINESS_SCHEMA_BKUP] ([ID],[BusinessSchemaName],[MasterSchemaName],[CatalogDatabricksGroupName],[ViewName],[ViewLogic],[IsDeleted],[InsertedDateTime],[InsertedBy],[LastUpdatedDateTime],[LastUpdatedBy],[IsDIY],[WBSECode],[ConsumerSPNName],[ConsumerSPNAppID],[ProductName],[IsConsumerHasDatabricks],[IsConsumerADBEnabledWithUC],[IsBAOApprovalCompleted],[CatalogADGroupName],[CatalogADGroupID],[IsProviderADBEnabledWithUC],[Environment],[IsProvisioned],[DemandNo])
VALUES('athena_unharmonized_ext','athena_unharmonized_ext','LUBESAMERICA-DATA-CAN-SELECT','v_DIY_Business_View_Catalog_Failure_TC_Comma','select * from customer_b2b_lubes_lcs_dev.athena_unharmonized_ext.t_diy_test_delimiter__delimiter_tc5_provision_error',NULL,GETDATE(),'dinav.pandia@shell.com',NULL,NULL,'Y',NULL,NULL,NULL,'Test Case','N','Y','Y','AZ-DNA-GRP-SG-P-DS-447ad90d62e348088ecc',NULL,'Y','DEV','Y','000')
,('test','test','LUBESAMERICA-DATA-CAN-SELECT','v_DIY_Business_View_Failure_TC','select * from hive_metastore.test.t_delimiter_tc10_pipe_error',NULL,GETDATE(),'dinav.pandia@shell.com',NULL,NULL,'N',NULL,NULL,NULL,'Test Case','N','N','Y',NULL,NULL,'N','DEV','N','000')



insert [DIY].[TB_BUSINESS_SCHEMA_BKUP] ([ID],[BusinessSchemaName],[MasterSchemaName],[CatalogDatabricksGroupName],[ViewName],[ViewLogic],[IsDeleted],[InsertedDateTime],[InsertedBy],[LastUpdatedDateTime],[LastUpdatedBy],[IsDIY],[WBSECode],[ConsumerSPNName],[ConsumerSPNAppID],[ProductName],[IsConsumerHasDatabricks],[IsConsumerADBEnabledWithUC],[IsBAOApprovalCompleted],[CatalogADGroupName],[CatalogADGroupID],[IsProviderADBEnabledWithUC],[Environment],[IsProvisioned],[DemandNo])
VALUES('athena_unharmonized_ext','athena_unharmonized_ext','LUBESAMERICA-DATA-CAN-SELECT','v_DIY_Business_View_Catalog_Success_TC_Comma','select * from customer_b2b_lubes_lcs_dev.athena_unharmonized_ext.t_diy_test_delimiter__delimiter_tc5_provision',NULL,GETDATE(),'dinav.pandia@shell.com',NULL,NULL,'Y',NULL,NULL,NULL,'Test Case','N','Y','Y','AZ-DNA-GRP-SG-P-DS-447ad90d62e348088ecc',NULL,'Y','DEV','Y','000')
,('test','test','LUBESAMERICA-DATA-CAN-SELECT','v_DIY_Business_View_Success_TC','select * from hive_metastore.test.t_delimiter_tc10_pipe',NULL,GETDATE(),'dinav.pandia@shell.com',NULL,NULL,'N',NULL,NULL,NULL,'Test Case','N','N','Y',NULL,NULL,'N','DEV','N','000')

set identity_insert [#tempTB_BUSINESS_SCHEMA_BKUP] off;
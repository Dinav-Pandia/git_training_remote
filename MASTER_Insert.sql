--create table [#tempTB_MASTER_SCHEMA_BKUP] (
--[ID] [int] identity,
--[Layer] [varchar] (255) NULL,
--[SourceFolderPath] [nvarchar] (max),
--[DBGroupName] [varchar] (255) NULL,
--[SchemaName] [varchar] (255) NULL,
--[FileFormat] [varchar] (255) NULL,
--[TableName] [varchar] (255),
--[IsDeleted] [bit] NULL,
--[InsertedDateTime] [datetime] NULL,
--[InsertedBy] [varchar] (255) NULL,
--[LastUpdatedDateTime] [datetime] NULL,
--[LastUpdatedBy] [varchar] (255) NULL,
--[IsDIY] [varchar] (1) NULL,
--[ADGroupName] [varchar] (255) NULL,
--[Delimiter] [nvarchar] (max) NULL,
--[IsProvisioned] [varchar] (1));

----Changes from Vscode---

set identity_insert [#tempTB_MASTER_SCHEMA_BKUP] on;


insert [DIY].[TB_MASTER_SCHEMA_BKUP] ([ID],[Layer],[SourceFolderPath],[DBGroupName],[SchemaName],[FileFormat],[TableName],[IsDeleted],[InsertedDateTime],[InsertedBy],[LastUpdatedDateTime],[LastUpdatedBy],[IsDIY],[ADGroupName],[Delimiter],[IsProvisioned])
VALUES('Unharmonized','/PROJECT/P00002-DEV-ENRICHED/Unharmonised/NonSensitive/3rd_Party/DIY_TEST_PROVISION_WF/TC1','UNHARMONIZED-DATA-CAN-SELECT','athena_unharmonized_ext','CSV','DIY_Ext_Table_Catalog_Success_TC_Comma',NULL,GETDATE(),'AZ-DNA-SPN-N-DS-71f00a20e2fe4d2bb73c',NULL,NULL,'N','AZ-DNA-GRP-SG-N-DS-Athena-Dev-UnHarmonized',',','Y'),
('Unharmonized','/PROJECT/P00002-DEV-ENRICHED/Unharmonised/NonSensitive/3rd_Party/DIY_TEST_PROVISION_WF/TC2','UNHARMONIZED-DATA-CAN-SELECT','test','CSV','DIY_Ext_Table_Success_TC_Comma',NULL,GETDATE(),'AZ-DNA-SPN-N-DS-71f00a20e2fe4d2bb73c',NULL,NULL,NULL,NULL,',','Y')

insert [DIY].[TB_MASTER_SCHEMA_BKUP] ([ID],[Layer],[SourceFolderPath],[DBGroupName],[SchemaName],[FileFormat],[TableName],[IsDeleted],[InsertedDateTime],[InsertedBy],[LastUpdatedDateTime],[LastUpdatedBy],[IsDIY],[ADGroupName],[Delimiter],[IsProvisioned])
VALUES('Unharmonized','/PROJECT/P00002-DEV-ENRICHED/Unharmonised/NonSensitive/3rd_Party/DIY_TEST_PROVISION_WF_ERROR/TC1','UNHARMONIZED-DATA-CAN-SELECT','athena_unharmonized_ext','CSV','DIY_Ext_Table_Catalog_Failure_TC_Comma',NULL,GETDATE(),'AZ-DNA-SPN-N-DS-71f00a20e2fe4d2bb73c',NULL,NULL,'N','AZ-DNA-GRP-SG-N-DS-Athena-Dev-UnHarmonized',',','Y'),
('Unharmonized','/PROJECT/P00002-DEV-ENRICHED/Unharmonised/NonSensitive/3rd_Party/DIY_TEST_PROVISION_WF_ERROR/TC2','UNHARMONIZED-DATA-CAN-SELECT','test','CSV','DIY_Ext_Table_Failure_TC_Comma',NULL,GETDATE(),'AZ-DNA-SPN-N-DS-71f00a20e2fe4d2bb73c',NULL,NULL,NULL,NULL,',','Y')



set identity_insert [#tempTB_MASTER_SCHEMA_BKUP] off;
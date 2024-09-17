---Changes for checking fetch---
---2nd change---

BEGIN TRAN
DROP TABLE DATACATALOGUE.TEST_EXECUTION_CONFIG
COMMIT TRAN


select RequestItemID, RequestID, SourceItemName, TargetItemName from [DATACATALOGUE].[VW_MAPPING] where RequestID = '202' AND RequestItemID = '693'
SELECT REQUESTID,RequestItemID FROM [DATACATALOGUE].[TB_REQUEST_ITEM]
WHERE ObjectName = 'VP_WAIVER_FILE_LOAD'
AND SystemName = 'SHAREPOINT_OPTIMISERIGHT_EXCEL' and TargetZoneID=3

---Fetch Change---

SELECT SourceMetadataInfo FROM [DATACATALOGUE].[TB_REQUEST_ITEM]
WHERE ObjectName = 'VP_WAIVER_FILE_LOAD'
AND SystemName = 'SHAREPOINT_OPTIMISERIGHT_EXCEL' and TargetZoneID=3

---Test change over here--
CREATE TABLE DATACATALOGUE.TEST_EXECUTION_CONFIG
	(
	ObjectID int IDENTITY(1,1) NOT NULL,
	ObjectName varchar(MAX) NOT NULL,
	SystemName varchar(MAX) NOT NULL,
	SourceFolderPath varchar(MAX) NULL,
	SourceFilePath varchar(MAX) NULL,
	SourceFileFormat varchar(50) NULL,
	Delimiter varchar(5) NULL,
	QueryFilter varchar(MAX) NULL,
	ValidationType varchar(50) NOT NULL,
	TargetFileFormat varchar(50) NULL,
	IgnoreDuplicates varchar(1) NULL,
	TrimData varchar(7) NULL,
	IsDateFilterRequired varchar(1) NOT NULL,
	SourceCreationDateField varchar(50) NULL,
	TargetCreationDateField varchar(50) NULL,
	ExcludedColumns varchar(MAX) NULL,
	ZipType varchar(50) NULL,
	ManualSourceQuery varchar(MAX) NULL,
	ManualTargetQuery varchar(MAX) NULL,
	IsConfigCreated varchar(1) NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE DATACATALOGUE.TEST_EXECUTION_CONFIG ADD  DEFAULT ('N') FOR IsConfigCreated


USE [shell-01-eun-sqdb-jhcqvllcboqdfzowyohg]
GO

select * from DIY.TB_MASTER_SCHEMA_BKUP where ID= '16317'


INSERT INTO [DATACATALOGUE].[TEST_EXECUTION_CONFIG]
           ([ObjectName]
           ,[SystemName]
           ,[SourceFolderPath]
           ,[SourceFilePath]
           ,[SourceFileFormat]
           ,[Delimiter]
           ,[QueryFilter]
           ,[ValidationType]
           ,[TargetFileFormat]
           ,[IgnoreDuplicates]
           ,[TrimData]
           ,[IsDateFilterRequired]
           ,[SourceCreationDateField]
           ,[TargetCreationDateField]
           ,[ExcludedColumns]
           ,[ZipType]
		   ,[ManualSourceQuery]
		   ,[ManualTargetQuery]
           ,[IsConfigCreated])
     VALUES
           ('VP_WAIVER_FILE_LOAD'
           ,'SHAREPOINT_OPTIMISERIGHT_EXCEL'
           ,'dbfs:/FileStore/tables/dummy'
           ,'VP_WAIVER_FILE_LOAD__20240805080129.txt'
           ,'CSV'
           ,','
           ,''
           ,'DELTA'
           ,'DELTA'
           ,'N'
           ,'Y-Y-N'
           ,'N'
           ,'NA'
           ,'NA'
           ,'NA'
           ,'NA'
		   ,'NA'
		   ,'NA'
           ,'N')
GO




select * from DATACATALOGUE.TEST_EXECUTION_CONFIG
delete from DATACATALOGUE.TEST_EXECUTION_CONFIG




update DATACATALOGUE.TEST_EXECUTION_CONFIG
set IsConfigCreated='N'
select 

COMMIT TRAN
select * from DATACATALOGUE.TB_REQUEST_ITEM where ObjectName like '%Weather%'

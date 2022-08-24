/*
This script is to create the metadata tables.  
There are some example insert statements.  Edit these based
on your tables, containers, files, tables, etc. We'll run 
this code in batches.  Each run will be labled RUN #
*/

/* RUN 1 */ 

CREATE SCHEMA [ADF]
GO


CREATE TABLE [ADF].[ExtractTables](
	[DBName] [varchar](100) NULL,
	[TargetTableSchema] [varchar](10) NULL,
	[TableName] [varchar](100) NULL,
	[DateColumn] [varchar](100) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[NotDateColumn] [varchar](100) NULL,
	[TargetContainer] [varchar](20) NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO


CREATE TABLE [ADF].[PipelineLog](
	[ADFName] [varchar](100) NULL,
	[ADFPipelineName] [varchar](100) NULL,
	[ADFRowsCopied] [int] NULL,
	[ADFStarted] [datetime] NULL,
	[ADFFinished] [datetime] NULL,
	[FileName] [varchar](100) NULL,
	[BlobContainer] [varchar](100) NULL,
	[StagingTable] [varchar](100) NULL,
	[TargetTable] [varchar](100) NULL,
	[ColumnKey] [varchar](100) NULL,
	[SourceDBName] [varchar](100) NULL,
	[TargetTableSchema] [varchar](10) NULL,
	[TargetTableName] [varchar](100) NULL,
	[DateColumn] [varchar](100) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[NotDateColumn] [varchar](100) NULL,
	[TargetContainer] [varchar](20) NULL,
	[NotDateColumnValue] [varchar](100) NULL,
	[Pipeline_Name] [nvarchar](100) NULL,
	[Source] [nvarchar](500) NULL,
   [Destination] [nvarchar](500) NULL
) ON [PRIMARY]
GO

/* View what's in the tables */ 
select * from [ADF].[ExtractTables] 
select * from [ADF].[PipelineLog]

/* Insert metadata in the table that drives our extract pipelines
Update with your Azure SQL database name - is azsqlDB in paramfile06  */ 
/* RUN 2 */ 
INSERT [ADF].[ExtractTables] ([DBName], [TargetTableSchema], [TableName], [NotDateColumn], [TargetContainer], [IsActive])
VALUES (N'<azsqldb>', N'COW', N'Biometrics', N'Animal',  N'cow', 1)

--
INSERT [ADF].[ExtractTables] ([DBName], [TargetTableSchema], [TableName], [DateColumn], [StartDate], [EndDate], [TargetContainer], [IsActive]) VALUES 
(N'<azsqldb>', N'COW', N'Biometrics', N'BirthDate', CAST(N'2019-02-18' AS Date), CAST(N'2019-02-22' AS Date), N'cow', 1)




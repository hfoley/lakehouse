CREATE DATABASE [Biometrics]
GO
USE Biometrics
GO
CREATE SCHEMA [COW]
GO

IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseParquetFormat') 
	CREATE EXTERNAL FILE FORMAT [SynapseParquetFormat] 
	WITH ( FORMAT_TYPE = PARQUET)
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'cow_<azstoragename2>_dfs_core_windows_net') 
	CREATE EXTERNAL DATA SOURCE [cow_<azstoragename2>_dfs_core_windows_net] 
	WITH (
		LOCATION = 'abfss://cow@<azstoragename2>.dfs.core.windows.net' 
	)
GO

CREATE EXTERNAL TABLE [COW].CowBiometrics (
	[Order] float,
	[Pen] float,
	[Animal] float,
	[Gender] nvarchar(4000),
	[BirthDate] datetime2(7),
	[Age_days] float,
	[Date] datetime2(7),
	[WitherHeight] float,
	[HipHeight] float,
	[WidthHeight] float,
	[GirthCirc] float,
	[BCS] float,
	[BW] float
	)
	WITH (
	LOCATION = '*.parquet',
	DATA_SOURCE = [cow_<azstoragename2>_dfs_core_windows_net],
	FILE_FORMAT = [SynapseParquetFormat]
	)
GO


SELECT TOP 100 * FROM COW.CowBiometrics
GO

SELECT DISTINCT([Animal])
FROM COW.CowBiometrics




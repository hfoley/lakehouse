# Building Lakehouse with Azure Synapse Analytics
In this workshop we'll show how we can setup a full data lake house architecture.  We'll build out the components in Azure using PowerShell automated scripts, including metadata driven pipelines to saturate your data lake.  We'll also build out external tables and views and connect Power BI to them.  
		
	1. Build components in Azure with PowerShell scripts 
	2. Build and run metadata driven pipeline to build data lake
	3. Build external table/view in Synapse Analytics with serverless SQL pool 
    4. Connect to table with Power BI  


	
The architecture of the solution built in this workshop is diagrammed below.  

![alt text](https://github.com/hfoley/EDU/blob/master/images/Hope%20Data%20Lakehouse01.jpg?raw=true)

![alt text](https://github.com/hfoley/EDU/blob/master/images/Hope%20Data%20Lakehouse02.jpg?raw=true)

# Workshop Modules
The workshop is broken into the modules below.  Complete 00 PreReqs prior to the workshop.  We'll go through 01-03 together.  

* [00 PreReqs](https://github.com/hfoley/lakehouse/tree/main/00%20PreReqs)   - contains files and scripts to help verify pre-reqs
* [01 Create Resources](https://github.com/hfoley/lakehouse/tree/main/00%20PreReqs)   - contains PowerShell scripts to build all the Azure components in the solution. 
* [02 Create Pipeline Parts](https://github.com/hfoley/lakehouse/tree/main/02%20Create%20Pipeline%20Parts) - contains all the files to build the pipelines in Synapse workspace
* [03 Create SQL Parts](https://github.com/hfoley/lakehouse/tree/main/03%20Create%20SQL%20Parts) - contains all the SQL scripts we'll use to build/populate metadata tables

## Asset List - These items will be created in your Azure subscription 
At the completion of this workshop you'll build these assets in Azure.  
  
	1. Azure Resource Group
	2. Azure SQL Server & Database - source table to extract data and metadata tables location 
	3. Azure Data Lake Gen 2 - Synapse Analytics requires an ADLS Gen 2 account for system related usage
	3. Azure Data Lake Gen 2 - Separate ADLS Gen 2 we'll use as our data lake and extracted parquet files 
	4. Azure Synapse Workspace - workspace where pipelines and SQL serverless pool, external tables, and views will live
	5. Azure Synapse - SQL Date Based Extract pipeline - extracts data from SQL Server tables specified (example uses Azure SQL DB created or specified) by a date range
	6. Azure Synapse - SQL Date Not Date Based Extract pipeline - extracts data from SQL Server tables specified (example uses Azure SQL DB created or specified) by a specified value 



	

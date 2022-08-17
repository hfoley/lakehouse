# Building Lakehouse with Azure Synapse Analytics
This workshop we'll show how we can setup a full data lake house architecture, from soup to nuts.  We'll build out the components in Azure using automated scripts, including metadata driven pipelines to saturate your data lake.  We'll also build out tables and connect Power BI to them to utilize the data.  
		
	1. Build components in Azure with PowerShell scripts 
	2. Build and run metadata driven pipeline to build data lake
	3. Build table/view in Synapse workspace 
    4. Connect to table with Power BI  


# The Data Lakehouse Architecture
This solution contains code to help build the components of an Azure Synapse Analytics environment including metadata tables and some metadata driven extract and load pipelines. This solution contains PowerShell, SQL scripts, and json files to build out all the components listed below.   
	
The architecture of the solution diagrammed below.  

![alt text](https://github.com/hfoley/EDU/blob/master/images/Hope%20Data%20Lakehouse01.jpg?raw=true)

![alt text](https://github.com/hfoley/EDU/blob/master/images/Hope%20Data%20Lakehouse02.jpg?raw=true)

# Parameter File Driven 
All the files ran will be driven off of one parameter file.  You'll need to fill this out with either existing components in Azure or ones that will be created.   
	
Below are the details of the parameter file to fill out.  

![alt text](https://github.com/hfoley/EDU/blob/master/images/SynapseLoadDiagram.jpg?raw=true)


## Asset List - These items will be created in your Azure subscription 
	1. Azure Resource Group
	2. Azure SQL Server & Database - metadata tables location 
	3. Azure Data Lake Gen 2 - location to land extracted parquet files 
	4. Azure Synapse Workspace - workspace where pipelines and SQL dedicated pool will live
	5. Azure SQL DB metadata tables to drive Synapse pipelines
	6. Azure Synapse - SQL Date Based Extract pipeline - extracts data from SQL Server tables specified (example uses Azure SQL DB created or specified) by a date range
	7. Azure Synapse - SQL Date Not Date Based Extract pipeline - extracts data from SQL Server tables specified (example uses Azure SQL DB created or specified) by a specified value 


* [01 Create Resources](https://github.com/hfoley/SynapseLoadV2/tree/master/01%20Create%20Resources)   - contains PowerShell scripts to build all the Azure components in the solution. 
* [02 Grant Rights](https://github.com/hfoley/SynapseLoadV2/tree/master/02%20SQL%20Scripts) - contains the SQL Server script to create the metadata tables and insert data in your Azure SQL DB.  
* [03 Create Pipeline Parts](https://github.com/hfoley/SynapseLoadV2/tree/master/03%20Sample) - contains all the files if you'd like to setup a sample source/destination.  
	

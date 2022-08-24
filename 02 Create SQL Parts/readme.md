# Building out SQL parts 
In this section we build out the things we'll need inside the Azure SQL database so we'll use the SQL client.  Here's an overview of what we'll do in this module.  
		
	1. Build the sample table we'll use as a source in Azure SQL db
	2. Build the metadata tables that will drive our extract pipelines
	3. 


### Step 1 - Build our sample source table ###
For this workshop our sample source will be the COW.Biometrics table that we'll build using the script below.  

Navigate to your Azure SQL Server in Azure portal. Within the Azure portal you'll see an Overview section at the top left pane. This will contain the servername to use for connecting any tools to your SQL DB. Hover over it for an option to copy to clipboard. 

Open the SQL client tool. Create a server connection with the info in clipboard.

Connect to the Azure SQL database we created before and open the SQL query below and run.  Make sure to change your context to the database we created instead of master.  

`CowBiometricsSampleSource.sql`

This script creates COW schema and Biometrics table.  You'll see a rowcount of 409 records and then a small sample of our cow data. 

### Step 2 - Build metadata tables that drive pipelines ###
Open the query below connected to the Azure SQL database.  

`CowSampleMetadataCreate.sql`

You will need to update the insert statement based on your paramfile06 value for azsqldb.  You may want to step through and run segments of the code. There are comments noting good stoping points.  

You're now ready to move to 03 Build Pipelines module.  Go there and we'll begin to build our pipelines in Synapse Analytics workspace.  
[03 Build Pipelines](https://github.com/hfoley/lakehouse/tree/main/03%20Build%20Pipelines) 

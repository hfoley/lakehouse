# Building out SQL parts 
In this section we build out the things we'll need inside the Azure SQL database.  Here's an overview of what we'll do in this module.  
		
	1. Build the sample table we'll use as a source in Azure SQL db
	2. Build the metadata tables that will drive our extract pipelines
	3. 


### Step 1 - build our sample source table ###
For this workshop our sample source will be the COW.Biometrics table that we'll build using the script below.  Connect to the Azure SQL database we created before and open the SQL query below and run.    

`CowBiometricsSampleSource.sql`

### Step 2 - build metadata tables that drive pipelines ###
Open the query below connected to the Azure SQL database as well and run.  

`CowSampleMetadataCreate.sql`



You're now ready to move to 03 Build Pipelines module.  Go there and we'll begin to build our pipelines in Synapse Analytics workspace.  
[02 Build Pipelines](https://github.com/hfoley/lakehouse/tree/main/03%20Build%20Pipelines) 

# Building out the pipeline pieces 
In this section we build out the pieces that combine to build our 2 extract pipelines.  Here's an overview of what we'll do in this module.  
		
	1. Run the script to build the pipeline pieces 
	2. Update the linked service to Azure SQL credentials 
    3. Run the pipeline 
    4. Validate in Synapse studio the parquet files land 


### Step 1 - Verify paramfile06.json ###
Type the following command to view the contents of yoru paramfile06.json file has been updated in Azure Cloud Shell environment.  Validate the values are as you want them.    

`get-content paramfile06.json`

### Step 2 - Run script to create pipelines and thier parts ###
Navigate in Azure cloud shell to the lakehouse folder location containing all the PowerShell script files.  Run the command below:  

`./"03 - CreateLakehousePipelineParts.ps1" -filepath ./paramfile06.json`

You'll get this message: 
*WARNING: To sign in, use a web browser to open the page https://microsoft.com/devicelogin and enter the code __ to authenticate.

Copy the code shown into the clipboard and open new browser tab to the location above.  Paste in the code given and hit next. You will get prompted to sign in.  Use your account granted access to build in Azure and specified in the adminuser in paramfile06.  You may be prompted for MFA if enabled. Confirm you are using PowerShell and hit continue. 

Navigate back to Cloud shell browser window.  You'll get notifications when each creation starts.  You'll see messages like this when the script starts to run.  

![alt text](https://github.com/hfoley/EDU/blob/master/images/lakehouse/createscript01.jpg?raw=true) 

### Step 2 - Verify pieces and update linked server ###
Navigate to your Synpase studio and login.  Within the far left pane choose manage (toolbox icon).  Choose linked services.  Verify we have 2 linked services.  

Select the AzureSQLDBLS linked service for Azure SQL DB.  Start the interactive authoring in the Integration runtime section.  

Update the linked service user name and password with what we set for the SQL admin account earlier.  Test connectivity and verify successful connection. 

### Step 3 - Run the pipeline ###
Navigate to the Integrate pane (pipe icon) and expand Pipelines. 

Select the SQL Date Based Extract PL. 

Hit Debug button to run the pipeline.  Verify pipeline runs successfully. 

### Step 4 - verify extract files ###
Navigate to the Data pane (database icon) and choose linked.  

Expand Azure Data Lake Storage Gen 2

You should see one called DataLakeLS (name will be from paramfile06 azstoragename2 value).  Expand it. 

Expand the cow container. You should see a parquet file ParquetBiometricsYYYY-MM-DD-tttt.parquet.  Congrats! You extracted data to your data lake. 

### Step 5 - run extract on one cow ###
Navigate back to our pipelines.  Select SQL Not Date Based Extract PL.  This pipeline is a pattern that uses parameters to drive the extract.  

Hit Debug button to run.  You'll need to supply 2 parameters 
    1. NotDateColumnValue - value we'll use extract
    2. NotDateColumn - the column we'll base our where clause

    Supply these values for the parameters in the image below. 

    image to come 

Verify this file is extracted.  Right click and select New SQL Script > select top 100

This will allow you to query what is in the parquet file.  Repeat and verify the other file we generated. 

You're now ready to move to 04 Build Pipelines module.  Go there and we'll begin to build our pipelines in Synapse Analytics workspace.  
[04 Build Synapse Parts](https://github.com/hfoley/lakehouse/tree/main/04%20Build%20Synapse%20Parts) 

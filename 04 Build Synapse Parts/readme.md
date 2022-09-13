# Building out the Synapse parts
In this section we build out the last mile of our lakehouse architecture inside Synapse Analytics.  Here's an overview of what we'll do in this module.  
		
	1. Import the scripts into Syanpse studio
	2. Run script to build the Serverless database and external table 
    3. Run the script to build the view 
    4. Connect the Power BI template to Synapse Serverless SQL  

    
**update down from here 

### Step 1 - Import the scripts ###
Navigate within your Synpase studio and login.  In the far left pane choose Develop (paper icon).  Choose the + at the top of the middle pane.  Choose the Import option.  

Navigate to the 01 - Cow External Table.sql script you have saved locally. 

Update the script with the values for your environment.  Hit cntrl-h to get to the replace to help with that.  You'll want to replace <azstoragename2> with the value you have in paramfile06 file for that variable.  Update with your value from paramfile06 file.


### Step 2 - Run script to create external table ###
Step thru and run the code.  This builds a database, schema, external file format, external data source, and external table.  

Navigate to Data in the left pane.  Select Workspace and expand SQL database.  You should now see Biometrics database now. If you don't do a refresh (top right).  Verify you see the same things as before.  

### Step 3 - Run script to create view ###
We'll build a view on top of the external table to further narrow down the scope of what we'll consume with Power BI.  

Import the 02 - Create PBI View script.  

Run the script.  

Verify you can see a view. It won't return data yet.  

### Step 3 - Capture Serverless SQL endpoint ###
We'll now get our connection information to connect any SQL tool to the SQL endpoint.  

Navigate in Azure portal to Synapse.  

Navigate to overview pane.  You'll see 3 endpoints.  Copy the Serverless SQL endpoint one. 

### Step 4 - Connect Power BI to Synapse ###
We are now going to connect Power BI template file to the serverless SQL endpoint. 

Open pbit file.  Paste into the parameter the serverless sql endpoint in your clipboard. You'll need to authenticate.  

When you get connected to the data it doesn't show anything.  That's intentional.  We built our view to look at the last 2 months of data.  There isn't any so we'll create some.  Open a SQL client connection to our source Azure SQL database.  Open the query CowBiometricsSampleInsert.sql.  This will insert new records on a whole new cow.  

Navigate back in Synapse studio to our SQL Not Date Based Pipeline.  Run the pipeline again but use Animal 7777.  

Now we'll refresh our Power BI report.  Hit the refresh button.  You should see records on our new cow land just because a parquet file landed in the data lake.  

All done! insert applause/whoops/tears of joy 

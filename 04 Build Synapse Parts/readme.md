# Building out the Synapse parts
In this section we build out the last mile of our lakehouse architecture inside Synapse Analytics.  Here's an overview of what we'll do in this module.  
		
	1. Import the scripts into Syanpse studio
	2. Run script to build the Serverless database and external table 
    3. Run the script to build the view 
    4. Connect the Power BI template to Synapse Serverless SQL  

    
***update down from here 

### Step 1 - Import the scripts ###
Navigate to your Synpase studio and login.  Within the far left pane choose Develop (paper icon).  Choose the ... to the right of SQL Scripts. 

Choose import.  

Navigate to the 01 - Query Cow Parquet.sql script.   

Run and explore the parquet files directly.  

### Step 2 - Run script to create external table ###
Import the X script. 

Run the script to create the external table. 

View how to see it directly in serverless. 

### Step 3 - Run script to create view ###
We'll build a view on top of the external table to further narrow down the scope of what we'll consume with Power BI.  

Import the X script.  

Run the script.  

Verify you can see a view. 

### Step 3 - Capture Serverless SQL endpoint ###
We'll now get our connection information to connect any SQL tool to the Serverless endpoint.  

Navigate in Azure portal to Synapse.  

Navigate to overview pane.  You'll see 3 endpoints.  Copy the serverless SQL one. 

### Step 4 - Connect Power BI to Synapse ###
We are now going to connect Power BI template file to the serverless SQL endpoint. 

Open pbit file.  Paste into the parameter the serverless sql endpoint in your clipboard. You'll need to authenticate.  

Delete one of the parquet files from ADLS and hit refresh.  Verify your view updated with different results. 

All done! insert applause/whoops 
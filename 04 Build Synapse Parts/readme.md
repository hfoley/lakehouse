# Building out the Synapse parts
In this section we build out the last mile of our lakehouse architecture inside Synapse Analytics.  Here's an overview of what we'll do in this module.  
		
	1. Import the scripts into Syanpse studio
	2. Run script to build the Serverless database and external table 
    3. Run the script to build the view 
    4. Connect the Power BI template to Synapse Serverless SQL  

    
***update down from here 

### Step 1 - Verify paramfile06.json ###
Type the following command to view the contents of yoru paramfile06.json file has been updated in Azure Cloud Shell environment.  Validate the values are as you want them.    

`get-content paramfile06.json`

### Step 2 - Run script to create resources ###
Navigate in Azure cloud shell to the lakehouse folder location containing all the PowerShell script files.  Run the command below:  

`./"01 - CreateLakehouseResources.ps1" -filepath ./paramfile06.json`

You'll get this message: 
*WARNING: To sign in, use a web browser to open the page https://microsoft.com/devicelogin and enter the code __ to authenticate.

Copy the code shown into the clipboard and open new browser tab to the location above.  Paste in the code given and hit next. You will get prompted to sign in.  Use your account granted access to build in Azure and specified in the adminuser in paramfile06.  You may be prompted for MFA if enabled. Confirm you are using PowerShell and hit continue. 

Navigate back to Cloud shell browser window.  You'll get notifications when each creation starts.  You'll see messages like this when the script starts to run.  

![alt text](https://github.com/hfoley/EDU/blob/master/images/lakehouse/createscript01.jpg?raw=true) 


To avoid putting usernames and passwords in any files, you will be prompted for the SQL admin user and password.  You will get 2 prompts as you'll create one for the Azure SQL database and the Synapse Analytics workspace.  

Login to the Azure portal (https://portal.azure.com/) and verify the items are created in Azure in the resource group specified in your paramfile06. 

The creation script tends to run for about XX minutes in my testing. 

### Step 3 - Verify and connect to the Azure SQL database ###
Navigate to your Azure SQL Server in Azure portal.  Within the Azure portal you'll see an Overview section at the top left pane.  This will contain the servername to use for connecting any tools to your SQL DB.  Hover over it for an option to copy to clipboard.  You'll see separate items for the SQL Server and the SQL database as there are settings at both levels you can set.  

Navigate in the left pane to Networking under the Security section.  Review the options and that your client IP address is allowed.  



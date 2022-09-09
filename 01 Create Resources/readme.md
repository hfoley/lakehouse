# Building out resources in Azure
We are now ready to run the PowerShell scripts to build things out in Azure.  Here's an overview of what we'll do in this module.  
		
	1. Verify paramfile06.json 
	2. Run script to create resources
	3. Verify and connect to the Azure SQL database
 	4. Verify and connect to the Synapse Analytics workspace 
    5. Run script to grant privledges to data lake



### Step 1 - Verify paramfile06.json ###
Make sure you are in your lakehouse folder within the Azure cloud shell environment.  Type the following command to view the contents of your paramfile06.json file in Azure Cloud Shell environment.  Validate the values are as you want them one last time.  

`get-content paramfile06.json`

### Step 2 - Run script to create resources ###
Run the command below:  

`./"01 - CreateLakehouseResources.ps1" -filepath ./paramfile06.json`

You'll get this message: 
*WARNING: To sign in, use a web browser to open the page https://microsoft.com/devicelogin and enter the code __ to authenticate.

Copy the code shown into the clipboard and open new browser tab to the location above.  Paste in the code given and hit next. You will get prompted to sign in.  Use your account granted access to build in Azure and specified in the adminuser in paramfile06.  You may be prompted for MFA if enabled. Confirm you are using PowerShell and hit continue. 

Navigate back to Cloud shell browser window.  You'll get notifications when each creation starts.  You'll see messages like this when the script starts to run.  

![alt text](https://github.com/hfoley/EDU/blob/master/images/lakehouse/createscript01.jpg?raw=true) 


To avoid putting usernames and passwords in any files, you will be prompted for the SQL admin user and password.  You will get 2 prompts as you'll create one for the Azure SQL database and the Synapse Analytics workspace.  

Login to the Azure portal (https://portal.azure.com/) and verify the items are created in Azure in the resource group specified in your paramfile06. 

The creation script tends to run for about 12 minutes in my testing. 

### Step 3 - Verify and connect to the Azure SQL database ###
Navigate to your Azure SQL Server in the Azure portal.  Within the Azure portal you'll see an Overview section (left pane).  This will contain the servername to use for connecting any tools to your SQL DB.  Hover over it for an option to copy to clipboard.  You'll see separate items for the SQL Server and the SQL database as there are settings at both levels you can set.  

Open the SQL client tool.  Supply the servername for the Azure SQL Server (<azsqlserver>.database.windows.net) we copied from the clipboard.  You'll want to change the authentication to SQL Server Authentication and supply the user/password you set during the running of the script.  You should see our SQL database listed (azsqlDB value from paramfile06.json).  

### Step 4 - Verify and connect to the Synapse Analytics workspace  ###
Navigate to your Synapse workspace within the Azure portal. You'll see a link in getting started section (or workspace web URL).  Click to open Synapse Studio and login.  

Verify you can connect into the Azure Syanpse Analytics Studio. 

### Step 5 - Run script to grant privledges to data lake  ###
Navigate in Azure cloud shell to the lakehouse folder location containing all the PowerShell script files.  Run the command below:  

`./"02 - LakehouseGrantRights.ps1" -filepath ./paramfile06.json`

You'll need to login like before.  This script will grant the Synapse managed service identity access to the storage account we will use for our data lake the level of storage blob contributor.  It also will grant this access to the admin user in the paramfile06.  This right is required to view the data lake through Synapse studio even if there's inherited rights.  

You're now ready to move to 02 Create SQL Parts module.  Go there and we'll begin to build our components in the Azure SQL database.  
[02 Create SQL Parts](https://github.com/hfoley/lakehouse/tree/main/02%20Create%20SQL%20Parts) 

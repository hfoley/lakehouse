# Building out resources in Azure
We are now ready to run the PowerShell scripts to build things out in Azure.  Here's an overview of what we'll do in this module.  
		
	1. Verify paramfile06.json in Azure 
	2. Run script to create resources
	3. Verify and connect to the Azure SQL database
 	4. Verify and connect to the Synapse Analytics workspace 
    5. Run script to grant privledges to data lake



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

image

To avoid putting usernames and passwords in any files, you will be prompted for the SQL admin user and password.  You will get 2 prompts as you'll create one for the Azure SQL database and the Synapse Analytics workspace.  

Login to the Azure portal (https://portal.azure.com/) and verify the items are created in Azure in the resource group specified in your paramfile06. 

The creation script tends to run for about XX minutes. 





### Step 3 - Verify and connect to the Azure SQL database ###

Navigate to your Azure SQL Server.  Overview will contain the servername to use for connecting.  Hover over it for an option to copy to clipboard.  

Navigate in the left pane to Networking under the Security section.  Review the options and that your client IP address is allowed.  

Open the SQL client tool.  Create a server connection with the info in clipboard.  

### Step 4 - Verify and connect to the Synapse Analytics workspace  ###

Do the same for your Synapse workspace in the Azure portal. You can remove some of the approved IPs if different from yours.  They are created from the cloud shell environment and needs separate IP allowed for connectivity.  

Verify you can connect into the Azure Syanpse Analytics Studio. 

### Step 5 - Run script to grant privledges to data lake  ###

![alt text](https://github.com/hfoley/EDU/blob/master/images/lakehouse/CloudShell02.jpg?raw=true)

5. Type the command:  dir and hit enter.  you should see at least one folder called clouddrive.  
6. Navigate to it by typing the command:  cd cl*  
7. Let's navigate to the fileshare via the Azure portal or Azure Storage Explorer.  We'll create a folder within the fileshare listed in #4.  You'll see a folder called ".cloudconsole" already for system use.  
8. Create a folder called lakehouse. 
9. Verify doing dir within Azure Cloud Shell that you can now see lakehouse folder.  Navigate to that folder by typing: "cd la*".  If you need to navigate back up you can do that by typing cd..



You're now ready to move to 01 Create Resources module.  Go there and we'll begin to build everything in Azure.  
[01 Create Resources](https://github.com/hfoley/lakehouse/tree/main/01%20Create%20Resources) 

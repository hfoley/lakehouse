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

./"01 - CreateLakehouseResources.ps1" -filepath ./paramfile06.json

You'll get this message: 
*WARNING: To sign in, use a web browser to open the page https://microsoft.com/devicelogin and enter the code <code> to authenticate.#
Copy the code shown.  
Open a new browser tab and navigate to link above.  
Paste in the code given. Hit next. 
Sign in with your account granted access to build in Azure. 
You may be prompted for MFA if enabled. 
Confirm you are using PowerShell and hit continue. 
Navigate back to Cloud shell. 
You'll get notifications when each creation starts.  You'll see messages like this when the script starts to run.  

image

To avoid putting usernames and passwords in any files, you will be prompted for the SQL admin user and password.  You will get 2 prompts as you'll create one for the Azure SQL database and the Synapse Analytics workspace.  

Login to the Azure portal (https://portal.azure.com/) and verify the items are created in Azure in the resource group specified in your paramfile06. 

The creation script tends to run for about XX minutes. 

Navigate to your Azure SQL Server.  Overview will contain the servername to use for connecting.  Hover over it for an option to copy to clipboard.  

Navigate in the left pane to Networking under the Security section.  Review the options and that your client IP address is allowed.  

Open the SQL client tool.  Create a server connection with the info in clipboard.  

Do the same for your Synapse workspace in the Azure portal. You can remove some of the approved IPs if different from yours.  They are created from the cloud shell environment and needs separate IP allowed for connectivity.  

Verify you can connect into the Azure Syanpse Analytics Studio. 

Now ready to move to next module.  



### Step 3 - Verify and connect to the Azure SQL database ###

### Step 4 - Verify and connect to the Synapse Analytics workspace  ###

### Step 5 - Run script to grant privledges to data lake  ###

![alt text](https://github.com/hfoley/EDU/blob/master/images/lakehouse/CloudShell02.jpg?raw=true)

5. Type the command:  dir and hit enter.  you should see at least one folder called clouddrive.  
6. Navigate to it by typing the command:  cd cl*  
7. Let's navigate to the fileshare via the Azure portal or Azure Storage Explorer.  We'll create a folder within the fileshare listed in #4.  You'll see a folder called ".cloudconsole" already for system use.  
8. Create a folder called lakehouse. 
9. Verify doing dir within Azure Cloud Shell that you can now see lakehouse folder.  Navigate to that folder by typing: "cd la*".  If you need to navigate back up you can do that by typing cd..

### Step 3 - Download all the files ###
All the files we'll use for the workshop are located in this location in the repo.  Download all these files to a location on your machine locally. 

[Full Scripts](https://github.com/hfoley/lakehouse/tree/main/scripts) 

### Step 3 - Run 00 - LakehousePreReqCheck.ps1 ###
1. We'll use lakehouse as the folder where we'll upload our scripts.  Upload the 00 - LakehousePreReqCheck.ps1 file into lakehouse folder location. 
2. Use dir to verify you can see the file in cloud shell.  
3. You can now run the powershell script by typing: ./"00 - LakehousePreReqCheck.ps1" and hit enter. 
4. This will check for cmdlets and resource providers need to move forward.  Any missing will error and display syntax to install. 

![alt text](https://github.com/hfoley/EDU/blob/master/images/lakehouse/CloudShell03.jpg?raw=true)
		
	
### Step 4 - Client tool for SQL queries ###
Later in the workshop we'll need to run SQL queries against the Azure SQL DB we create.  If you don't have one you can use Azure Data Studio or SQL Server Management Studio. https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver16

### Step 5 - Power BI Desktop ###
Later in the workshop we'll setup a Power BI report to our Synapse Analytics Serverless SQL pool.  Install Power BI Desktop - https://powerbi.microsoft.com/en-us/desktop/

### Step 6 - Update the paramfile06.json parameter file ### 
All the PowerShell scripts use this file and it's the only one you need to update.  Below is a view that details what you need to fill out.  Change all the items that have <> in them with the values relevant to the Azure subscription we'll install items.  You can supply existing resources in this paramfile as well.  The PowerShell will check first if the component exists before creating it.  Note some naming tips in the image below.  You can see all naming rules for Azure components https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules

![alt text](https://github.com/hfoley/EDU/blob/master/images/lakehouse/paramfile06.jpg?raw=true)

### Step 7 - Upload the scripts into Azure CLI location ### 
It's easier to upload multiple files using the storage location.  Just like we did in Step 2 and 3, you can navigate to the lakehouse folder in the browser using storage browser or Azure Storage Explorer.  Upload all the rest of the PowerShell (*.ps1) and json (*.json) files including your updated paramfile06.json file into the lakehouse folder.  Verify you can see all the files in Azure Cloud Shell environment in lakehouse by doing dir.  You do not need to upload any of the SQL scripts (*.sql) or Power BI (*.pbit) files.  

![alt text](https://github.com/hfoley/EDU/blob/master/images/lakehouse/scripts01.jpg?raw=true)

You're now ready to move to 01 Create Resources module.  Go there and we'll begin to build everything in Azure.  
[01 Create Resources](https://github.com/hfoley/lakehouse/tree/main/01%20Create%20Resources) 

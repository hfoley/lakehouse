# Building Lakehouse with Synapse Pre-Reqs
Below is a list of required items needed to be able to run through the workshop in your own Azure environment.  
		
	1. Azure subscription and owner level at least on resource group level 
	2. Ability to run scripts in Azure Cloud Shell (requires storage account for script storage/system files). 
	3. Run pre-req file 00 - LakehousePreReqCheck.ps1 to check/install modules.  
	4. Client tool to connect and run queries against an Azure SQL database (i.e Azure Data Studio / SSMS)
 	5. Power BI Desktop 
	6. Update the paramfile06.json file with the values you want items to be in Azure
	7. Upload the scripts you intend to run into the lakehouse folder we created in Azure Cloud Shell environment/storage fileshare 
	8. Optional - Azure Storage Explorer 
  



### Step 1 - Rights needed in Azure ###
This workshop has been tested with different levels of access and requires owner on the resource group level.  That was required to assign rights to the Synapse MSI to data lake storage.  

### Step 2 - Setup Azure Cloud Shell environment ###
We'll utilize Azure Cloud Shell to run the PowerShell scripts for this workshop.  Below are the steps to set this up.  You will need an Azure storage account.  

1. Navigate to and login to the Azure portal (azure.portal.com).  Start Azure Cloud Shell by clicking the  >_ icon in top right.  
2. You will be prompted for Bash or PowerShell if you've never set it up before.  Choose PowerShell. 
3. You will be prompted to create or connect to existing storage account and fileshare.  You can more details on storage needs at  https://docs.microsoft.com/en-us/azure/cloud-shell/persisting-shell-storage.  
4. You will then see the Azure Cloud Shell prompt.  You can verify your storage account info by typing get-clouddrive in prompt and hit enter.  

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

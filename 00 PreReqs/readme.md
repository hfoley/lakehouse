# Building Lakehouse with Synapse Pre-Reqs
Below is a list of required items needed to be able to run through the workshop in your own Azure environment.  
		
	1. Azure subscription and contributor level at least on resource group level 
	2. Ability to run scripts in Azure Cloud Shell (requires storage account for script storage/system files). 
	3. Run pre-req file to check/install modules.  
	4. Client tool to connect and run queries against an Azure SQL database (i.e Azure Data Studio / SSMS)
 	5. Power BI Desktop 
	6. Optional - Azure Storage Explorer 
  



### Step 1 - Rights needed in Azure ###
This workshop has been tested with at least contributor on the resource group level.  

### Step 2 - Setup Azure Cloud Shell environment ###
We'll utilize Azure Cloud Shell to run the PowerShell scripts for this workshop.  Below are the steps to set this up.  You will need an Azure storage account.  

	1. Navigate to and login to the Azure portal (azure.portal.com).  Start Azure Cloud Shell by clicking the  >_ icon in top right.  
	2. You will be prompted for Bash or PowerShell if you've never set it up before.  Choose PowerShell. 
	3. You will be prompted to create or connect to existing storage account and fileshare.  You can more details on storage needs at  https://docs.microsoft.com/en-us/azure/cloud-shell/persisting-shell-storage.  
	4. You will then see the Azure Cloud Shell prompt.  You can verify your storage account info by typing get-clouddrive
	
	 `code(get-clouddrive)`

	![alt text](https://github.com/hfoley/EDU/blob/master/images/Hope%20Data%20Lakehouse01.jpg?raw=true)



	
The architecture of the solution built in this workshop is diagrammed below.  

![alt text](https://github.com/hfoley/EDU/blob/master/images/Hope%20Data%20Lakehouse01.jpg?raw=true)

![alt text](https://github.com/hfoley/EDU/blob/master/images/Hope%20Data%20Lakehouse02.jpg?raw=true)
		


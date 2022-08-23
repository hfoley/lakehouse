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
4. You will then see the Azure Cloud Shell prompt.  You can verify your storage account info by typing get-clouddrive in prompt and hit enter.  

![alt text](https://github.com/hfoley/EDU/blob/master/images/lakehouse/CloudShell02.jpg?raw=true)

5. Type the command:  dir and hit enter.  you should see at least one folder called clouddrive.  
6. Navigate to it by typing the command:  cd cl*  
7. Let's navigate to the fileshare via the Azure portal or Azure Storage Explorer.  We'll create a folder within the fileshare listed in #4.  You'll see a folder called ".cloudconsole" already for system use.  
8. Create a folder called lakehouse. 
9. Verify doing dir within Azure Cloud Shell that you can now see lakehouse folder.  Navigate to that folder by typing: "cd la*".  If you need to navigate back up you can do that by typing cd..
10. We'll use lakehouse as the folder where we'll upload our scripts.  Upload the 00 - LakehousePreReqCheck.ps1 file into lakehouse folder location. 
11. Use dir to verify you can see the file in cloud shell.  
12. You can now run the powershell script by typing: ./"00 - LakehousePreReqCheck.ps1" and hit enter. 
13. This will check for cmdlets and resource providers need to move forward.  Any missing will error and display syntax to install. 

	
The architecture of the solution built in this workshop is diagrammed below.  



![alt text](https://github.com/hfoley/EDU/blob/master/images/Hope%20Data%20Lakehouse02.jpg?raw=true)
		


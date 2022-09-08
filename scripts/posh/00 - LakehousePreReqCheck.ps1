<# Adjust based on what you're doing. (i.e may not need Purview) 
#>
Write-Host "Azure cmdlet checking..."
$modules = ("Az.Storage","Az.Synapse")
$modulecheck = 
foreach ($module in $modules)
        {
            if (Get-Module -Name $module -ListAvailable) 
            {
             Get-Module -Name $module -ListAvailable | Select-Object name, version}
            else
            {Write-Host -ForegroundColor Red "$module module does not exist. To install run command: Install-Module -Name $module" } 
        } 

#write-host $modulecheck.name " -- " $modulecheck.version 
#$modulecheck | Select-Object name,version
$modulecheck | format-table

Write-Host "Resource provider checking..."
$providers = ("Microsoft.Storage","Microsoft.Synapse")
$providercheck = 
foreach ($provider in $providers)
        {
         if (Get-AzResourceProvider -ProviderNamespace $provider | Where-Object RegistrationState -eq "Registered")
            {
                Get-AzResourceProvider -ProviderNamespace $provider | Where-Object RegistrationState -eq "Registered" | Select-Object ProviderNamespace, RegistrationState
            }
            else
            {
                Write-Host -ForegroundColor Red "$provider provider not registered. To install run command: Register-AzureResourceProvider -ProviderNamespace "$provider
            }
        }

#write-host $providercheck.ProviderNamespace "namespace has " $providercheck.RegistrationState
$providercheck | Select-Object ProviderNamespace, RegistrationState | sort-object -Property ProviderNamespace -Unique

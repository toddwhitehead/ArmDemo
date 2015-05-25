
#login as an admin user
Add-Azureaccount

#Get details of current user accounts
Get-AzureAccount

Select-AzureSubscription -SubscriptionID 71f1f825-5296-4219-ba2c-2f7ccd5d170b

Switch-AzureMode AzureResourceManager

New-AzureResourceGroup -Name demo-protectedops-rg -Location "Southeast Asia"

#Create the vnet
New-AzureResourceGroupDeployment -Name MyDeployment -ResourceGroupName demo-protectedops-rg -TemplateFile "C:\Users\Todd\Documents\GitHub\ArmDemo\cross-rg-vm\create-protected-vnet\azuredeploy.json" -TemplateParameterFile "C:\Users\Todd\Documents\GitHub\ArmDemo\cross-rg-vm\create-protected-vnet\azuredeploy.parameters.json"

#create the VM (as an admin)
New-AzureResourceGroupDeployment -Name MyVMDeployment -ResourceGroupName demo-protectedops-rg -TemplateFile "C:\Users\Todd\Documents\GitHub\ArmDemo\cross-rg-vm\azuredeploy.json" -TemplateParameterFile "C:\Users\Todd\Documents\GitHub\ArmDemo\cross-rg-vm\azuredeploy.parameters.json"


Remove-AzureAccount -Name demo@toddbert.com

#login as dev account
Add-Azureaccount

#New-AzureResourceGroup -Name demo-unprotected-rg -Location "Southeast Asia"

#create the VM (as an admin)
New-AzureResourceGroupDeployment -Name MyVMDeployment -ResourceGroupName demo-protectedops-rg -TemplateFile "C:\Users\Todd\Documents\GitHub\ArmDemo\cross-rg-vm\azuredeploy.json" -TemplateParameterFile "C:\Users\Todd\Documents\GitHub\ArmDemo\cross-rg-vm\azuredeploy1.parameters.json"


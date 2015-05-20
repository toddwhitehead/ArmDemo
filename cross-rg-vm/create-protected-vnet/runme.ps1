

Select-AzureSubscription -SubscriptionID a7ba7ce4-67ef-4dc3-890e-f774571e552f 

Switch-AzureMode AzureResourceManager

New-AzureResourceGroup -Name protected-dev-rg -Location "Southeast Asia"

New-AzureResourceGroupDeployment -Name MyDeployment -ResourceGroupName protected-dev-rg -TemplateFile "C:\Users\towhit\Documents\GitHub\ArmDemo\cross-rg-vm\create-protected-vnet\azuredeploy.json" -TemplateParameterFile "C:\Users\towhit\Documents\GitHub\ArmDemo\cross-rg-vm\create-protected-vnet\azuredeploy.parameters.json"

New-AzureResourceGroupDeployment -Name MyVMDeployment -ResourceGroupName protected-dev-rg -TemplateFile "C:\Users\towhit\Documents\GitHub\ArmDemo\cross-rg-vm\create-vm\azuredeploy.json" -TemplateParameterFile "C:\Users\towhit\Documents\GitHub\ArmDemo\cross-rg-vm\create-vm\azuredeploy.parameters.json"

Remove-AzureAccount -Name todd@whiteheadtrust.com

Add-Azureaccount

New-AzureResourceGroup -Name demo-unprotected-rg -Location "Southeast Asia"
New-AzureResourceGroupDeployment -Name DevVMDeployment -ResourceGroupName protected-dev-rg -TemplateFile "C:\Users\towhit\Documents\GitHub\ArmDemo\cross-rg-vm\create-vm\azuredeploy.json" -TemplateParameterFile "C:\Users\towhit\Documents\GitHub\ArmDemo\cross-rg-vm\create-vm\azuredeploy-dev.parameters.json"

Get-AzureRoleAssignment -ResourceGroupName protected-dev-rg -Mail dev@toddbert.com

New-AzureRoleAssignment -Mail dev@toddbert.com -RoleDefinitionName "Virtual Machine Contributor" -ResourceGroupName protected-dev-rg


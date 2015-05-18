
Select-AzureSubscription -SubscriptionID a7ba7ce4-67ef-4dc3-890e-f774571e552f 

Switch-AzureMode AzureResourceManager

New-AzureResourceGroup -Name demo-protected-rg -Location "Southeast Asia"

New-AzureResourceGroupDeployment -Name MyDeployment -ResourceGroupName demo-protected-rg -TemplateFile "C:\Users\towhit\Documents\GitHub\ArmDemo\cross-rg-vm\create-protected-vnet\azuredeploy.json" -TemplateParameterFile "C:\Users\towhit\Documents\GitHub\ArmDemo\cross-rg-vm\create-protected-vnet\azuredeploy.parameters.json"

New-AzureResourceGroupDeployment -Name MyVMDeployment -ResourceGroupName demo-protected-rg -TemplateFile "C:\Users\towhit\Documents\GitHub\ArmDemo\cross-rg-vm\azuredeploy.json" -TemplateParameterFile "C:\Users\towhit\Documents\GitHub\ArmDemo\cross-rg-vm\azuredeploy.parameters.json"

Remove-AzureAccount -Name todd@whiteheadtrust.com

Add-Azureaccount

New-AzureResourceGroup -Name demo-unprotected-rg -Location "Southeast Asia"



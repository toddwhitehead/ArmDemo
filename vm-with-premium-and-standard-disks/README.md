# Deployment of a DS VM with both a standarda and premium data disk

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Ftoddwhitehead%2FArmDemo%2Fmaster%2Fvm-with-premium-and-standard-disks%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Ftoddwhitehead%2FArmDemo%2Fmaster%2Fvm-with-premium-and-standard-disks%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template allows you to deploy a Premium Windows VM using a few different options for the Windows version, using the latest patched version.
github.com/toddwhitehead/ArmDemo/tree/master/vm-with-premium-and-standard-disks.

Note: the two data disks will not yet have been initialised or formated. This can be done by remoting to the vm and following the usual disk initialise process (see <ahref="https://azure.microsoft.com/en-us/documentation/articles/virtual-machines-windows-attach-disk-portal">https://azure.microsoft.com/en-us/documentation/articles/virtual-machines-windows-attach-disk-portal</a>) or installing DSC and using powershell commands.

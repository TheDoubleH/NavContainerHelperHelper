<#
This script will create a container with NAV, using the details specified in the _settings.ps1 file. 
C/Side client will also be created, and shortcuts will be placed on the desktop, however when compiling tables, you cannot
sycronize table changes. That will have to be done using powershell (See Compile Script)

Once the instance has been installed, all objects are exported to C:\ProgramData\NavContainerHelper\Extensions\Original-[build] in both 'Old' and 'New' version
#>

# Enter your Container Name and Docker Image to use here:
# Image Name for NAV: microsoft/dynamics-nav:2018-cu#-Country - ex microsoft/dynamics-nav:2018-cu9-na for a North American version of NAV 2018
$imageName = 'microsoft/dynamics-nav:2018-na'

. (Join-Path $PSScriptRoot '.\_Settings.ps1')

New-NavContainer `
    -accept_eula `
    -containerName $ContainerName `
    -imageName $imageName `
    -licensefile $licenseFile `
    -credential $Credential `
    -updateHosts `
    -includeCSide `
    -auth NavUserPassword
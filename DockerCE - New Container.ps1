<#
This script will create a container with NAV, using the details specified in the _settings.ps1 file. 
C/Side client will also be created, and shortcuts will be placed on the desktop, however when compiling tables, you cannot
sycronize table changes. That will have to be done using powershell (See Compile Script)

Version 18.47.2
#>

. (Join-Path $PSScriptRoot '.\_Settings.ps1')

New-NavContainer `
    -accept_eula `
    -containerName $ContainerName `
    -imageName $imageName `
    -licensefile $licenseFile `
    -credential $Credential `
    -updateHosts `
    -includeCSide `
    -doNotExportObjectsToText `
    -auth NavUserPassword    
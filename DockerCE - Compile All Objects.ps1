<#This script will compile all objects in a Dockerized NAV Database, using the details specified in the _settings.ps1 file. 
Version 19.13.1
#>

. (Join-Path $PSScriptRoot '.\_Settings.ps1')

Compile-ObjectsInNavContainer `
    -sqlCredential $Credential `
    -containerName $ContainerName `
    -filter '' `
    -verbose
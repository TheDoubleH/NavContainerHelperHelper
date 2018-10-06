#
# Version 18.39.3
#
# exportTo can have one of the following values: 'txt folder','txt folder (new syntax)','txt file','txt file (new syntax)','fob file')]
#
# Variables are set in the _Settings.ps1 file in the same Directory as this file.
#

. (Join-Path $PSScriptRoot '.\_Settings.ps1')

$ObjectsFolder = 'c:\programdata\navcontainerhelper\' + $ContainerName + '\Objects' 

Write-Host "Reset object Path"
$null = Remove-Item -Path $ObjectsFolder -Recurse -Force -ErrorAction SilentlyContinue
$null = New-Item -Path $ObjectsFolder -ItemType Directory 

Write-Host "Exporting Objects"
Export-NavContainerObjects `
    -containerName $ContainerName `
    -objectsFolder $ObjectsFolder `
    -filter '' `
    -sqlCredential $Credential `
    -exportTo 'txt folder (new format)' `
    -Verbose
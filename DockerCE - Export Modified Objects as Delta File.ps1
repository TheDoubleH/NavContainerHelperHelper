#
# Version 18.39.3
#
# exportTo can have one of the following values: 'txt folder','txt folder (new syntax)','txt file','txt file (new syntax)','fob file')]
#
# Variables are set in the _Settings.ps1 file in the same Directory as this file.
#
. (Join-Path $PSScriptRoot '.\_Settings.ps1')

Export-ModifiedObjectsAsDeltas `
    -containerName $ContainerName `
    -sqlCredential $Credential `
    -exportTo 'txt folder' `

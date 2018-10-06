#
# Version 18.39.5
#
# Variables are set in the _Settings.ps1 file in the same Directory as this file.
#
. (Join-Path $PSScriptRoot '.\_Settings.ps1')

$DeltaPath =  'C:\ProgramData\NavContainerHelper\' + $ContainerName + '\DELTA' 
$ResultPath =  'C:\ProgramData\NavContainerHelper\' + $ContainerName + '\RESULT' 

# NAV 2018 CU2 na Original-11.0.20348.0-na
# NAV 2018 cu6 na Original-11.0.22292.0-na
# NAV 2018 cu8 na Original-11.0.23572.0-na
# NAV 2018 cu9 na Original-11.0.24232.0-na
$TargetPathPath = 'C:\ProgramData\NavContainerHelper\Extensions\Original-11.0.24232.0-na\*.txt'

Write-Host "Reset Result Path"
$null = Remove-Item -Path $ResultPath -Recurse -Force -ErrorAction SilentlyContinue
$null = New-Item -Path $ResultPath -ItemType Directory 

Write-Host "Merging objects"
Update-NAVApplicationObject `
    -DeltaPath $DeltaPath `
    -TargetPath $TargetPathPath `
    -ResultPath $ResultPath
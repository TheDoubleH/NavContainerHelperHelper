# Install Nav Containerhelper

Write-Host "Installing navcontainerHelper"
Install-Module -Name navcontainerhelper

#Write-Host "Installing CRS.NavContainerHelperExtension"
#Install-Module -Name CRS.NavContainerHelperExtension

If CSide complains about missing DLL's or giving an ODBC error, you probably need to install these pre-requisites:

https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe
https://download.microsoft.com/download/3/A/6/3A632674-A016-4E31-A675-94BE390EA739/ENU/x64/sqlncli.msi


https://blogs.msdn.microsoft.com/freddyk/2017/10/29/troubleshooting-nav-on-docker/
#Version 18.47.2

#Enter Container Name here
$ContainerName = 'NAV2018'

# Enter your Container Name and Docker Image to use here:
# Image Name for NAV: microsoft/dynamics-nav:2018-cu#-Country - ex microsoft/dynamics-nav:2018-cu9-na for a North American version of NAV 2018
$imageName = 'microsoft/dynamics-nav:2018-na'

# Nav User Credentials used for New Docker Images 
$UserName = 'NAVUser'
$Password = ConvertTo-SecureString "NAVUser123" -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($UserName, $Password)

# NAV License File used for new Docker Images
$licenseFile = 'C:\ProgramData\NavContainerHelper\NAV2018License.flf'
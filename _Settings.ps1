#Version 18.39.3

#Enter Container Name here
$ContainerName = 'NAV2018'

# Nav User Credentials used for New Docker Images 
$UserName = 'NAVUser'
$Password = ConvertTo-SecureString "NAVUser123" -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($UserName, $Password)

# NAV License File used for new Docker Images
$licenseFile = 'C:\ProgramData\NavContainerHelper\NAV2018License.flf'
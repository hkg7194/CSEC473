$username = 'Test'
$password = 'P@ssword'

$computer = $env:COMPUTERNAME

#creates an object that stores the computer name, then tests credentials against that name. Returns true or false
Add-Type -AssemblyName System.DirectoryServices.AccountManagement
$obj = New-Object System.DirectoryServices.AccountManagement.PrincipalContext('machine',$computer)
$obj.ValidateCredentials($username, $password)

#still need to add a loop so it checks every minute, and figure out using the script remotely
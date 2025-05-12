#Import Active Directory module
Import Module ActiveDirectory

#Create a new AD user
New-ADUser -Name "John Doe" -SamAccountName "jdoe" -UserPrincipalName "jdoe@testdomain.com" -Path "OU=Users,DC=testdomain,DC=com" -Enabled $true -PassThru | Set-ADAccountPassword -NewPassword (ConvertTo-SecureString -AsPlainText "SecurePass123!" -Force)

#Fetch existing users
Get-ADUser -Filter *

#Delete an AD user 
Remove-ADUser -Identity "jdoe"
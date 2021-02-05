#password

get-aduser xpm4593 -Properties PasswordExpired,PasswordLastSet,PasswordNeverExpires,PasswordNotRequired,LastBadPasswordAttempt,CannotChangePassword,Enabled

# From Name
Get-ADUser -Filter 'name -eq "Preeti Bhushan Shalukar"' -Properties PasswordExpired,PasswordLastSet,PasswordNeverExpires,PasswordNotRequired,LastBadPasswordAttempt,CannotChangePassword,Enabled

# List From first name
Get-ADUser -Filter 'givenname -eq "Subramanien"'|select Name,SamAccountName |ft 
Clear-Host

#group member
(get-aduser yd5838 -Properties memberof).memberof

(Get-ADUser -Filter 'name -eq "Sheryl Shankar"' -Properties managedObjects).managedObjects

(Get-ADUser lo0063 -Properties managedObjects).managedObjects

MemberOf

sandvik.com


(get-aduser infoadmin -Properties proxyAddresses).proxyAddresses

(Get-ADComputer inpc3606 -Properties serialnumber).serialnumber

get-aduser je8193 -Properties *
(Get-ADComputer inpc3606 -Properties *).memberof

INPC2282
Write-Host "For get user details Select Following option"

$exit1 = $true
while ($exit1)
{
    Write-Host "`n Press 1 for find details from user ID`n Press 2 for find details from User Name"
    [int]$x = Read-Host "Please select option: "
    if ($x -eq 1)
    {
        $adusername = Read-Host "Enter User ID: "
        $exit1 = $false
    }
    elseif ($x -eq 2)
    {
         [string]$adusername1 = "Name -eq "+ (Read-Host "Enter User Name ")
         $adusername2 = "(Get-ADUser -Filter '$adusername1' |select SamAccountName).SamAccountName"
         $adusername = Invoke-Expression $adusername2
         $exit1 = $false
    }
    else
    {
           Write-Host "Select currect option." 
    }
}

$command1 = Get-ADUser $adusername -Properties *
$username = ($command1 |Select-Object DistinguishedName).DistinguishedName

Write-Host "User ID: "($command1 |Select-Object SamAccountName).SamAccountName
Write-Host "Display Name: ":($command1 |Select-Object name).name
Write-Host "First Name: "($command1 |Select-Object GivenName).GivenName
Write-Host "Last Name: "($command1 |Select-Object surname).surname
Write-Host "OU: "($command1 |Select-Object DistinguishedName).DistinguishedName
Write-Host "Enable: " ($command1 |select Enabled).Enabled
Write-Host "Account Expiration Date: "  ($command1 |select AccountExpirationDate).AccountExpirationDate
Write-Host "account Created: " ($command1 |select Created).Created
Write-Host "Email Address: " ($command1 |select EmailAddress).EmailAddress
Write-Host "HomeDirectory: " ($command1 |select HomeDirectory).HomeDirectory
Write-Host "Last Logon Date: " ($command1 |select LastLogonDate).LastLogonDate
Write-Host "Last Bad Password Attempt: " ($command1 |select LastBadPasswordAttempt).LastBadPasswordAttempt
Write-Host "Locked Out: " ($command1 |select LockedOut).LockedOut
Write-Host "Password Last Set: " ($command1 |select PasswordLastSet).PasswordLastSet
Write-Host "Manager: " ((($command1 |select manager).manager).Trim("CN=")).SUBSTRING(0,((($command1 |select manager).manager).Trim("CN=").indexOf(',')))
Write-Host "Direct Reports: " 
foreach ($item in (($command1 |select directReports).directReports))
{
    Write-Host "           "(($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(',')))
}
Write-Host "PC Name : " 

foreach ($item in (($command1 |select managedObjects).managedObjects))
{
    Write-Host "           "(($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(',')))
}

Write-Host "Primary Group: " (((($command1 |select PrimaryGroup).PrimaryGroup).Trim("CN=")).substring(0,((($command1 |select PrimaryGroup).PrimaryGroup).Trim("CN=")).IndexOf(',')))
Write-Host "Member Of: " 
foreach ($item in (($command1 |select memberof).memberof))
{
    Write-Host "           "(($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(',')))
}
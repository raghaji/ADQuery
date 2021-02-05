$adusername = "raghaji"
$GivenName = (Get-ADUser $adusername |Select-Object GivenName).GivenName
$surname = (Get-ADUser $adusername |Select-Object surname).surname
$DistinguishedName = (Get-ADUser $adusername |Select-Object DistinguishedName).DistinguishedName
$SamAccountName = (Get-ADUser $adusername |Select-Object SamAccountName).SamAccountName
$Enabled = (Get-ADUser $adusername |select Enabled).Enabled

$AccountExpirationDate  = (Get-ADUser $adusername -Properties AccountExpirationDate |select AccountExpirationDate).AccountExpirationDate
$accountCreated = (Get-ADUser $adusername -Properties Created |select Created).Created
$EmailAddress = (Get-ADUser $adusername -Properties EmailAddress |select EmailAddress).EmailAddress
$HomeDirectory = (Get-ADUser $adusername -Properties HomeDirectory |select HomeDirectory).HomeDirectory
$LastLogonDate = (Get-ADUser $adusername -Properties LastLogonDate |select LastLogonDate).LastLogonDate
$LastBadPasswordAttempt = (Get-ADUser $adusername -Properties LastBadPasswordAttempt |select LastBadPasswordAttempt).LastBadPasswordAttempt
$LockedOut = (Get-ADUser $adusername -Properties LockedOut |select LockedOut).LockedOut
$PrimaryGroup = (Get-ADUser $adusername -Properties PrimaryGroup |select PrimaryGroup).PrimaryGroup
$MemberOf = (Get-ADPrincipalGroupMembership -Identity Administrator |select name).name
$PasswordLastSet = (Get-ADUser $adusername -Properties PasswordLastSet |select PasswordLastSet).PasswordLastSet




$userset = [ordered]@{'User ID'=$SamAccountName;'FirstName'=$GivenName;'Last Name'=$surname;'OU'=$DistinguishedName;
'Enabled'=$Enabled;'Email ID'=$EmailAddress;'Home Directory'=$HomeDirectory;'Account Expired Date'=$AccountExpirationDate;
'Account Creation Date'=$accountCreated;'Last Login Date'=$LastLogonDate;'Account Locked Out' =$LockedOut;
'Wrong Password Attempt at'=$LastBadPasswordAttempt;'Password Set Date'=$PasswordLastSet;'Primary Group'=$PrimaryGroup}

$userset

Write-Host "`r`nGroups List:"
$MemberOf


#Get-ADObject -Identity (Get-ADUser $adusername |Select-Object DistinguishedName).DistinguishedName |gm

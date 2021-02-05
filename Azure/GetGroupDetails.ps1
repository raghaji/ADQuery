Write-Host "For get Group details"
$adgroupname = Read-Host "Enter Group Name: "
$command = Get-ADGroup $adgroupname -Properties *

write-host "Group Name: "($command|select Name).name
write-host "Name: "($command|select Name).Name
write-host "Description: "($command|select Description).Description
write-host "Managed By: "((($command|select ManagedBy).ManagedBy).Trim("CN=")).SUBSTRING(0,(((($command|select ManagedBy).ManagedBy).Trim("CN=")).indexOf(',')))
write-host "OU: "($command|select DistinguishedName).DistinguishedName
write-host "Group Category: "($command|select GroupCategory).GroupCategory
write-host "Group Scope: "($command|select GroupScope).GroupScope
write-host "Created Date: "($command|select Created).Created
write-host "ProtectedFromAccidentalDeletion: "($command|select ProtectedFromAccidentalDeletion).ProtectedFromAccidentalDeletion
write-host "SamAccountName: "($command|select SamAccountName).SamAccountName
write-host "Canonical Name: "($command|select CanonicalName).CanonicalName

$exit = $true
while ($exit)
{
    Write-Host `nPress 1 for Get Member list.
    Write-Host Press 2 for Get Member of list.
    Write-Host Press 0 for Exit from this loop.`n
    [int]$x = Read-Host "Please select option: "
    if ($x -eq 1)
    {
        Write-Host "Member List: "
        foreach ($item in (($command|select Members).Members))
        {
            
            Write-Host "           "(($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(',')))
        }
    }
    elseif ($x -eq 2)
    {
        Write-Host "Member Of: "
        foreach ($item in (($command|select MemberOf).MemberOf))
        {
            
            Write-Host "           "(($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(',')))
        }

    }
    elseif ($x -eq 0)
    {
        $exit = $false
        Write-Host "Thank you !!! "
    }
    else
    {
        Write-Host Invailed input Please try again.
    }
}
Write-Host "For get Computer details"

$computername = Read-Host "Enter PC Name: "
$ccommand = Get-ADComputer $computername -Properties *

write-host "PC Name: "($ccommand |select Name).Name
write-host "FQDN: "($ccommand |select DNSHostName).DNSHostName
write-host "IPv4: "($ccommand |select IPv4Address).IPv4Address
write-host "Managed By: "(((($ccommand |select ManagedBy).ManagedBy).Trim("CN=")).substring(0,((($ccommand |select ManagedBy).ManagedBy).Trim("CN=")).IndexOf(',')))
write-host "Operating System: "($ccommand |select OperatingSystem).OperatingSystem
write-host "Created: "($ccommand |select Created).Created
write-host "Sam Account Name: "($ccommand |select SamAccountName).SamAccountName
write-host "OU: "($ccommand |select DistinguishedName).DistinguishedName
Write-Host "Serial No: "($ccommand).Serialnumber
write-host "Primary Group: "(((($ccommand |select PrimaryGroup).PrimaryGroup).Trim("CN=")).substring(0,((($ccommand |select PrimaryGroup).PrimaryGroup).Trim("CN=")).IndexOf(',')))
write-host "Member Of: "
foreach ($item in (($ccommand |select MemberOf).MemberOf))
{
    Write-Host "           "(($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(',')))
}
write-host "Description: "($ccommand |select Description).Description
write-host "Enabled: "($ccommand |select Enabled).Enabled
write-host "Last Logon Date: "($ccommand |select LastLogonDate).LastLogonDate
write-host "Operating System Version: "($ccommand |select OperatingSystemVersion).OperatingSystemVersion
write-host "Certificates: "($ccommand |select Certificates).Certificates
write-host "Location: "($ccommand |select Location).Location

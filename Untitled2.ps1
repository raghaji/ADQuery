<# 
Ad-Hoc remoting in powershell
Get-WmiObject -Class win32_computersystem -ComputerName 192.168.1.2 -Credential administrator@google.local
#>

<#
Interactive remoting

Enter-PSSession -ComputerName 192.168.1.2 -Credential administrator@google.local
#>

<#Implicit remoting

$remotepc = New-PSSession -ComputerName 192.168.1.2 -Credential $Credential

Invoke-Command -Session $remotepc -ScriptBlock { Import-Module ActiveDirectory }

###Import-PSSession -Session $remotepc -Prefix Remote -AllowClobber -Module ActiveDirectory

Export-PSSession -Session $remotepc -CommandName *ad* -OutputModule RemoteModuleAD4 -AllowClobber

Import-Module RemoteModuleAD4
$remotepc|Remove-PSSession

#>

<#
Persistent session

$remotepc = New-PSSession -ComputerName 192.168.1.2 -Credential $Credential
Invoke-Command -Session $remotepc -ScriptBlock {Get-WmiObject -Class CIM_ComputerSystem}

#>



<#
Get password as secure string

$password = Read-Host -AsSecureString
Write-Host $password

#>

<# 
How to store string as username and password and used in command

$User = "Google\administrator"
$PWord = Read-Host -AsSecureString
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord

Get-WmiObject -Class win32_computersystem -ComputerName 192.168.1.2 -Credential $Credential

#>



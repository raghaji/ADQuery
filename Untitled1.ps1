$sn = Get-WmiObject -Class Win32_bios | Select-Object -ExpandProperty serialNumber
$computer = $env:COMPUTERNAME
Set-ADComputer -Identity $computer -Replace @{serialNumber = $sn}
Get-ADComputer -Identity invs -Properties *
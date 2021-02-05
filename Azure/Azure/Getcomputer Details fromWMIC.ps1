Write-Host "Fetch Computer details "

$computername = Read-Host "Enter PC Name: "

Write-Host "Computer Name: " $computername
$bios = Get-WmiObject -ComputerName $computername -Class Win32_BIOS -Property Manufacturer,SerialNumber |Select Manufacturer,SerialNumber
$computersp = Get-WmiObject -ComputerName $computername -Class win32_computersystemproduct -Property UUID,Version |select Version,UUID
$lusr = (Get-WmiObject -ComputerName $computername –Class Win32_ComputerSystem | Select-Object UserName).username

$newobject = New-Object -TypeName psobject -Property @{
    Manufacturer = $bios.Manufacturer
    ModelName =$computersp.Version
    SerialNumber = $bios.SerialNumber
    UUID = $computersp.UUID
    UserName = $lusr
}
Write-Host "`n"
($newobject |fl |Out-String).Trim()

Get-WmiObject -ComputerName $computername -Class CIM_NetworkAdapter |where {$_.MacAddress -ne $null} |select name,DeviceID,MacAddress,AdapterType
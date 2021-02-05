$TargetName = “INVS”
$RC = Get-WinEvent -Computer $TargetName -FilterHashtable @{ Logname = ‘Security’; ID = 4672 } -MaxEvents 1 | Select @{ N = ‘User’; E = { $_.Properties[1].Value } }, TimeCreated
$RC.Username
$RC.TimeCreated
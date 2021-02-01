Write-Host "           "(($item.Trim("CN=")).substring(0,($item.Trim("CN=")).IndexOf(',')))
($ccommand |select ManagedBy).ManagedBy
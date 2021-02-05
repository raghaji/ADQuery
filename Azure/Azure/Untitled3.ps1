import-module ActiveDirectory

Write-Host "1) Get user details from user ID.
2) Get user details from User Name (Full Name).
3) Get Group details.
4) Get Computer details.
"
[int]$select = Read-Host

switch ($select)
{
    1 {write-host "hELLO 1"}
    2 {write-host "hELLO 2"}
    3 {write-host "hELLO 3"}
    4 {write-host "hELLO 4"}
    Default {write-host "Thanks for visit"}
}

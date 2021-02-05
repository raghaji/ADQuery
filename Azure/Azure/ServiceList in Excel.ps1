$Excel = New-Object -ComObject Excel.Application
$Excel.Visible = $true
$Excel.DisplayAlerts = $false
$Excel.Workbooks.Add()
$Excel.Workbooks.Item("book1").activate()
$Excel.Workbooks.item(1).SaveAs("$env:userprofile\Desktop\servicelist.xlsx")
$Excel.Sheets.Add()|Out-Null
$Excel.Worksheets.Item(1).name = "Serviceslist"
$Excel.Worksheets.Item(1).activate()
$Excel.cells.Item(1,1) = "Service Status Report"
$Excel.Range("A1","B1").Cells.Merge()
$Excel.cells.Item(2,1) = "Service Name"
$Excel.Cells.Item(2,2) = "Service Status"
$row = 3

foreach ($item in Get-Service)
{
    $Excel.Cells.Item($row,1) = $item.DisplayName.ToString()
    $Excel.Cells.Item($row,2) = $item.Status.ToString()
    if ($item.Status -eq "Running")
    {
        $Excel.Cells.Item($row,1).Font.ColorIndex = 43
        $Excel.Cells.Item($row,2).Font.ColorIndex = 43
    }
    elseif ($item.Status -eq "Stopped")
    {
        $Excel.Cells.Item($row,1).Font.ColorIndex = 46
        $Excel.Cells.Item($row,2).Font.ColorIndex = 46
    }
    $row++
}




$Excel.Workbooks.Close()
$Excel.Quit()
Get-Process excel | Stop-Process -Force
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($Excel)

<# Color Index for Office application 

$objExcel = New-Object -ComObject Excel.Application
$objExcel.Visible = $true
$objWorkbook = $objExcel.Workbooks.Add()
$objWorksheet = $objWorkbook.Worksheets()


for (($l =$h= $j = 1),($g=0); $l -lt 56; ($l= $l +14), ($j++),($h=$h+1),($g=$g+1))
{ 
    for (($i = $l),($k =1); $i -lt (15+$l); ($i++),($k++))
    { 
        $objExcel.Cells.Item($k,($h+$j)) = $i
        $objexcel.cells.Item($k,($g+2+$j)).Interior.ColorIndex = $i
    }
}
#>
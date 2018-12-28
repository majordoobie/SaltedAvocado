$somefuckingvariable = New-Object -com "Wscript.Shell"
$i = 0
Write-Host "Just leave me running, minimize the window." -ForegroundColor Red
while($true){
    $i ++ 
    Start-Sleep 180
    $somefuckingvariable.sendkeys("{SCROLLLOCK}")
    Write-Host "Wake the fuck up, please: $i" -ForegroundColor Magenta
}
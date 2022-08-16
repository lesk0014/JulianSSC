<#
 #
 # Dummy PPT generater for AVM SSC
 # by Julian Leske, 16 Aug 2022
 #
 # Place script in directory where dummy files are needed
 # Right click and select 'Run with PowerShell'
 # Enter the day and room as prompted, as you want them in the file names
 # Enter times and names, alternating
 # 
 #
 #>

$times = @()
$names = @()
$room
$day
$debug = $false
Write-Host "`nDummy ppt file generator"
Write-Host "(Files will be created in current directory)`n"
Write-Host "Naming convention <time> <day> <room> <surname>.pptx"
Write-Host "eg. 0900 Mon CD Leske`n`n"

$day = Read-Host -prompt "Enter day (eg. 'Mon')"
$room = Read-Host -prompt "Enter room"


Write-Host "`nEnter time, then last name alternating"
Write-Host "Enter 'done' to end"

While ($in -ne 'done' -and $in -ne ''){
    $in = Read-Host -prompt "Time"
    if ($in -ne 'done' -and $in -ne ''){
        $times += $in

        $in = Read-Host -prompt "Name"
        $names += $in

        Write-Host "`nEnter another time and name, or 'done'"
    }
}

for ($i = 0; $i -lt $times.count; $i++){
    New-Item "$($times[$i]) $day $room $($names[$i]).pptx" -ItemType File
}

if($debug -eq $true) {
    Write-Host "Day: $day"
    Write-Host "Room: $room"
    Write-Host "Times: $times"
    Write-Host "Names: $names"

    pause
}
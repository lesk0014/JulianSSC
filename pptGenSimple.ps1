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


Write-Host "`nEnter time and surname"
Write-Host "Enter 'done' to end"

While ($in -ne 'done' -and $in -ne ''){
    $in = Read-Host -prompt "Time and surname"
    if ($in -ne 'done' -and $in -ne ''){
        $splits = $in.split(" ")
	$name = ""	

	for ($i = 1; $i -lt $splits.count; $i++){
		$name += "$($splits[$i]) "    		
	}

        $times += $splits[0]
        $names += $name.Substring(0,$name.Length-1)

        Write-Host "`nEnter another time and surname, or 'done'"
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
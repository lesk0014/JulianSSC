<#
 #
 # File Structure generater for AVM SSC
 # by Julian Leske, 16 Aug 2022
 #
 # Place script in Presentations directory on the SSC-FS PC
 # Right click and select 'Run with PowerShell'
 # Enter the days of the conference in order
 # Enter rooms that require SSC connections
 #
 #
 #>

 $days = @()
 $dayNum = 1
 $rooms = @()
 $debug = $true

while ($in -ne 'done' -and $in -ne ''){
    $in = Read-Host -Prompt "`nEnter days eg. Monday`nEnter 'done' to end"
    if($in -ne 'done' -and $in -ne ''){
        if($dayNum -lt 10){
            $days += "0" + "$dayNum " + $in
        }else{
            $days += "$dayNum " + $in
        }

        $dayNum++
    }
}

while ($in2 -ne 'done' -and $in2 -ne ''){
    $in2 = Read-Host -Prompt "`nEnter rooms eg. Rb 6-8`nEnter 'done' to end"
    if($in2 -ne 'done' -and $in2 -ne ''){
        $rooms += $in2
    }
}

for ($i = 0; $i -lt $days.count; $i++){
    for ($j = 0; $j -lt $rooms.count; $j++){
        New-Item "$($days[$i])\$($rooms[$j])" -ItemType directory
    }
}

if($debug -eq $true){
    $days
    $rooms
    pause
}
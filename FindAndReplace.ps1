$files = @(Get-ChildItem -Name -Include *.ffs_gui)
$old = Read-Host -Prompt "Input old day"
$new = Read-Host -Prompt "Input new day"

Foreach ($i in $files){
    (Get-Content $i) -replace $old, $new | Out-File -encoding ASCII $i
}
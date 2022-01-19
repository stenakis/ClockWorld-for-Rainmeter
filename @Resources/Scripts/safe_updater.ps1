# WARNING: BACKUP DOES NOT WORK PROPERLY AT THE MOMENT
$source = 'https://github.com/ervans589/Clockworld-for-Rainmeter/archive/refs/heads/main.zip'
$destination = $env:TEMP
Write-Output ''
Write-Output 'Safe ClockWorld Installer'
Write-Output 'Warning: BackUp does not work properly at the moment.'
Do {
    $backUp = Read-Host 'Do you want to back up the current version? (Y/N)'
    if ($backUp -eq 'Y') {
        New-Item -Path 'Documents\Rainmeter\Skins\@Backup\Clockworld' -ItemType Directory -Force
        Copy-Item 'Documents\Rainmeter\Skins\Clockworld' 'Documents\Rainmeter\Skins\@Backup' -Recurse -force
    }
}Until (($backUp -eq 'Y') -or ($backUp -eq 'N'))
Invoke-WebRequest -Uri $source -OutFile $destination\Clockworld.zip
Expand-Archive $destination\Clockworld.zip -DestinationPath $destination
Rename-Item $destination\Clockworld-for-Rainmeter-main $destination\Clockworld
Remove-Item $destination\Clockworld.zip
Copy-Item $destination\Clockworld $env:USERPROFILE\Documents\Rainmeter\Skins -Recurse -force
Remove-Item $destination\Clockworld -Recurse -force
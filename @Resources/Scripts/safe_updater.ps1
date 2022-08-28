$source = 'https://github.com/ervans589/Clockworld-for-Rainmeter/archive/refs/heads/main.zip'
$destination = $env:TEMP
Write-Output ''
Write-Output 'Safe ClockWorld Installer'
Invoke-WebRequest -Uri $source -OutFile $destination\Clockworld.zip
Expand-Archive $destination\Clockworld.zip -DestinationPath $destination
Rename-Item $destination\Clockworld-for-Rainmeter-main $destination\Clockworld
Remove-Item $destination\Clockworld.zip
Copy-Item $destination\Clockworld $env:USERPROFILE\Documents\Rainmeter\Skins -Recurse -force
Remove-Item $destination\Clockworld -Recurse -force
Exit

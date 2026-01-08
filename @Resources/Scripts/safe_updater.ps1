$source = "https://github.com/stenakis/Clockworld-for-Rainmeter/archive/refs/heads/main.zip"
$temp = $env:TEMP
$zipPath = "$temp\Clockworld.zip"
$extractPath = "$temp\Clockworld"
$rainmeterPath = "$env:USERPROFILE\Documents\Rainmeter\Skins\Clockworld"

function Pause-And-Exit {
    Write-Output ""
    Write-Output "Press any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    Exit 1
}

Write-Output ""
Write-Output "ClockWorld Installer"
Write-Output "--------------------------"

# Ensure Rainmeter Skins folder exists
$skinRoot = "$env:USERPROFILE\Documents\Rainmeter\Skins"
if (!(Test-Path $skinRoot)) {
    Write-Error "Rainmeter Skins folder not found: $skinRoot"
    Pause-And-Exit
}

# Download
Write-Output "Downloading ClockWorld..."
try {
    Invoke-WebRequest -Uri $source -OutFile $zipPath -UseBasicParsing
} catch {
    Write-Error "Download failed."
    Pause-And-Exit
}

# Extract
Write-Output "Extracting files..."
try {
    Expand-Archive $zipPath -DestinationPath $temp -Force
} catch {
    Write-Error "Extraction failed."
    Pause-And-Exit
}

# Rename extracted folder
$extractedFolder = "$temp\Clockworld-for-Rainmeter-main"
if (!(Test-Path $extractedFolder)) {
    Write-Error "Extracted folder not found."
    Pause-And-Exit
}
Rename-Item $extractedFolder $extractPath -Force

# Preserve @Resources\Variables.inc if it exists
$variablesFile = Join-Path $rainmeterPath "@Resources\Variables.inc"
$tempVariables = $null
if (Test-Path $variablesFile) {
    $tempVariables = "$temp\Variables_backup.inc"
    Move-Item $variablesFile $tempVariables
}

# Remove old folder completely
if (Test-Path $rainmeterPath) {
    Remove-Item $rainmeterPath -Recurse -Force
}

# Copy new folder
Copy-Item $extractPath $rainmeterPath -Recurse -Force

# Restore Variables.inc inside @Resources
if ($tempVariables) {
    $resourcesPath = Join-Path $rainmeterPath "@Resources"
    if (!(Test-Path $resourcesPath)) {
        New-Item -ItemType Directory -Path $resourcesPath | Out-Null
    }
    Move-Item $tempVariables (Join-Path $resourcesPath "Variables.inc")
}

# Cleanup
Remove-Item $zipPath -Force
Remove-Item $extractPath -Recurse -Force

Write-Output ""
Write-Output "ClockWorld installed successfully!"
Write-Output "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
Exit

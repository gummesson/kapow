# ~ Kapow! ~
# Installation script

# Set the path where the profile gets sourced
$WindowsPSPath = "$HOME\Documents"

# Create the Kapow! folders and copy the default profile file
If (-Not (Test-Path -Path "$WindowsPSPath")) {
  md "$WindowsPSPath" > $null
}
md $WindowsPSPath\cache > $null
cp "example.profile.ps1" "$WindowsPSPath\Microsoft.PowerShell_profile.ps1" > $null

# Display the installation message
Write-Host "~ Kapow! ~" -ForegroundColor Green 
Write-Host "Installation completed!"

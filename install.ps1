# == Kapow! ====================================================================
#
#  Installation script
#
# ==============================================================================

# Set the path where the Kapow module gets sourced
$KapowModulePath = "$HOME\Documents\WindowsPowerShell\Modules\Kapow"

# Create the Kapow! folders and copy the default module file
If (-Not (Test-Path -Path "$KapowModulePath")) {
  md "$KapowModulePath" > $null
}
md .\cache > $null
cp "Kapow.psm1" "$KapowModulePath\Kapow.psm1" > $null

# Display the installation message
Write-Host "Kapow!" -ForegroundColor Green
Write-Host "Installation completed!"

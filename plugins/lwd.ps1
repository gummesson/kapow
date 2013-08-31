# == Kapow! ====================================================================
#
# Last working directory plugin
#  For navigating to and saving the last working directory.
#
# Usage:
#  lwd   Go to the last working directory
#  quit  Save the last working directory and exit

# == Aliases ===================================================================

Set-Alias lwd  Get-LastWorkingDirectory
Set-Alias quit Set-LastWorkingDirectory

# == Configuration =============================================================

# The cache file
$KapowCacheLwdFile = "$KapowCachePath\lwd"

# == Functions =================================================================

Function Get-LastWorkingDirectory {
  Set-Location (Get-Content -Path "$KapowCacheLwdFile")
}

Function Set-LastWorkingDirectory {
  Set-Content -Path "$KapowCacheLwdFile" -Value $pwd
  exit
}

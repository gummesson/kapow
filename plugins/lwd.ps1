# ~ Kapow! ~
#
# Last working directory plugin
#  For navigating to and saving the last working directory.
#
# Usage:
#  lwd   Go to the last working directory
#  quit  Save the last working directory and exit

# The cache file
$KapowCacheLwdFile = "$KapowCachePath\lwd"

# Aliases
Set-Alias lwd  Kapow-Lwd-Get
Set-Alias quit Kapow-Lwd-Set

# Functions
Function Kapow-Lwd-Get {
  Set-Location (Get-Content -Path $KapowCacheLwdFile)
}

Function Kapow-Lwd-Set {
  Set-Content -Path $KapowCacheLwdFile -Value $pwd
  exit
}

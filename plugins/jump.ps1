#
#  Jump plugin
#   For "jumping" to a "marked" directory in the filesystem.
#
#  Usage:
#   j my-project        Jump to the desired directory.
#   jm another-project  Mark the current directory.
#   jl                  List the marked directories.
#

# Aliases

Set-Alias j  Get-Jump
Set-Alias jm Set-Jump
Set-Alias jl Get-AllJumps

# Configuration

# The cache file
$KapowJumpCacheFile = "$KapowCachePath\jumps"

If (-Not (Test-Path -Path "$KapowJumpCacheFile")) {
  New-Item -Path "$KapowJumpCacheFile" -ItemType file > $null
}

# Functions

Function Get-Jump {
  Param(
    [Parameter(Position = 0, Mandatory=$true)]
    [Alias("d")]
    [String]$Dir
  )
  Set-Location (Get-Content "$KapowJumpCacheFile" | Select-String "$Dir")
}

Function Set-Jump {
  Add-Content "$KapowJumpCacheFile" -Value $pwd
}

Function Get-AllJumps {
  Get-Content "$KapowJumpCacheFile"
}

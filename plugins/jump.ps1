# ~ Kapow! ~
#
# Jump plugin
#  For "jumping" to a "marked" directory in the filesystem.
#
# Usage:
#  j my-project        Jump to the desired directory
#  jm another-project  Mark the current directory
#  jl                  List the marked directories

# The cache file
$KapowJumpCacheFile = "$KapowCachePath\jumps"

If (-Not (Test-Path -Path $KapowJumpCacheFile)) {
  New-Item -Path $KapowJumpCacheFile -ItemType file > $null
}

# Aliases
Set-Alias j  Kapow-Jump-Get
Set-Alias jm Kapow-Jump-Set
Set-Alias jl Kapow-Jump-List

# Functions
Function Kapow-Jump-Get {
  Param(
    [Parameter(Position = 0, Mandatory=$true)]
    [alias("d")]
    [string]$Dir
  )
  Set-Location (Get-Content $KapowJumpCacheFile | Select-String $Dir)
}

Function Kapow-Jump-Set {
  Add-Content $KapowJumpCacheFile -Value $pwd
}

Function Kapow-Jump-List {
  Get-Content $KapowJumpCacheFile
}

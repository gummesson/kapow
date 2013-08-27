# ~ Kapow! ~
#
# Jump plugin
#  For "jumping" to a "marked" directory in the filesystem.
#
# Usage:
#  j my-project        Jump to the desired directory
#  jm another-project  Mark the current directory

# The cache file
$PluginJumpCacheFile = "$KapowCachePath\jumps"

If (-Not (Test-Path -Path $PluginJumpCacheFile)) {
  New-Item -Path $PluginJumpCacheFile -ItemType file > $null
}

# Aliases
Set-Alias j  Plugin-Jump-Get
Set-Alias jm Plugin-Jump-Set

# Functions
Function Plugin-Jump-Get {
  Param($Dir)
  Set-Location (Get-Content $PluginJumpCacheFile | Select-String $Dir)
}

Function Plugin-Jump-Set {
  Add-Content $PluginJumpCacheFile -Value $pwd
}

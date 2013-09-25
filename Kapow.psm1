#
#  Kapow!
#   A punchy PowerShell framework
#

# Don't import Kapow! twice
If (Get-Module Kapow) {
  Return
}

# User settings

# The defaults
$KapowDefaultPath = "C:\Git\kapow"
$KapowDefaultHome = "C:\"
$KapowDefaultTheme = "punchy"
$KapowDefaultEditor = "gvim"
$KapowEnableGitColors = $true
$KapowDefaultPlugins = ( "cd", "edit", "files", "git",
                         "jump", "lwd", "utils", "web")

# Configuration settings

# Customize the prompt
. "$KapowDefaultPath\themes\$KapowDefaultTheme.ps1"

# Set additional paths
$KapowCachePath = "$KapowDefaultPath\cache"
$KapowCustomPath = "$KapowDefaultPath\custom"

# Import the Kapow! plugins
ForEach ($Plugin in $KapowDefaultPlugins) {
  . "$KapowDefaultPath\plugins\$Plugin.ps1"
}

# Import the custom plugins
If (Test-Path -Path "$KapowCustomPath") {
  Get-ChildItem -Path "$KapowCustomPath" -Name -Include "*.ps1" | ForEach {
    . "$KapowCustomPath\$_"
  }
}

# Enable Git colors
If ($KapowEnableGitColors -eq $true) {
  $env:TERM = 'cygwin'
  $env:LESS = 'FRSX'
}

# Exports

# Export all the sourced function and aliases
Export-ModuleMember -Function * -Alias *

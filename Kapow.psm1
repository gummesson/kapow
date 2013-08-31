# == Kapow! ====================================================================

if (Get-Module Kapow) {
  Return
}

# == User settings =============================================================

$KapowDefaultPath = "C:\Git\kapow"
$KapowDefaultHome = "C:\"
$KapowDefaultTheme = "punchy"
$KapowDefaultEditor = "gvim"
$KapowEnableGitColors = $true
$KapowDefaultPlugins = (
  "cd",
  "edit",
  "files",
  "git",
  "jump",
  "lwd",
  "utils",
  "web"
)

# == Configuration settings ====================================================

# Customize the prompt
. "$KapowDefaultPath\themes\$KapowDefaultTheme.ps1"

# Set additional paths
$KapowCachePath = "$KapowDefaultPath\cache"
$KapowCustomPath = "$KapowDefaultPath\custom"

# Import Kapow! plugins
ForEach ($Plugin in $KapowDefaultPlugins) {
  . "$KapowDefaultPath\plugins\$Plugin.ps1"
}

# Import custom plugins
If (Test-Path -Path "$KapowCustomPath") {
  Get-ChildItem -Path "$KapowCustomPath" -Name -Include "*.ps1" |
  ForEach { 
    . "$KapowCustomPath\$_"
  }
}

# Enable Git colors
If ($KapowEnableGitColors -eq $true) {
  $env:TERM = 'cygwin'
  $env:LESS = 'FRSX'
}

# == Exports ===================================================================

Export-ModuleMember -Function * -Alias *

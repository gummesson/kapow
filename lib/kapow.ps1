# ~ Kapow! ~

# Set additional paths
$KapowCachePath = "$HOME\Documents\WindowsPowerShell\cache"
$KapowCustomPath = "$KapowDefaultPath\custom"
$KapowDocsPath = "$KapowDefaultPath\docs"

# Import Kapow! plugins
ForEach ($Plugin in $KapowDefaultPlugins) {
  . $KapowDefaultPath\plugins\$Plugin.ps1
}

# Import custom plugins
If (Test-Path -Path $KapowCustomPath) {
  Get-ChildItem -Path $KapowCustomPath -Name -Include "*.ps1" |
  ForEach { 
    . "$KapowCustomPath\$_"
  }
}

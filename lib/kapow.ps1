# ~ Kapow! ~
# A punchy PowerShell framework

# Set additional paths
$KapowCachePath = "$HOME\Documents\WindowsPowerShell\cache"
$KapowCustomPath = "$KapowDefaultPath\custom"
$KapowDocsPath = "$KapowDefaultPath\docs"

# Import Kapow! plugins
Foreach ($Plugin in $KapowUserPlugins) {
  . $KapowDefaultPath\plugins\$Plugin.ps1
}

# Import custom plugins
If (Test-Path -Path $KapowCustomPath) {
  Get-ChildItem -Path $KapowCustomPath -Name -Include "*.ps1" | ForEach { 
    . "$KapowCustomPath\$_"
  }
}

# ~ Kapow! ~

# Default settings
$KapowDefaultPath = "C:\Git\kapow"
$KapowDefaultHome = "C:\"
$KapowDefaultTheme = "simple"
$KapowDefaultEditor = "gvim"
$KapowDefaultPlugins = ("cd", "edit", "list", "utils")

# Customize the prompt
. "$KapowDefaultPath\themes\$KapowDefaultTheme.ps1"

# Source the Kapow! lib file
. "$KapowDefaultPath\lib\kapow.ps1"

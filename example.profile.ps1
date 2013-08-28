# ~ Kapow! ~
# Setup file

# Default settings
$KapowDefaultPath = "C:\Git\kapow"
$KapowPromptTheme = "simple"
$KapowUserPlugins = ("cd", "docs", "edit", "list", "utils")
$KapowDefaultEditor = "gvim"

# Customize the prompt
. $KapowDefaultPath\themes\$KapowPromptTheme.ps1

# Source the Kapow! lib file
. $KapowDefaultPath\lib\kapow.ps1

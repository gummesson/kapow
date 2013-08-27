# ~ Kapow! ~
# Setup file

# Default settings
$KapowDefaultPath = "C:\Git\kapow"
$KapowPromptTheme = "simple"
$KapowUserPlugins = ("cd", "docs", "list", "utils")

# Customize the prompt
. $KapowDefaultPath\themes\$KapowPromptTheme.ps1

# Source the Kapow! lib file
. $KapowDefaultPath\lib\kapow.ps1

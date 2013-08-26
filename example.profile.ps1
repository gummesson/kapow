# ~ Kapow! ~
# Setup file

# Default settings
$KapowDefaultPath = "C:\Git\kapow"
$KapowPromptTheme = "simple"
$KapowUserPlugins = ("clip", "cd", "docs", "list")

# Customize the prompt
. $KapowDefaultPath\themes\$KapowPromptTheme.ps1

# Source the Kapow! lib file
. $KapowDefaultPath\lib\kapow.ps1

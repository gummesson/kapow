# ~ Kapow! ~
#
#  Compass plugin
#  For working with Compass.
#
# Usage:
#  cmps <Tab>  Cycle through common Compass commands.

# Aliases
Set-Alias cmps  Plugin-Compass-TabExpansion
Set-Alias cmpsc Plugin-Compass-Compile
Set-Alias cmpsw Plugin-Compass-Watch

# Functions
Function Plugin-Compass-TabExpansion {
  Param([ValidateSet(
    "clean", "compile", "config", "create", "extension" ,"framework",
    "grid-img", "help", "imports", "init", "install", "interactive",
    "sprite", "stats", "unpack", "validate", "version", "watch")]
  $Cmd)
  compass $Cmd ($args -join "")
}

Function Plugin-Compass-Compile {
  compass compile ($args -join "") 
}

Function Plugin-Compass-Watch {
  compass watch ($args -join "") 
}

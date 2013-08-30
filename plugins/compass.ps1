# ~ Kapow! ~
#
#  Compass plugin
#  For working with Compass.
#
# Usage:
#  cmps <Tab>  Cycle through common Compass commands.

# Aliases
Set-Alias cmps  Kapow-Compass-TabExpansion
Set-Alias cmpsc Kapow-Compass-Compile
Set-Alias cmpsw Kapow-Compass-Watch

# Functions
Function Kapow-Compass-TabExpansion {
  Param(
    [ValidateSet(
      "clean",
      "compile",
      "config",
      "create",
      "extension"
      ,"framework",
      "grid-img",
      "help",
      "imports",
      "init",
      "install",
      "interactive",
      "sprite",
      "stats",
      "unpack",
      "validate",
      "version",
      "watch")]
    [string]$Command
  )
  compass $Command $Args
}

Function Kapow-Compass-Compile {
  compass compile $Args
}

Function Kapow-Compass-Watch {
  compass watch $Args
}

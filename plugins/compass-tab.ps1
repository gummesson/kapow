#
#  Compass plugin
#   For working with Compass.
#
#  Usage:
#   cmps <Tab>  Cycle through common Compass commands.
#

# Aliases

Set-Alias cmps Invoke-CompassTabExpansion

# Functions

Function Invoke-CompassTabExpansion {
  Param(
    [ValidateSet(
      "clean",
      "compile",
      "config",
      "create",
      "extension",
      "framework",
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
    [String]$Command
  )
  compass $Command $Args
}

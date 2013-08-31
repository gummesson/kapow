# == Kapow! ====================================================================
#
# Compass plugin
#  For working with Compass.
#
# Usage:
#  cmps <Tab>  Cycle through common Compass commands.

# == Aliases ===================================================================

Set-Alias cmps  Enable-CompassTabExpansion
Set-Alias cmpsc Send-CompassCompile
Set-Alias cmpsw Send-CompassWatch

# == Functions =================================================================

Function Enable-CompassTabExpansion {
  Param([ValidateSet(
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
        [string]$Command)
  compass $Command $Args
}

Function Send-CompassCompile { compass compile $Args }
Function Send-CompassWatch { compass watch $Args }

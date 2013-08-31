# == Kapow! ====================================================================
#
#  Compass plugin
#   For working with Compass.
#
#  Usage:
#   cmps <Tab>  Cycle through common Compass commands.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias cmps Enable-CompassTabExpansion

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

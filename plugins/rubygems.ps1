# == Kapow! ====================================================================
#
#  RubyGems plugin
#   For working with RubyGems.
#
#  Usage:
#   rgm <Tab>  Cycle through common RubyGems commands
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias rgm Enable-RubyGemsTabExpansion

# == Functions =================================================================

Function Enable-RubyGemsTabExpansion {
  Param([ValidateSet(
          "build",
          "cert",
          "check",
          "cleanup",
          "contents",
          "dependency",
          "environment",
          "help",
          "install",
          "list",
          "query",
          "rdoc",
          "search",
          "specification",
          "uninstall",
          "unpack",
          "update",
          "which")]
      [string]$Command)
  gem $Command $Args
}

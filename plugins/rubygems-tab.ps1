# == Kapow! ====================================================================
#
#  RubyGems plugin
#   For working with RubyGems.
#
#  Usage:
#   rgm <Tab>  Cycle through common RubyGems commands.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias rgm Invoke-RubyGemsTabExpansion

# == Functions =================================================================

Function Invoke-RubyGemsTabExpansion {
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
      [String]$Command)
  gem $Command $Args
}

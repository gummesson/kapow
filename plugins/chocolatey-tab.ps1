# == Kapow! ====================================================================
#
#  Chocolatey plugin
#   For working with Chocolatey.
#
#  Usage:
#   choco <Tab>  Cycle through common Chocolatey commands.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias choco Invoke-ChocolateyTabExpansion

# == Functions =================================================================

Function Invoke-ChocolateyTabExpansion {
  Param([ValidateSet(
          "install",
          "installmissing",
          "update",
          "list",
          "help",
          "version",
          "webpi",
          "windowsfeatures",
          "gem",
          "uninstall")]
        [String]$Command)
  chocolatey $Command $Args
}

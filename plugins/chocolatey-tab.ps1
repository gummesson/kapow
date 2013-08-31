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

Set-Alias choco Enable-ChocolateyTabExpansion

# == Functions =================================================================

Function Enable-ChocolateyTabExpansion {
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
        [string]$Command)
  chocolatey $Command $Args
}

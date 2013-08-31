# ~ Kapow! ~
#
#  Chocolatey plugin
#  For working with Chocolatey.
#
# Usage:
#  choco <Tab>  Cycle through common Chocolatey commands.

# Aliases
Set-Alias choco            Enable-ChocolateyTabExpansion
Set-Alias ccygwin          ccygwin.bat
Set-Alias cgem             cgem.bat
Set-Alias chocolatey       chocolatey.bat
Set-Alias cinst            cinst.bat
Set-Alias cinstm           cinstm.bat
Set-Alias clist            clist.bat
Set-Alias cpack            cpack.bat
Set-Alias cpush            cpush.bat
Set-Alias cpython          cpython.bat
Set-Alias cuninst          cuninst.bat
Set-Alias cup              cup.bat
Set-Alias cver             cver.bat
Set-Alias cwebpi           cwebpi.bat
Set-Alias cwindowsfeatures cwindowsfeatures.bat

# Functions
Function Enable-ChocolateyTabExpansion {
  Param(
    [ValidateSet(
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
    [string]$Command
  )
  chocolatey $Command $Args
}

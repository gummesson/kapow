# == Kapow! ====================================================================
#
#  Utilities plugin
#   For easier access to utility commands.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias touch     touch.exe
Set-Alias clip      clip.exe
Set-Alias time      Measure-Time
Set-Alias psversion Get-Version
Set-Alias plugins   Get-Plugins

# == Functions =================================================================

Function Get-KapowPlugins {
  Get-Command -Module Kapow
}

Function Measure-Time {
  Param(
    [Parameter(Position = 0, Mandatory=$true)]
    [Alias("c")]
    [String]$Command
  )
  Measure-Command {
    $Command
  }
}

Function Get-Version {
  Return "PowerShell: $($PSVersionTable.PsVersion.toString())"
}

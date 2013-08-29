# ~ Kapow! ~
#
# Utilities plugin
#  For easier access to utility commands.

# Aliases
Set-Alias touch     touch.exe
Set-Alias clip      clip.exe
Set-Alias time      Kapow-Utilities-Time
Set-Alias psversion Kapow-Utilities-Version

# Functions
Function Kapow-Utilities-Time {
  Param($Cmd)
  Measure-Command {
    $Cmd
  }
}

Function Kapow-Utilities-Version {
  $PSVersionTable.PsVersion
}

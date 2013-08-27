# ~ Kapow! ~
#
# Utilities plugin
#  For easier access to utility commands.

# Aliases
Set-Alias touch     touch.exe
Set-Alias clip      clip.exe
Set-Alias time      Plugin-Utilities-Time
Set-Alias psversion Plugin-Utilities-Version

# Functions
Function Plugin-Utilities-Time {
  Param($Cmd)
  Measure-Command {
    $Cmd
  }
}

Function Plugin-Utilities-Version {
  $PSVersionTable.PsVersion
}

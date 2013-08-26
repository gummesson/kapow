# ~ Kapow! ~
#
# Utilities plugin
#  For easier access to utility tasks.

# Aliases
Set-Alias time      Plugin-Utilities-Time
Set-Alias psversion Plugin-Utilities-Version

# Functions
Function Plugin-Utilities-Time ($Cmd) {
  Measure-Command { $Cmd }
}

Function Plugin-Utilities-Version {
  $PSVersionTable.PsVersion
}

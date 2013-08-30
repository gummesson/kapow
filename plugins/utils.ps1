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
  Param(
    [Parameter(Position = 0, Mandatory=$true)]
    [alias("c")]
    [string]$Command
  )
  Measure-Command {
    $Command
  }
}

Function Kapow-Utilities-Version {
  Return $PSVersionTable.PsVersion.toString()
}

# ~ Kapow! ~
#
# Change directory plugin
#  For navigating in the filesystem.

# Aliases
Set-Alias ..     Kapow-Cd-UpOne
Set-Alias ...    Kapow-Cd-UpTwo
Set-Alias ....   Kapow-Cd-UpThree
Set-Alias .....  Kapow-Cd-UpFour
Set-Alias ...... Kapow-Cd-UpFive
Set-Alias mkcd   Kapow-Cd-MkDir

# Functions
Function Kapow-Cd-UpOne {
  Set-Location ../
}

Function Kapow-Cd-UpTwo {
  Set-Location ../../
}

Function Kapow-Cd-UpThree {
  Set-Location ../../../
}

Function Kapow-Cd-UpFour {
  Set-Location ../../../../
}

Function Kapow-Cd-UpFive {
  Set-Location ../../../../../
}

Function Kapow-Cd-MkDir {
  Param(
    [Parameter(Position = 0, Mandatory=$true)]
    [string]$Path
  )
  New-Item -Path $Path -ItemType directory > $null
  Set-Location $Path
}

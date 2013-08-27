# ~ Kapow! ~
#
# Change directory plugin
#  For navigating in the filesystem.

# Aliases
Set-Alias ..     Plugin-Cd-UpOne
Set-Alias ...    Plugin-Cd-UpTwo
Set-Alias ....   Plugin-Cd-UpThree
Set-Alias .....  Plugin-Cd-UpFour
Set-Alias ...... Plugin-Cd-UpFive
Set-Alias mkcd   Plugin-Cd-MkDir

# Functions
Function Plugin-Cd-UpOne {
  Set-Location ../
}

Function Plugin-Cd-UpTwo {
  Set-Location ../../
}

Function Plugin-Cd-UpThree {
  Set-Location ../../../
}

Function Plugin-Cd-UpFour {
  Set-Location ../../../../
}

Function Plugin-Cd-UpFive {
  Set-Location ../../../../../
}

Function Plugin-Cd-MkDir {
  Param($Path)
  New-Item -Path $Path -ItemType directory > $null
  Set-Location $Path
}

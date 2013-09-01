# == Kapow! ====================================================================
#
#  Change directory plugin
#   For navigating in the filesystem.
#
#  Usage:
#   mkcd [DIRECTORY]  Create a new directory and navigate in to it.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias ..     Set-LocationUpOneStep
Set-Alias ...    Set-LocationUpTwoSteps
Set-Alias ....   Set-LocationUpThreeSteps
Set-Alias .....  Set-LocationUpFourSteps
Set-Alias ...... Set-LocationUpFiveSteps
Set-Alias mkcd   Set-LocationToNewDirectory

# == Functions =================================================================

Function Set-LocationUpOneStep {
  Set-Location ../
}

Function Set-LocationUpTwoSteps {
  Set-Location ../../
}

Function Set-LocationUpThreeSteps {
  Set-Location ../../../
}

Function Set-LocationUpFourSteps {
  Set-Location ../../../../
}

Function Set-LocationUpFiveSteps {
  Set-Location ../../../../../
}

Function Set-LocationToNewDirectory {
  Param(
    [Parameter(Position = 0, Mandatory=$true)]
    [Alias("p")]
    [String]$Path
  )
  New-Item -Path $Path -ItemType directory > $null
  Set-Location $Path
}

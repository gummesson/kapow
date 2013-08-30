# ~ Kapow! ~
#
# List plugin
#  For listing and search for and inside files.
#
# Usage:
#  lcd         List all files in the current directory
#  lff *.md    List all files with the specified extension
#  lfi "word"  List all files that contains the specified string

# Aliases
Set-Alias lcd Kapow-List-Files
Set-Alias lff Kapow-List-FindFiles
Set-Alias lfi Kapow-List-FindInside

# Functions
Function Kapow-List-Files {
  Get-ChildItem -Name
}

Function Kapow-List-FindFiles {
  Param(
    [Parameter(Position = 0)]
    [alias("t")]
    [string]$Type = "*.*"
  )
  Get-ChildItem -Name -Recurse -Include $Type
}

Function Kapow-List-FindInside {
  Param(
    [Parameter(Position = 0, Mandatory=$true)]
    [string]$Type,
    [alias("t")]
    [Parameter(Position = 1, Mandatory=$true)]
    [alias("s")]
    [string]$String
  )
  Get-ChildItem -Recurse -Include $Type | Select-String $String |
  ForEach {
    (($_ -split ":\s+") -join ":")
  }
}

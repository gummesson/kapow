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
  Param($Type)
  Get-ChildItem -Name -Recurse -Include $Type
}

Function Kapow-List-FindInside { 
  Param($Type, $Term)
  Get-ChildItem -Recurse -Include $Type | Select-String $Term | ForEach {
    (($_ -split ":\s+") -join ":")
  }
}

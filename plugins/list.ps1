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
Set-Alias lcd Plugin-List-Files
Set-Alias lff Plugin-List-FindFiles
Set-Alias lfi Plugin-List-FindInside

# Functions
Function Plugin-List-Files {
  Get-ChildItem -Name
}

Function Plugin-List-FindFiles { 
  Param($Type)
  Get-ChildItem -Name -Recurse -Include $Type
}

Function Plugin-List-FindInside { 
  Param($Type, $Term)
  Get-ChildItem -Recurse -Include $Type | Select-String $Term
}

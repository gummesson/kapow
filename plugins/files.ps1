# == Kapow! ====================================================================
#
# Files plugin
#  For working with files.
#
# Usage:
#  fcd        List all files and folders in the current directory
#  ff *.md    List all files with the specified extension
#  fs "word"  List all files that contains the specified string

# == Aliases ===================================================================

Set-Alias fcd Get-FilesInCurrentDirectory
Set-Alias ff  Find-AllFiles
Set-Alias fs  Find-StringInFiles

# == Functions =================================================================

Function Get-FilesInCurrentDirectory { Get-ChildItem -Name }

Function Find-AllFiles {
  Param([Parameter(Position = 0)]
        [alias("t")]
        [string]$Type = "*.*")
  Get-ChildItem -Name -Recurse -Include $Type
}

Function Find-StringInFiles {
  Param([Parameter(Position = 0, Mandatory=$true)]
        [string]$Type,
        [alias("t")]
        [Parameter(Position = 1, Mandatory=$true)]
        [alias("s")]
        [string]$String)
  Get-ChildItem -Recurse -Include $Type | Select-String $String | ForEach {
    (($_ -split ":\s+") -join ":")
  }
}

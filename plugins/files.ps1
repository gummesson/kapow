# == Kapow! ====================================================================
#
#  Files plugin
#   For working with files.
#
#  Usage:
#   fcd               List all files and folders in the current directory.
#   ff [EXTENSION]    List all files with the specified extension.
#   fs [SEARCH TERM]  List all files that contains the specified string.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias fcd Get-FilesInCurrentDirectory
Set-Alias ff  Find-AllFiles
Set-Alias fs  Find-StringInFiles

# == Functions =================================================================

Function Get-FilesInCurrentDirectory { Get-ChildItem -Name }

Function Find-AllFiles {
  Param([Parameter(Position = 0)]
        [Alias("t")]
        [String]$Type = "*.*")
  Get-ChildItem -Name -Recurse -Include $Type
}

Function Find-StringInFiles {
  Param([Parameter(Position = 0, Mandatory=$true)]
        [String]$Type,
        [Alias("t")]
        [Parameter(Position = 1, Mandatory=$true)]
        [Alias("s")]
        [String]$String)
  Get-ChildItem -Recurse -Include $Type | Select-String $String | ForEach {
    (($_ -split ":\s+") -join ":")
  }
}

#
#  Edit plugin
#   For launching your default text editor.
#

# Aliases

Set-Alias edit Edit-File

# Functions

Function Edit-File {
  Param(
    [Parameter(Position = 0, Mandatory=$true)]
    [Alias("f")]
    [String]$File
  )
  Invoke-Expression "$KapowDefaultEditor $File"
}

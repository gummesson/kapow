# ~ Kapow! ~
#
# Edit plugin
#  For launching your default text editor.

# Aliases
Set-Alias edit Kapow-Edit-File

# Functions
Function Kapow-Edit-File {
  Param($File)
  Invoke-Expression "$KapowDefaultEditor $File"
}

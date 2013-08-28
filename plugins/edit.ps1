# ~ Kapow! ~
#
# Edit plugin
#  For launching your default text editor.

# Aliases
Set-Alias edit Plugin-Edit-File

# Functions
Function Plugin-Edit-File {
  Param($File)
  Invoke-Expression "$KapowDefaultEditor $File"
}

# ~ Kapow! ~
#
# Web plugin
#  For running various web based commands.

# Aliases
Set-Alias goo Kapow-Web-SearchGoogle

# Functions
Function Kapow-Web-SearchGoogle {
  Param($Term)
  Start-Process "http://www.google.com/search?q=$Term"
}

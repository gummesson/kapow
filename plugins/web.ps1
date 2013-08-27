# ~ Kapow! ~
#
# Web plugin
#  For running various web based commands.

# Aliases
Set-Alias goo Plugin-Web-SearchGoogle

# Functions
Function Plugin-Web-SearchGoogle {
  Param($Term)
  Start-Process "http://www.google.com/search?q=$Term"
}

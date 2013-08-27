# ~ Kapow! ~
#
# Tab expansion plugin
#  For enabling case-by-case tab expansion for common tasks 
#  inside a project's root directory.
#
# Usage:
#  rake <Tab>  Cycle through the specific tasks of the project.

# Functions
Function TabExpansion {
 Param($Line, $Cmd)
  If ($Line -match "rake") {
    rake -T | ForEach { 
      If ($_ -match "^rake ($Cmd\S*)" ) { return $matches[1] }
    }
  }
}

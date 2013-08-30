# ~ Kapow! ~
#
# Jekyll plugin
#  For working with Jekyll.
#
# Usage:
#  jkl <Tab>  Cycle through common Jekyll commands.

# Aliases
Set-Alias jkl Kapow-Jekyll-TabExpansion

# Functions
Function Kapow-Jekyll-TabExpansion {
  Param(
    [ValidateSet(
      "build", "docs", "doctor", "help", "import", "new", "serve")]
    [string]$Command
  )
  jekyll $Command $Args
}

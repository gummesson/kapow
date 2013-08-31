# ~ Kapow! ~
#
# Jekyll plugin
#  For working with Jekyll.
#
# Usage:
#  jkl <Tab>  Cycle through common Jekyll commands.

# Aliases
Set-Alias jkl Enable-JekyllTabExpansion

# Functions
Function Enable-JekyllTabExpansion {
  Param(
    [ValidateSet(
      "build",
      "docs",
      "doctor",
      "help",
      "import",
      "new",
      "serve")]
    [string]$Command
  )
  jekyll $Command $Args
}

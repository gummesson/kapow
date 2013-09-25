#
#  Jekyll plugin
#   For working with Jekyll.
#
#  Usage:
#   jkl <Tab>  Cycle through common Jekyll commands.
#

# Aliases

Set-Alias jkl Invoke-JekyllTabExpansion

# Functions

Function Invoke-JekyllTabExpansion {
  Param(
    [ValidateSet(
      "build",
      "docs",
      "doctor",
      "help",
      "import",
      "new",
      "serve")]
    [String]$Command
  )
  jekyll $Command $Args
}

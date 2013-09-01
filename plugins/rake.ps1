# == Kapow! ====================================================================
#
#  Rake plugin
#   For enabling case-by-case tab expansion for Rake tasks
#   inside a project's root directory.
#
#  Usage:
#   rake <Tab>  Cycle through the specific tasks of the project.
#
# ==============================================================================

# == Functions =================================================================

Function TabExpansion {
  Param(
    [Parameter(Position = 0)]
    [String]$Line,
    [Parameter(Position = 1)]
    [String]$Task
  )
  If ($Line -match "rake") {
    rake -T | ForEach {
      If ($_ -match "^rake ($Task\S*)" ) { Return $matches[1] }
    }
  }
}

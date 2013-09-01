# == Kapow! ====================================================================
#
#  Web plugin
#   For running various web based commands.
#
#  Usage:
#   goo [SEARCH TERM]  Search after a specific term on Google.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias goo Search-Google

# == Functions =================================================================

Function Search-Google {
  Param(
    [Parameter(Position = 0, Mandatory=$true)]
    [Alias("s")]
    [String]$SearchTerm
  )
  Start-Process "http://www.google.com/search?q=$SearchTerm"
}

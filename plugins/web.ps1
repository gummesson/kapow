# == Kapow! ====================================================================
#
#  Web plugin
#   For running various web based commands.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias goo Search-Google

# == Functions =================================================================

Function Search-Google {
  Param([Parameter(Position = 0, Mandatory=$true)]
        [string]$SearchTerm)
  Start-Process "http://www.google.com/search?q=$SearchTerm"
}

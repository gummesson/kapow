# == Kapow! ====================================================================
#
#  Sudo plugin
#   For running an application as an administrator.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias sudo Start-AsSudo

# == Functions =================================================================

Function Start-AsSudo {
  Param([Parameter(Position = 0, Mandatory=$true)]
        [Alias("a")]
        [String]$Application)
  Start-Process $Application -Verb "runAs" 
}

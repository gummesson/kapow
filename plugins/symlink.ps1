# == Kapow! ====================================================================
#
#  Symlink plugin
#   For creating symbolic links.
#
#  Usage:
#   symlink [SOURCE] [TARGET]
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias symlink Add-SymbolicLink

# == Functions =================================================================

Function Add-SymbolicLink {
  Param(
    [Parameter(Position=0, Mandatory=$true)]
    [Alias("s")]
    [String]$Source,
    [Parameter(Position=1, Mandatory=$true)]
    [Alias("t")]
    [String]$Target
  )
  $Link = "/c mklink $Target $Source"
  Start-Process cmd.exe -ArgumentList "$Link" -Verb "RunAs"
}

# == Kapow! ====================================================================
#
#  Bashlet theme
#   User@Computer ~\Git\Repo
#   $
#
# ==============================================================================

# == Functions =================================================================

Function Prompt {
  Write-Host "$env:username" -NoNewline -ForegroundColor Green
  Write-Host "@" -NoNewline
  Write-Host "$env:computername" -NoNewline -ForegroundColor Red
  Write-Host " " -NoNewline
  Write-Host $(Set-HomeDirectory("$pwd")) -ForegroundColor Yellow
  Write-Host "$" -NoNewline
  Return " "
}

Function Set-HomeDirectory {
  Param($Path)
  If ("$Path" -eq "$KapowDefaultHome") {
    $Path.Replace("$KapowDefaultHome", "~")
  } Else {
    $Path.Replace("$KapowDefaultHome", "~\")
  }
}

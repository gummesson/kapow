# == Kapow! ====================================================================
#
#  Inon theme
#   User in C:\Git\Repo on * master ~>
#
# ==============================================================================

# == Functions =================================================================

Function Prompt {
  Write-Host "$env:username" -NoNewline -ForegroundColor Green
  Write-Host " " -NoNewline
  Write-Host "in" -NoNewline
  Write-Host " " -NoNewline
  Write-Host "$pwd" -NoNewline -ForegroundColor Red
  Write-Host $(Set-GitBranch) -NoNewline -ForegroundColor Yellow
  Write-Host " " -NoNewline
  Write-Host "~>" -NoNewline
  Return " "
}

Function Set-GitBranch {
  If (Test-Path -Path ".\.git") {
    Write-Host " " -NoNewline
    Write-Host "on" -NoNewline
    Write-Host " " -NoNewline
    Write-Host $(git branch) -NoNewline -ForegroundColor Yellow
  }
}

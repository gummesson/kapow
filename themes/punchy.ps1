# == Kapow! ====================================================================
#
# Punchy theme
#  [User][C:\Git\Repo][* master]>

# == Functions =================================================================

Function Prompt {
  Write-Host "[" -NoNewline
  Write-Host "$env:username" -NoNewline -ForegroundColor Green
  Write-Host "]" -NoNewline
  Write-Host "[" -NoNewline
  Write-Host "$pwd" -NoNewline -ForegroundColor Red
  Write-Host "]" -NoNewline
  Write-Host $(Set-GitBranch) -NoNewline
  Write-Host ">" -NoNewline
  Return " "
}

Function Set-GitBranch {
  If (Test-Path -Path .\.git) {
    Write-Host "[" -NoNewline
    Write-Host $(git branch) -NoNewline -ForegroundColor Yellow
    Write-Host "]" -NoNewline
  }
}

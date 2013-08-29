# ~ Kapow! ~
# Punchy theme

# [User][C:\Git\Repo][* master]>
Function Prompt {
  Write-Host "[" -NoNewline
  Write-Host "$env:username" -NoNewline -ForegroundColor Green
  Write-Host "]" -NoNewline
  Write-Host "[" -NoNewline
  Write-Host "$pwd" -NoNewline -ForegroundColor Red
  Write-Host "]" -NoNewline
  Write-Host $(Kapow-Theme-GitBranch) -NoNewline
  Write-Host ">" -NoNewline
  return " "
}

Function Kapow-Theme-GitBranch {
  If (Test-Path -Path .\.git) {
    Write-Host "[" -NoNewline
    Write-Host $(git branch) -NoNewline -ForegroundColor Yellow
    Write-Host "]" -NoNewline
  }
}

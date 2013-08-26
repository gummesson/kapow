# ~ Kapow! ~
# Inon theme

# User in C:\Git\Repo on * master ~>
Function prompt {
  Write-Host "$env:username" -NoNewline -ForegroundColor Green
  Write-Host " in " -NoNewline
  Write-Host "$pwd" -NoNewline -ForegroundColor Red
  Write-Host $(Theme-Inon-GitBranch) -NoNewline -ForegroundColor Yellow
  Write-Host " ~>" -NoNewline
  return " "
}

Function Theme-Inon-GitBranch {
  If (Test-Path -Path .\.git) {
    Write-Host " on " -NoNewline
    Write-Host $(git branch) -NoNewline -ForegroundColor Yellow
  }
}

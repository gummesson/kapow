# ~ Kapow! ~
# Bashlet theme

# User@Computer $
Function prompt {
  Write-Host "$env:username" -NoNewline -ForegroundColor Green
  Write-Host "@" -NoNewline
  Write-Host "$env:computername" -NoNewline -ForegroundColor Red
  Write-Host " $" -NoNewline
  return " "
}

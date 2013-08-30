# ~ Kapow! ~
# Bashlet theme

# User@Computer ~\Git\Repo
# $
Function Prompt {
  Write-Host "$env:username" -NoNewline -ForegroundColor Green
  Write-Host "@" -NoNewline
  Write-Host "$env:computername" -NoNewline -ForegroundColor Red
  Write-Host " " -NoNewline
  Write-Host $(Kapow-Theme-SetHome("$pwd")) -ForegroundColor Yellow 
  Write-Host "$" -NoNewline
  Return " "
}

Function Kapow-Theme-SetHome {
  Param($Path)
  If ("$Path" -eq "$KapowDefaultHome") {
    $Path.Replace("$KapowDefaultHome", "~")
  } Else {
    $Path.Replace("$KapowDefaultHome", "~\")
  }
}

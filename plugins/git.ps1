# ~ Kapow! ~
#
# Git plugin
#  For working much faster with Git.
#
# Usage:
#  g <Tab>  Cycle through common Git commands.

# Enable colors
$env:TERM = 'cygwin'
$env:LESS = 'FRSX'

# Remove conflicting aliases
$KapowGitConflicts = ("gc", "gi", "gl", "gm", "gp")

ForEach ($Alias in $KapowGitConflicts) {
  Remove-Item alias:\$Alias -Force
}

# Aliases
Set-Alias g     Kapow-Git-TabExpansion
Set-Alias gst   Kapow-Git-Status
Set-Alias gi    Kapow-Git-Init
Set-Alias gd    Kapow-Git-Diff
Set-Alias gl    Kapow-Git-Pull
Set-Alias gp    Kapow-Git-Push
Set-Alias ga    Kapow-Git-Add
Set-Alias gc    Kapow-Git-Commit
Set-Alias gcmsg Kapow-Git-CommitMessage
Set-Alias gco   Kapow-Git-Checkout
Set-Alias gm    Kapow-Git-Merge
Set-Alias gb    Kapow-Git-Branch
Set-Alias gr    Kapow-Git-Remote
Set-Alias grb   Kapow-Git-Rebase
set-Alias glo   Kapow-Git-Log
set-Alias grh   Kapow-Git-ResetHead
Set-Alias gcp   Kapow-Git-CherryPick

# Functions
Function Kapow-Git-TabExpansion {
  Param(
    [ValidateSet(
      "add", "bisect", "branch", "checkout", "clone", "commit", "diff",
      "fetch", "grep", "help", "init", "log", "merge", "mv", "pull", "push",
      "rebase", "reset", "rm", "show", "status", "tag")]
    [string]$Command
  )
  git $Command ($args -join "")
}

Function Kapow-Git-Status {
  git status ($args -join " ")
}

Function Kapow-Git-Init {
  git init ($args -join " ")
}

Function Kapow-Git-Diff {
  git diff ($args -join " ")
}

Function Kapow-Git-Pull {
  git pull ($args -join " ")
}

Function Kapow-Git-Push {
  git push ($args -join " ")
}

Function Kapow-Git-Add {
  git add ($args -join " ")
}

Function Kapow-Git-Commit {
  git commit ($args -join " ")
}

Function Kapow-Git-CommitMessage {
  git commit -m ($args -join " ")
}

Function Kapow-Git-Checkout {
  git checkout ($args -join " ")
}

Function Kapow-Git-Merge {
  git merge ($args -join " ")
}

Function Kapow-Git-Branch {
  git branch ($args -join " ")
}

Function Kapow-Git-Remote {
  git remote ($args -join " ")
}

Function Kapow-Git-Rebase {
  git rebase ($args -join " ")
}

Function Kapow-Git-Log {
  git log ($args -join " ")
}

Function Kapow-Git-ResetHead {
  git reset HEAD ($args -join " ")
}

Function Kapow-Git-CherryPick {
  git cherry-pick ($args -join " ")
}

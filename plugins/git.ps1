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
      "add",
      "bisect",
      "branch",
      "checkout",
      "clone",
      "commit",
      "diff",
      "fetch",
      "grep",
      "help",
      "init",
      "log",
      "merge",
      "mv",
      "pull",
      "push",
      "rebase",
      "reset",
      "rm",
      "show",
      "status",
      "submodule",
      "tag")]
    [string]$Command
  )
  git $Command $Args
}

Function Kapow-Git-Status {
  git status $Args
}

Function Kapow-Git-Init {
  git init $Args
}

Function Kapow-Git-Diff {
  git diff $Args
}

Function Kapow-Git-Pull {
  git pull $Args
}

Function Kapow-Git-Push {
  git push $Args
}

Function Kapow-Git-Add {
  git add $Args
}

Function Kapow-Git-Commit {
  git commit $Args
}

Function Kapow-Git-CommitMessage {
  git commit -m $Args
}

Function Kapow-Git-Checkout {
  git checkout $Args
}

Function Kapow-Git-Merge {
  git merge $Args
}

Function Kapow-Git-Branch {
  git branch $Args
}

Function Kapow-Git-Remote {
  git remote $Args
}

Function Kapow-Git-Rebase {
  git rebase $Args
}

Function Kapow-Git-Log {
  git log $Args
}

Function Kapow-Git-ResetHead {
  git reset HEAD $Args
}

Function Kapow-Git-CherryPick {
  git cherry-pick $Args
}

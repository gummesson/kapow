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
$PluginGitConflicts = ("gc", "gi", "gl", "gm", "gp")

Foreach ($Alias in $PluginGitConflicts) {
  Remove-Item alias:\$Alias -Force
}

# Aliases
Set-Alias g     Plugin-Git-TabExpansion
Set-Alias gst   Plugin-Git-Status
Set-Alias gi    Plugin-Git-Init
Set-Alias gd    Plugin-Git-Diff
Set-Alias gl    Plugin-Git-Pull
Set-Alias gp    Plugin-Git-Push
Set-Alias ga    Plugin-Git-Add
Set-Alias gc    Plugin-Git-Commit
Set-Alias gcmsg Plugin-Git-CommitMessage
Set-Alias gco   Plugin-Git-Checkout
Set-Alias gm    Plugin-Git-Merge
Set-Alias gb    Plugin-Git-Branch
Set-Alias gr    Plugin-Git-Remote
Set-Alias grb   Plugin-Git-Rebase
set-Alias glo   Plugin-Git-Log
set-Alias grh   Plugin-Git-ResetHead
Set-Alias gcp   Plugin-Git-CherryPick

# Functions
Function Plugin-Git-TabExpansion {
  Param([ValidateSet(
    "add", "bisect", "branch", "checkout", "clone", "commit", "diff",
    "fetch", "grep", "help", "init", "log", "merge", "mv", "pull", "push",
    "rebase", "reset", "rm", "show", "status", "tag")]
  $Cmd)
  git $Cmd ($args -join "")
}

Function Plugin-Git-Status {
  git status ($args -join " ")
}

Function Plugin-Git-Init {
  git init ($args -join " ")
}

Function Plugin-Git-Diff {
  git diff ($args -join " ")
}

Function Plugin-Git-Pull {
  git pull ($args -join " ")
}

Function Plugin-Git-Push {
  git push ($args -join " ")
}

Function Plugin-Git-Add {
  git add ($args -join " ")
}

Function Plugin-Git-Commit {
  git commit ($args -join " ")
}

Function Plugin-Git-CommitMessage {
  git commit -m ($args -join " ")
}

Function Plugin-Git-Checkout {
  git checkout ($args -join " ")
}

Function Plugin-Git-Merge {
  git merge ($args -join " ")
}

Function Plugin-Git-Branch {
  git branch ($args -join " ")
}

Function Plugin-Git-Remote {
  git remote ($args -join " ")
}

Function Plugin-Git-Rebase {
  git rebase ($args -join " ")
}

Function Plugin-Git-Log {
  git log ($args -join " ")
}

Function Plugin-Git-ResetHead {
  git reset HEAD ($args -join " ")
}

Function Plugin-Git-CherryPick {
  git cherry-pick ($args -join " ")
}

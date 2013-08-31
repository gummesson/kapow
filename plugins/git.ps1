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
Set-Alias g     Enable-GitTabExpansion
Set-Alias gst   Send-GitStatus
Set-Alias gi    Send-GitInit
Set-Alias gd    Send-GitDiff
Set-Alias gl    Send-GitPull
Set-Alias gp    Send-GitPush
Set-Alias ga    Send-GitAdd
Set-Alias gc    Send-GitCommit
Set-Alias gcmsg Send-GitCommitMessage
Set-Alias gco   Send-GitCheckout
Set-Alias gm    Send-GitMerge
Set-Alias gb    Send-GitBranch
Set-Alias gr    Send-GitRemote
Set-Alias grb   Send-GitRebase
set-Alias glo   Send-GitLog
set-Alias grh   Send-GitResetHead
Set-Alias gcp   Send-GitCherryPick

# Functions
Function Enable-GitTabExpansion {
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

Function Send-GitStatus {
  git status $Args
}

Function Send-GitInit {
  git init $Args
}

Function Send-GitDiff {
  git diff $Args
}

Function Send-GitPull {
  git pull $Args
}

Function Send-GitPush {
  git push $Args
}

Function Send-GitAdd {
  git add $Args
}

Function Send-GitCommit {
  git commit $Args
}

Function Send-GitCommitMessage {
  git commit -m $Args
}

Function Send-GitCheckout {
  git checkout $Args
}

Function Send-GitMerge {
  git merge $Args
}

Function Send-GitBranch {
  git branch $Args
}

Function Send-GitRemote {
  git remote $Args
}

Function Send-GitRebase {
  git rebase $Args
}

Function Send-GitLog {
  git log $Args
}

Function Send-GitResetHead {
  git reset HEAD $Args
}

Function Send-GitCherryPick {
  git cherry-pick $Args
}

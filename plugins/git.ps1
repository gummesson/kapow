# == Kapow! ====================================================================
# Git plugin
#  For working with Git.
#
# Usage:
#  g <Tab>  Cycle through common Git commands.

# == Aliases ===================================================================

Set-Alias g      Enable-GitTabExpansion
Set-Alias gist   Send-GitStatus
Set-Alias gii    Send-GitInit
Set-Alias gid    Send-GitDiff
Set-Alias gil    Send-GitPull
Set-Alias gip    Send-GitPush
Set-Alias gia    Send-GitAdd
Set-Alias gic    Send-GitCommit
Set-Alias gicmsg Send-GitCommitMessage
Set-Alias gico   Send-GitCheckout
Set-Alias gim    Send-GitMerge
Set-Alias gib    Send-GitBranch
Set-Alias gir    Send-GitRemote
Set-Alias girb   Send-GitRebase
set-Alias gilo   Send-GitLog
set-Alias girh   Send-GitResetHead
Set-Alias gicp   Send-GitCherryPick

# == Functions =================================================================

Function Enable-GitTabExpansion {
  Param([ValidateSet(
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
        [string]$Command)
  git $Command $Args
}

Function Send-GitStatus { git status $Args } 
Function Send-GitInit { git init $Args }
Function Send-GitDiff { git diff $Args }
Function Send-GitPull { git pull $Args }
Function Send-GitPush { git push $Args }
Function Send-GitAdd { git add $Args }
Function Send-GitCommit { git commit $Args }
Function Send-GitCommitMessage { git commit -m $Args }
Function Send-GitCheckout { git checkout $Args }
Function Send-GitMerge { git merge $Args }
Function Send-GitBranch { git branch $Args }
Function Send-GitRemote { git remote $Args }
Function Send-GitRebase { git rebase $Args }
Function Send-GitLog { git log $Args }
Function Send-GitResetHead { git reset HEAD $Args }
Function Send-GitCherryPick { git cherry-pick $Args }

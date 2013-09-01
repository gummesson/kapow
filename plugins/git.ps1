# == Kapow! ====================================================================
#
#  Git plugin
#   For working with Git.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias gist   Invoke-GitStatus
Set-Alias gii    Invoke-GitInit
Set-Alias gid    Invoke-GitDiff
Set-Alias gil    Invoke-GitPull
Set-Alias gip    Invoke-GitPush
Set-Alias gia    Invoke-GitAdd
Set-Alias gic    Invoke-GitCommit
Set-Alias gicmsg Invoke-GitCommitMessage
Set-Alias gico   Invoke-GitCheckout
Set-Alias gim    Invoke-GitMerge
Set-Alias gib    Invoke-GitBranch
Set-Alias gir    Invoke-GitRemote
Set-Alias girb   Invoke-GitRebase
set-Alias gilo   Invoke-GitLog
set-Alias girh   Invoke-GitResetHead
Set-Alias gicp   Invoke-GitCherryPick

# == Functions =================================================================

Function Invoke-GitStatus {
  git status $Args
}

Function Invoke-GitInit {
  git init $Args
}

Function Invoke-GitDiff {
  git diff $Args
}

Function Invoke-GitPull {
  git pull $Args
}

Function Invoke-GitPush {
  git push $Args
}

Function Invoke-GitAdd {
  git add $Args
}

Function Invoke-GitCommit {
  git commit $Args
}

Function Invoke-GitCommitMessage {
  git commit -m $Args
}

Function Invoke-GitCheckout {
  git checkout $Args
}

Function Invoke-GitMerge {
  git merge $Args
}

Function Invoke-GitBranch {
  git branch $Args
}

Function Invoke-GitRemote {
  git remote $Args
}

Function Invoke-GitRebase {
  git rebase $Args
}

Function Invoke-GitLog {
  git log $Args
}

Function Invoke-GitResetHead {
  git reset HEAD $Args
}

Function Invoke-GitCherryPick {
  git cherry-pick $Args
}

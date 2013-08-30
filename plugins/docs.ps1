# ~ Kapow! ~
# Documentation plugin
#  For accessing the Kapow documentation.

# Aliases
Set-Alias docs Kapow-Docs

# Funcions
If ($PSVersionTable.PSVersion.Major -eq 3) { 
  Function Kapow-Docs {
    Param(
      [Parameter(Position = 0, Mandatory=$true)]
      [ValidateSet(
        "cd", "chocolatey","compass", "edit", "git", "jekyll", "jump",
        "list", "lwd", "rubygems", "tab", "utils", "web")]
      [string]$Doc
    )
    more "$KapowDocsPath\$Doc"
  }
} Else {
  Function Kapow-Docs {
    Param(
      [Parameter(Position = 0, Mandatory=$true)]
      [string]$Doc
    )
    more "$KapowDocsPath\$Doc"
  }
}

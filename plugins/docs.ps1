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
      [string]$Document
    )
    more "$KapowDocsPath\$Document"
  }
} Else {
  Function Kapow-Docs {
    Param(
      [Parameter(Position = 0, Mandatory=$true)]
      [string]$Document
    )
    more "$KapowDocsPath\$Document"
  }
}

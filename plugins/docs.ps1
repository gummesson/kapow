# ~ Kapow! ~
# Documentation plugin
#  For accessing the Kapow documentation.

# Aliases
Set-Alias docs Kapow-Kapow-Docs

# Funcions
If ($PSVersionTable.PSVersion.Major -eq 3) { 
  Function Kapow-Kapow-Docs {
    Param([ValidateSet(
      "cd", "chocolatey","compass", "edit", "git", "jekyll", "jump",
      "list", "lwd", "rubygems", "tab", "utils", "web")]
    $Doc)
    more "$KapowDocsPath\$Doc"
  }
} Else {
  Function Kapow-Kapow-Docs {
    Param($Doc)
    more "$KapowDocsPath\$Doc"
  }
}

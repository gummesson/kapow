# ~ Kapow! ~
# Documentation plugin
#  For accessing the Kapow documentation.

# Aliases
Set-Alias docs Plugin-Kapow-Docs

# Funcions
If ($PSVersionTable.PSVersion.Major -eq 3) { 
  Function Plugin-Kapow-Docs {
    Param([ValidateSet(
      "cd", "chocolatey","compass", "git", "jekyll", "jump",
      "list", "lwd", "rubygems", "tab", "utils", "web")]
    $Doc)
    more "$KapowDocsPath\$Doc"
  }
} Else {
  Function Plugin-Kapow-Docs {
    Param($Doc)
    more "$KapowDocsPath\$Doc"
  }
}

#
#  Compass plugin
#   For working with Compass.
#

# Aliases

Set-Alias cmpsc Invoke-CompassCompile
Set-Alias cmpsw Invoke-CompassWatch

# Functions

Function Invoke-CompassCompile {
  compass compile $Args
}

Function Invoke-CompassWatch {
  compass watch $Args
}

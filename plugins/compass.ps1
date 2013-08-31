# == Kapow! ====================================================================
#
#  Compass plugin
#   For working with Compass.
#
# ==============================================================================

# == Aliases ===================================================================

Set-Alias cmpsc Send-CompassCompile
Set-Alias cmpsw Send-CompassWatch

# == Functions =================================================================

Function Send-CompassCompile { compass compile $Args }
Function Send-CompassWatch   { compass watch $Args }

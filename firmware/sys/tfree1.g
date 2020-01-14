; Runs at the start of a toolchange if the current tool is Extruder 1.
; NOTE: tool offsets ARE applied at this point!
G53 G0 X11 Y320 F25000 ; Rapid approach to park location
G53 G1 Y364 F10000 ; Controlled move to park location (minus 1 so as to not go too far)
M98 P"/macros/tool_unlock.g" ; unlock the tool
G53 G1 Y320 F6000 ; Retract the pin

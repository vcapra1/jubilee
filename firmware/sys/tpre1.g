; Runs after freeing the previous tool if the next tool is Extruder 1.
; NOTE: tool offsets are NOT applied at this point!
G0 X91.5 Y290 F25000 ; Rapid approach to tool park location
G0 X91.5 Y319 F25000 ; Rapid approach to tool park location (closer this time)
G60 S2 ; Save this position as the reference point from which to later apply new tool offsets
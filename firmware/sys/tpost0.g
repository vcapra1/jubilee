; Runs after firmware thinks Extruder 0 is selected
; NOTE: tool offsets ARE applied at this point!
M116 P0 ; Wait for set temps to be reached
G53 G0 X284 Y320 F25000 ; Rapid approach to tool park location (if for some reason we aren't there already)
M302 P0 ; Prevent cold extrusion
G1 E5 F200 ; Purge the nozzle
G1 E5 F100 ; Purge the nozzle, but slower
G4 S1 ; wait a second
G1 E-1.0 F2000 ; Retract to relieve filament pressure
G53 G1 Y365 F10000 ; move to pickup position
M98 P"/macros/tool_lock.g" ; lock the tool
G53 G1 Y320 F6000 ; Retract the entire tool, and wipe back
G53 G1 Y360 F10000 ; Wipe forwards
G53 G1 Y320 F10000 ; Wipe backwards
G53 G1 Y360 F10000 ; Wipe forwards
G53 G1 Y320 F10000 ; Wipe backwards
G1 R2 X0 Y0 Z0 ; Restore prior position, accounting for new offset
M106 R2 ; restore prior print cooling fan speed

; Run at end of print, or after a job is canceled
M83 ; Relative extruder moves
G1 E-10 F8000 ; rapid retract 10mm
G91 ; relative moves
G1 Z2 F1000 ; raise nozzle
G90 ; absolute moves
T-1 ; deselect tool
G0 X10 Y2 F20000 ; go home
G10 P0 R-273.15 S-273.15 ; disable heater for Extruder 0
G10 P1 R-273.15 S-273.15 ; disable heater for Extruder 1
M140 S-273.15 ; disable bed heater
M84 ; disable steppers

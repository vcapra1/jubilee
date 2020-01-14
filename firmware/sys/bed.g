M401 ; Deploy probe
G0 X147.5 Y42 S1 F20000 ; move to next point
G30 P0 X147.5 Y42 Z-99999 ; probe at current location
G0 X290 Y300 S1 F20000 ; move to next point
G30 P1 X290 Y300 Z-99999 ; probe at current location
G0 X0 Y300 S1 F20000 ; move to next point
G30 P2 X0 Y300 Z-99999 S3 ; probe at current location and calibrate motors
M402 ; Retract probe
G1 X0 Y0 F20000 ; Go home

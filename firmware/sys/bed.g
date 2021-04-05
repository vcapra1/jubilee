M401 ; Deploy probe
G0 X138.5 Y42 S1 F5000 ; move to next point
G30 P0 X138.5 Y42 Z-99999 ; probe at current location
G0 X281 Y300 S1 F5000 ; move to next point
G30 P1 X281 Y300 Z-99999 ; probe at current location
G0 X-9 Y300 S1 F5000 ; move to next point
G30 P2 X-9 Y300 Z-99999 S3 ; probe at current location and calibrate motors
M402 ; Retract probe
G1 X0 Y0 F5000 ; Go home

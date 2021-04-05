
;; Jubilee Config File for RepRapFirmware 3

;; Name and Identification
M550 P"Jubilee"

;; Networking
M552 P"192.168.0.11" S1
M553 P"255.255.255.0"
M554 P"192.168.0.255"

;; Debugging
M111 S0
M929 P"eventlog.txt" S1

;; General Preferences
M555 P2
G21
G90
M83

;; Motor Drives
M584 X0 Y1 Z7:8:9 E6:5:4:3 U2
M569 P0 S0
M569 P1 S0
M569 P7 S0
M569 P8 S0
M569 P9 S0
M569 P2 S0
M569 P6 S0 D2
M569 P5 S0 D2
M569 P4 S0 D2
M569 P3 S0 D2
M669 K1

;; Kinematic bed ball locations
M671 X286:-9:138.5 Y316:316:-14 S5

;; Bed mesh definition
M557 X0:280 Y5:285 P10

;; Axes configuration
M350 X16 Y16 Z16 E4 U16 I1
M906 X1800 Y1800 Z1600 U900 E1250 I60
M203 X15000 Y15000 Z800 U10000 E8000
M201 X1000 Y1000 Z20 U1000 E1300
M566 X500 Y500 Z20 U200 E3000
M92 X200 Y200 Z800 U11.429 E820
M208 X-16:281 Y0:364 Z-0.5:220 U0:180

;; Endstops
M574 X1 S1 P"^xstop"
M574 X1 S1 P"^ystop"
M574 X1 S1 P"^zstop"
M574 X1 S1 P"^e0stop"

;; Z Probe
M558 P5 C"zstop" H5 A1 T3000 S0.02

;; Bed Heater
M308 S0 P"bedtemp" T100000 B3950 R4700
M950 H0 C"bedheat" T0
M143 H0 S120
M140 H0

;; Extruder Heaters
M308 S1 P"e0temp" T100000 B3950 R4700
M950 H1 C"e0heat" T1
M950 F0 C"fan0"
M950 F1 C"fan1"
M106 P1 H1 T45
M143 H1 S265
M308 S2 P"e1temp" T100000 B3950 R4700
M950 H2 C"e1heat" T2
M950 F3 C"duex.fan3"
M950 F4 C"duex.fan4"
M106 P4 H2 T45
M143 H2 S265
M308 S3 P"duex.e2temp" T100000 B3950 R4700
M950 H3 C"!duex.e2heat" T3
M950 F5 C"duex.fan5"
M950 F6 C"duex.fan6"
M106 P6 H3 T45
M143 H3 S265
M308 S4 P"duex.e3temp" T100000 B3950 R4700
M950 H4 C"!duex.e3heat" T4
M950 F7 C"duex.fan7"
M950 F8 C"duex.fan8"
M106 P8 H4 T45
M143 H4 S265

;; Tools
M563 P0 S"Extruder 1" D6 H1 F0
G10 P0 X-5 Y44 Z0
G10 P0 S-273 R-273
M572 D6 S0.1
M563 P1 S"Extruder 2" D5 H2 F3
G10 P1 X-5 Y44 Z0
G10 P1 S-273 R-273
M572 D5 S0.1
M563 P2 S"Extruder 3" D4 H3 F5
G10 P2 X-5 Y44 Z0
G10 P2 S-273 R-273
M572 D4 S0.1
M563 P3 S"Extruder 4" D3 H4 F7
G10 P3 X-5 Y44 Z0
G10 P3 S-273 R-273
M572 D3 S0.1

;; Misc
M501
M551 P"twentyonefortytwo"

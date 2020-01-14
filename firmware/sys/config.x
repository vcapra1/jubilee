
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Jubilee Config File - Auto-Generated on 06 Jan 2020 at 18:23:07 UTC by Vinnie Caprarola.


;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Name and Identification

M550 P"Jubilee"                                   ; Machine and Netbios name

;;;;;;;;;;;;;
;; Networking

M552 S1 P192.168.0.11                             ; Use Ethernet with static IP
M554 192.168.0.255                                ; Gateway
M553 P255.255.255.0                               ; Netmask

;;;;;;;;;;;;
;; Debugging

M111 S0                                           ; Debug off
M929 P"eventlog.txt" S1                           ; Start logging to file

;;;;;;;;;;;;;;;;;;;;;;
;; General Preferences

M555 P2                                           ; Set Marlin-style output
G21                                               ; Set dimensions to millimeters
G90                                               ; Send absolute coordinates
M83                                               ; Relative extruder moves

;;;;;;;;;
;; Joints

M584 X0 Y1 Z6:7:8 E3 U2                           ; Map axes to their driver(s), and toolchanger to U-axis
M569 P0 S0                                        ; Drive 0 direction | X stepper
M569 P1 S0                                        ; Drive 1 direction | Y stepper
M569 P6 S0                                        ; Drive 6 direction | Z stepper
M569 P7 S0                                        ; Drive 7 direction | Z stepper
M569 P8 S0                                        ; Drive 8 direction | Z stepper
M569 P2 S1                                        ; Drive 2 direction | Toolchanger actuator stepper
M569 P3 S0                                        ; Drive 3 direction | Extruder 0 stepper
M669 K1                                           ; CoreXY mode
M671 X300:5:152.5 Y316:316:-14 S5                 ; Kinematic bed ball locations (Max correction of 5)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Advanced Motor Configuration

M350 X16 Y16 Z16 E16 U4 I1                        ; Specify microstepping settings and whether to use interpolation
M574 X1 Y1 Z1 S1                                  ; All 3 axes are low-end endstops, and are active-high
M574 U1 S1                                        ; Toolchanger endstops (in series) are active-high
M906 X1800 Y1800 Z1600 E1250 U900 I60             ; Motor currents (mA)
M201 X1300 Y1300 Z20 E1300 U1000                  ; Motor accelerations (mm/s^2)
M203 X1000 Y1000 Z200 E8000 U1000              ; Motor max speeds (mm/min)
M566 X1400 Y1400 Z2 E3000 U200                    ; Motor max jerk speeds

;;;;;;;;;;;
;; Geometry

M92 X200 Y200 Z800 E837 U11.429                  ; Motor steps/mm
M208 X-2:307 Y0:365 Z-0.5:220 U0:180              ; Software limits for axis movements

;;;;;;;;;;;;;;
;; Thermistors

M305 P0 S"Bed" T100000 B3950 R4700 H0 L0          ; Bed thermistor values
M305 P3 S"E0" T100000 B4725 C7.06e-8 R4700 H0 L0  ; Extruder 0 sensor maps to thermistor

;;;;;;;;;;
;; Heaters

M143 H0 S80                                       ; Bed max temp
M143 H3 S240                                      ; Extruder 0 max temp
;M307 H0 A270.7 C90.4 D6.7 B0 S1.0                 ; Default bed heater params
M307 H0 A218.1 C369.1 D3.5 S1.00 V24.3 B0

;;;;;;;;
;; Tools

M563 P0 S"Extruder 0" D0 H3 F3                    ; Define Extruder 0
G10 P0 X0.0 Y0.0 Z0.0                             ; Set offsets for Extruder 0
G10 P0 S190 R170                                  ; Set temperatures (active and standby) for Extruder 0
M572 D0 S0.1                                      ; Set pressure advance on Extruder 0

;;;;;;;
;; Fans

M106 P0 S0                                        ; Turn off fan for Extruder 0

;;;;;;;;;;
;; Z Probe

M558 P4 C2 H2 A1 T3000 S0.02                      ; Z probe - raise probe height

;;;;;;;
;; Misc

M98 P"config-user.g"                              ; Load custom user config
M501                                              ; Load saved params from non-volatile memory

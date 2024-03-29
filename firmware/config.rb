module Config
    module Machine
        NAME = "Jubilee"
        LOG = "eventlog.txt"
        N_TOOLS = 4
        PASSWORD = "reprap" # set to "reprap" to disable
    end

    module Network
        ADDR = "192.168.1.11"
        NETMASK = "255.255.255.0"
        GATEWAY = "192.168.0.255"
    end

    module Bed
        BALLS_X = [292, 0, 146]
        BALLS_Y = [311, 311, -19]
        PROBE_POINTS = [
            {X: 146, Y: 5},
            {X: 282, Y: 281},
            {X: 10, Y: 281}
        ]
        MAX_CORRECTION = 5
        MESH_X_BOUNDS = [10, 282]
        MESH_Y_BOUNDS = [5, 281]
        MESH_SIZE = 10
        PROBE_DIVE = 2
        PROBE_SPEED = 3000
        PROBE_TOLERANCE = 0.02
    end

    module Drives
        IDLE_CURRENT_PERCENTAGE = 60
        module X
            NUMBER = 0
            DIR = 0
            MICROSTEPPING = 16
            STEPS_PER_MM = 200
            MAX_CURRENT = 1800 # mA
            MAX_SPEED = 15000 # mm/min
            MAX_ACCEL = 1000 # mm/s^2
            MAX_JERK = 500 # instantaneous change in mm/min
            SOFT_LIMITS = [-9, 301]
        end
        module Y
            NUMBER = 1
            DIR = 0
            MICROSTEPPING = 16
            STEPS_PER_MM = 200
            MAX_CURRENT = 1800
            MAX_SPEED = 15000
            MAX_ACCEL = 1000
            MAX_JERK = 500
            SOFT_LIMITS = [-43, 321]
        end
        module Z
            NUMBERS = [7, 8, 9]
            DIR = 0
            MICROSTEPPING = 16
            STEPS_PER_MM = 800
            MAX_CURRENT = 1600
            MAX_SPEED = 800
            MAX_ACCEL = 20
            MAX_JERK = 20
            SOFT_LIMITS = [-0.5, 220]
        end
        module E
            NUMBERS = [4, 3, 6, 5]
            DIR = 0
            MICROSTEPPING = 16
            STEPS_PER_MM = 820
            MAX_CURRENT = 1250
            MAX_SPEED = 8000
            MAX_ACCEL = 1300
            MAX_JERK = 3000
            PRESSURE_ADVANCE = 0.1
        end
        module U
            NUMBER = 2
            DIR = 1
            MICROSTEPPING = 16
            STEPS_PER_DEG = 45.716
            MAX_CURRENT = 900
            MAX_SPEED = 10000
            MAX_ACCEL = 1000
            MAX_JERK = 200
            SOFT_LIMITS = [0, 200]
        end
    end

    module Endstops
        module X
            POS = 1 # low end
            PIN = 0
            PULLUP = true
        end
        module Y
            POS = 1 # low end
            PIN = 1
            PULLUP = true
        end
        module Z
            POS = 1 # low end
            PIN = 2
            PULLUP = true
        end
        module U
            POS = 1 # low end
            PIN = 3
            PULLUP = true
        end
    end

    module Thermistors
        module Extruders
            NUMS = [3, 4, 5, 6]
            T = 100000
            B = 4725
            R = 4700
        end
        module Bed
            NUM = 0
            T = 100000
            B = 3950
            R = 4700
        end
    end

    module Heaters
        module Extruders
            NUMS = [4, 5, 6, 7]
            MAX_TEMP = 265
            DEFAULT_TEMP = 175
        end
        module Bed
            NUM = 0
            MAX_TEMP = 120
            DEFAULT_TEMP = 60
        end
    end

    module Fans
        PART_FAN_PINS = [0, 3, 5, 7]
        END_FAN_PINS = [1, 4, 6, 8]
        HE_ON_TEMP = 45
    end

    module Tools
        # Note: offset is from the Z probe
        NOZZLE_OFFSETS = [
            {X: -5, Y: 43, Z: -2.47}, # E1
            {X: -3.5, Y: 43.55, Z: -3.31}, # E2
            {X: -3.65, Y: 43, Z: -4.54}, # E3
            {X: -4.55, Y: 43.45, Z: -4.24}  # E4
        ]

        PARKING_X = [1, 96.8, 192.7, 288.5]
        PARKING_APPROACH_Y = 285
        PARKING_Y = 321
        PRIME_LENGTH = 90
    end

    module Speeds
        # All speeds in mm/min unless otherwise noted
        HOMING_XY = 15000
        HOMING_Z = 500
        PAUSE_XY = 3000
        PAUSE_Z = 500
        PAUSE_RETRACT = 2500
        END_RETRACT = 8000
        PARK_XY = 12000
        LOCK_SPEED = 5000
        PRIME = 1500
    end
end


module Config
    module Machine
        NAME = "Jubilee"
        LOG = "eventlog.txt"
        N_TOOLS = 4
        PASSWORD = "twentyonefortytwo"
    end

    module Network
        ADDR = "192.168.0.11"
        NETMASK = "255.255.255.0"
        GATEWAY = "192.168.0.255"
    end

    module Bed
        BALLS_X = [286, -9, 138.5]
        BALLS_Y = [316, 316, -14]
        MAX_CORRECTION = 5
        MESH_X_BOUNDS = [0, 280]
        MESH_Y_BOUNDS = [5, 285]
        MESH_SIZE = 10
        PROBE_DIVE = 5
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
            SOFT_LIMITS = [-16, 281]
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
            SOFT_LIMITS = [0, 364]
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
            NUMBERS = [6, 5, 4, 3]
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
            DIR = 0
            MICROSTEPPING = 4
            STEPS_PER_DEG = 11.429
            MAX_CURRENT = 900
            MAX_SPEED = 10000
            MAX_ACCEL = 1000
            MAX_JERK = 200
            SOFT_LIMITS = [0, 180]
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
            NUMS = [1, 2, 3, 4]
            T = 100000
            B = 3950
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
            NUMS = [1, 2, 3, 4]
            MAX_TEMP = 265
        end
        module Bed
            NUM = 0
            MAX_TEMP = 120
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
            {X: -5, Y: 44, Z: 0}, # E1
            {X: -5, Y: 44, Z: 0}, # E2
            {X: -5, Y: 44, Z: 0}, # E3
            {X: -5, Y: 44, Z: 0}  # E4
        ]
    end
end

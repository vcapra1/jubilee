#!/bin/env python

from ..Script import Script

from UM.Application import Application
from typing import List, Tuple

class Jubilee(Script):
    def __init__(self) -> None:
        super().__init__()

    def getSettingDataString(self) -> str:
        return """{
            "name": "Jubilee",
            "key": "Jubilee",
            "metadata": {},
            "version": 2,
            "settings": {}
        }"""

    def execute(self, data: List[str]) -> List[str]:
        data_modified = []

        initial_tool_nr = -1
        initial_bed_temp = 0
        initial_tool_temps = {}

        for index, layer in enumerate(data):
            lines = layer.split("\n")
            lines_modified = []

            if index == 0:
                # This is the header data, should be Marlin
                if lines[0] != ";FLAVOR:Marlin":
                    # Not Marlin, stop now (return original code with separators for debugging)
                    return list(map(lambda x: ";;;;;;\n" + x + "\n;;;;;;\n", data))

                # Just copy all these lines over
                lines_modified = lines

            elif index == 1:
                # This is the first non-header layer, add a T-1 and check for first T# command
                lines_modified.append("T-1 ; park any currently active tool")
                found = False
                for line in lines:
                    if not found and line.startswith("T"):
                        found = True
                        initial_tool_nr = int(line[1:])

                    elif found and (line.startswith("M104") or line.startswith("M109")):
                        parts = line.split(" ")
                        tool = initial_tool_nr
                        temp = 0
                        for part in parts:
                            if part.startswith("T"):
                                tool = int(part[1:])
                            elif part.startswith("S"):
                                temp = int(part[1:])
                        if tool not in initial_tool_temps:
                            initial_tool_temps[tool] = temp

                    elif line.startswith("M140") or line.startswith("M190"):
                        parts = line.split(" ")
                        temp = 0
                        for part in parts:
                            if part.startswith("S"):
                                temp = int(part[1:])
                        if initial_bed_temp == 0:
                            initial_bed_temp = temp

                    elif "M105" in line:
                        pass

                    elif "PROGRAM_START" in line:
                        # Add the temp stuff
                        if initial_bed_temp > 0:
                            lines_modified.append("M140 S{} ; heat the bed".format(initial_bed_temp))

                        for tool in initial_tool_temps:
                            lines_modified.append("M104 T{} S{} ; heat tool".format(tool, initial_tool_temps[tool]))

                        if initial_bed_temp > 0:
                            lines_modified.append("M190 S{} ; wait for bed to finish heating".format(initial_bed_temp))
                            lines_modified.append("G4 S60 ; wait an additional 60 seconds to allow plate to finish thermally expanding")

                        lines_modified.append("G28 ; home after bed has reached temperature")

                        lines_modified.append("T{} ; select first tool".format(initial_tool_nr))

                    else:
                        # No need to modify, so just copy this line over
                        lines_modified.append(line)

            elif index == len(data) - 1:
                # This is the very last "layer"
                lines_modified = lines

                lines_modified.append("M0")

            else:
                lines_modified = lines

            data_modified.append("\n".join(lines_modified) + "\n")

        return data_modified

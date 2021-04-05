# Firmware /sys folder

## WARNING: DO NOT USE

I'm currently updating this for RRF3, but am not finished yet.  Do not use this script until the updates are finished.

## Building

The `Rakefile` is used to build the files in this directory, using the configurations set in `config.json`.  This process should ensure the most consistency and eliminate any bugs caused by mis-copying values.  To run, you must have Ruby installed.  Then, just run `rake` in this directory.

Note that I changed the minimum X-coordinate from -2 to -7, and adjusted all other offsets accordingly.  This made it easier to set minimum bounds in my slicer settings.

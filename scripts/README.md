# Scripts (Danger Zone)

## Disclaimer

These scripts are designed to work with my build, which is essentially a pure Jubilee V1 build.  They have not been extensively tested, and I will continue to add to or modify them as needed.  Don't use them if you don't understand what they do, because something will ~probably~ definitely go wrong.

## Jubilee.py

This is a Cura post-processing script.  It has only been tested with Cura, and as such is only expected to work with Cura, as other slicers may generate slightly (or very) different code which the script is incompatible with.

I have used it with Cura 4.3 and 4.4 successfully, but there are no guarantees for other versions.

Before using the script, the following configurations MUST be set.  Note that you can add code to the G-code settings, but it may break the script so be sure to inspect the output.

### G-code flavor

`Marlin`

### Start G-code

```
; PROGRAM_START
```

### End G-code

```
; PROGRAM_END
```

### Extruder Start G-code

```
TOOL_START:E#
```

(where `#` is the tool index)

### Extruder End G-code

```
TOOL_END:E#
```

(where `#` is the tool index)

# PS3AnalogSticks
A fully customizable analog stick for PS3 and other consoles made with OpenSCAD.

## Description
This is a fully customizable analog stick mainly designed for PS3, but easily adaptable to other similar console joysticks thanks to its parameterizability and modularity.<br>
You can find the complete stick into the `joypad.scad` file.<br>

## Contents
- `joypad.scad`: contains a whole PS3 analog stick which uses the measures defined in `measures.scad` file
- `dome.scad`: module for the lower part of the analog stick (the dome)
- `stick.scad`: module for the moddle part (the stick) on top of the dome
- `pad.scad`: module for the upper part of the analog stick (the pad under your thumb)

Furthermore, the whole analog stick has been divided into parts to make the 3D print easier:
- `dome_holed.scad`: contains the PS3 analog stick lower part (the dome) with an hole on the top, where to insert the middle part (the stick)
- `stick_part.scad`: contains the PS3 analog stick middle part (the stick)
- `pad_lower_half.scad`: contains the lower half of the pad on top of the stick
- `pad_upper_half.scad`: contains the upper half of the pad on top of the stick

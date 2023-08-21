# PS3AnalogSticks
<img src="https://github.com/DarkFighterLuke/PS3AnalogSticks/blob/master/images/joypad.png?raw=true" alt="whole joypad" title="Whole PS3 analog stick" height=250>


<p>A fully customizable analog stick for PS3 and other consoles made with OpenSCAD.</p>
<p>Like it on Thingiverse: https://www.thingiverse.com/thing:6180849.</p>

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

## Print Settings
Rafts: No<br>
Supports: Yes, but only for the dome<br>
Resolution: 0.2mm<br>
Infill: 20%<br>

## Images
<table>
  <!-- first row -->
  <tr>
    <td>
      <div>
        <img src="https://github.com/DarkFighterLuke/PS3AnalogSticks/blob/master/images/dome_holed.png?raw=true" alt="dome_holed" title="PS3 analog stick holed dome" height=250>
      </div>
      <code>dome_holed.scad</code> 
    </td>
    <td>
      <div>
        <img src="https://github.com/DarkFighterLuke/PS3AnalogSticks/blob/master/images/stick_part.png?raw=true" alt="stick_part" title="PS3 analog stick middle part" height=250>
      </div>
      <code>stick_part.scad</code>
    </td>
  </tr>

  <!-- second row -->
  <tr>
    <td>
      <div>
        <img src="https://github.com/DarkFighterLuke/PS3AnalogSticks/blob/master/images/pad_lower_half.png?raw=true" alt="dome_holed" title="PS3 analog stick holed dome" height=250>
      </div>
      <code>pad_lower_half.scad</code> 
    </td>
    <td>
      <div>
        <img src="https://github.com/DarkFighterLuke/PS3AnalogSticks/blob/master/images/pad_upper_half.png?raw=true" alt="stick_part" title="PS3 analog stick middle part" height=250>
      </div>
      <code>pad_upper_half.scad</code>
    </td>
  </tr>
</table>

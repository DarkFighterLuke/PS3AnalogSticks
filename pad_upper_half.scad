include <measures.scad>
include <pad.scad>


difference(){
    pad(pad_diameter, pad_thickness);

    translate([-pad_diameter/2, -pad_diameter/2, -pad_thickness])
    cube([pad_diameter, pad_diameter, pad_thickness]);
}
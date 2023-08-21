include <measures.scad>
include <pad.scad>
include <stick.scad>


difference(){
    translate([0, 0, dome_height+stick_height+pad_thickness/2-2])
    pad(pad_diameter, pad_thickness);
    
    translate([0, 0, dome_height-1])
    cylinder(h=stick_height, r=stick_radius+0.4);
    
    translate([-pad_diameter/2, -pad_diameter/2, dome_height+stick_height+pad_thickness/2-2])
    cube([pad_diameter, pad_diameter, pad_thickness]);
}
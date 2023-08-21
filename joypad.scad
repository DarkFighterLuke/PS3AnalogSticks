include <measures.scad>
include <pad.scad>
include <dome.scad>
include <stick.scad>


resize([0, 0, dome_height], [false, false, true])
dome(dome_diameter, dome_height, graft_hole_width, graft_hole_height, 1);
translate([0, 0, dome_height+stick_height-0.5])
rotate([180, 0, 0])
stick(stick_height, stick_radius, graft_depth, graft_hole_width+0.1, graft_hole_height+0.1, graft_hole_depth, wall_size);
translate([0, 0, dome_height+stick_height+pad_thickness/2-2])
pad(pad_diameter, pad_thickness);
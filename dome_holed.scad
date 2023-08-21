include <measures.scad>
include <dome.scad>
include <stick.scad>


difference(){
    resize([0, 0, dome_height], [false, false, true])
    dome(dome_diameter, dome_height, graft_hole_width, graft_hole_height, 1);
    translate([0, 0, 1.2])
    cylinder(h=20, r=graft_hole_height/2+1+0.2, $fn=60);
}


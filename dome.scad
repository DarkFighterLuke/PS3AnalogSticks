module dome_reinforcement(dome_diameter, thickness, height) {
    difference(){
        resize(newsize=[thickness, 0, 0])
            sphere(r=dome_diameter/2-1, $fn=60);
        translate([-dome_diameter/2, -dome_diameter/2, -dome_diameter/2])
        cube([dome_diameter, dome_diameter, -height]);
        }
}

module dome(dome_diameter, dome_height, graft_hole_width, graft_hole_height, reinforcements_thickness) {
    difference(){
        cylinder(h=2, r=dome_diameter/2, $fn=60);
        cylinder(h=2, r=dome_diameter/2-1);
    }
    translate([0, 0, 2])
    difference(){
        sphere(d=dome_diameter, $fn=60);
        sphere(r=dome_diameter/2-1, $fn=60);
        translate([-dome_diameter/2, -dome_diameter/2, -dome_diameter])
        cube(dome_diameter);
    }
    
    // Dome reinforcements
    /*dome_reinforcement(dome_diameter, reinforcements_thickness, -dome_diameter/1.3);
    rotate([0, 0, 90])
    dome_reinforcement(dome_diameter, reinforcements_thickness, -dome_diameter/1.3);
    rotate([0, 0, 45])
    dome_reinforcement(dome_diameter, reinforcements_thickness,-dome_diameter/1.3);
    rotate([0, 0, 135])
    dome_reinforcement(dome_diameter, reinforcements_thickness,-dome_diameter/1.3);*/
}
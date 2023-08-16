pad_diameter = 19;
pad_thickness = 6;
dome_diameter = 29;
dome_height = 8;
graft_hole_width = 3;
graft_hole_height = 4;
stick_height = 5;
stick_radius = graft_hole_height/2+1;


module pad(pad_diameter, pad_thickness) {
    resize([pad_diameter, pad_diameter, pad_thickness])
    sphere(d=pad_diameter, $fn=10);
}

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
        sphere(d=dome_diameter, $fn=60);
        sphere(r=dome_diameter/2-1, $fn=60);
        translate([-dome_diameter/2, -dome_diameter/2, -dome_diameter])
        cube(dome_diameter);
    }
    dome_reinforcement(dome_diameter, reinforcements_thickness, -dome_diameter/1.3);
    rotate([0, 0, 90])
    dome_reinforcement(dome_diameter, reinforcements_thickness, -dome_diameter/1.3);
    rotate([0, 0, 45])
    dome_reinforcement(dome_diameter, reinforcements_thickness,-dome_diameter/1.3);
    rotate([0, 0, 135])
    dome_reinforcement(dome_diameter, reinforcements_thickness,-dome_diameter/1.3);
    
    difference(){
        cylinder(h=dome_diameter/2, r=graft_hole_height/2+1, $fn=60);
        translate([-graft_hole_width/2, -graft_hole_height/2, 0])
        cube([graft_hole_width, graft_hole_height, dome_height]);
    }
}

module stick(stick_height, stick_radius) {
    cylinder(h=stick_height, r=stick_radius, $fn=60);
}


dome(dome_diameter, dome_height, graft_hole_width, graft_hole_height, 1);
/*translate([0, 0, dome_diameter/2]
)
stick(stick_height, stick_radius);
translate([0, 0, dome_diameter/2+stick_height+pad_thickness/2])
pad(pad_diameter, pad_thickness);*/
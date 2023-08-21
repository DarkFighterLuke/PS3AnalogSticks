module stick(stick_height, stick_radius, graft_depth, graft_hole_width, graft_hole_height, graft_hole_depth, graft_wall_size) {
    difference(){
        union(){
            cylinder(h=stick_height, r=stick_radius, $fn=60);
            translate([0, 0, stick_height])
            cylinder(h=graft_depth, r=graft_hole_height/2+graft_wall_size, $fn=60);
        }
        translate([-(graft_hole_width)/2, -(graft_hole_height)/2, stick_height+graft_depth-graft_hole_depth])
        cube([graft_hole_width, graft_hole_height, graft_hole_depth]);
    }
}

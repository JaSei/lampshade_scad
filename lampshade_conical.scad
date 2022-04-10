height = 110;
bottom_d = 44;
top_d = 170;
facets = 40;

bottom_brim_thickness = 20;
bottom_brim_height = 2;

bottom_r=bottom_d/2;
top_r=top_d/2;
thickness=2;

difference() {
cylinder(height, bottom_r, top_r, $fn=facets);
translate([0,0,-0.01])
    cylinder(height+0.02, bottom_r-thickness, top_r-thickness, $fn=facets);
}

// brim
difference() {
    cylinder(1, bottom_d/2+bottom_brim_thickness, bottom_d/2+bottom_brim_thickness);
    translate([0,0,-0.01])
    cylinder(bottom_brim_height+0.02, bottom_d/2, bottom_d/2);
}
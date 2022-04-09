use <threadlib/threadlib.scad>

height = 110;
bottom_d = 70;
top_d = 170;
facets = 40;

bottom_r=bottom_d/2;
top_r=top_d/2;
thickness=2;

difference() {
cylinder(height, bottom_r, top_r, $fn=facets);
translate([0,0,-0.01])
    cylinder(height+0.02, bottom_r-thickness, top_r-thickness, $fn=facets);
}

nut("M42x3", turns=2, Douter=bottom_d);
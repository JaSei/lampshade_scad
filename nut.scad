use <threadlib/threadlib.scad>

turns = 1;
bottom_d = 85;
diameter = 42;
len_between_threads = 3;
holder_height = 5;
holder_weight = 5;
holders = 3;

nut_type = str("M",diameter,"x",len_between_threads);

height_of_nut = turns * len_between_threads;

nut(nut_type, turns=turns, Douter=bottom_d);
difference() {
    holders();

    translate([0,0,height_of_nut-0.01])
        cylinder(holder_height+0.02, diameter/2, diameter/2);
}

module holders() {
    shift = 180 / holders;
    
    for(angle = [0:shift:360])
    translate([0,0,height_of_nut + holder_height/2])
        rotate(angle)
            cube([holder_height,bottom_d,holder_weight], center=true);
};
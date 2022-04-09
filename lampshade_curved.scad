use <threadlib/threadlib.scad>

x = 250;
thickness = 2;
top_d = 170;
bottom_d = 70;


difference() {
    rotate_extrude($fn=100)
    difference() {
        polygon(bowl(top_d,x));
        offset(-thickness) polygon(bowl(top_d+thickness,x));
    };
    cylinder(top_d, bottom_d/2, bottom_d/2);
}

nut("M42x3", turns=2, Douter=bottom_d);

function point(i, R) = [
  i,
  i*i/R
];

function bowl(height, x_factor) = (
 concat(
    [ for (i = [0:1:height]) point(i, x) ],
    [[0,height*height/x]]
 )
);
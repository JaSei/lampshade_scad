curved_factor = 79;
thickness = 2;
top_d = 179;
bottom_d = 44;

difference() {
    rotate_extrude($fn=200)
    difference() {
        polygon(bowl(top_d/2,curved_factor));
        offset(-thickness) polygon(bowl(top_d/2+thickness,curved_factor));
    };
    cylinder(top_d, bottom_d/2, bottom_d/2);
}

function point(i, R) = [
  i,
  i*i/R
];

function bowl(height, x) = (
 concat(
    [ for (i = [0:1:height]) point(i, x) ],
    [[0,height*height/x]]
 )
);
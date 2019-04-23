

height = 28;
width = 48;
depth = 21;
thickness = 0.75;

LEG_HEIGHT = height;
LEG_PIN_DIAMETER = 0.5;
LEG_PIN_DISPLACEMENT = 2;
LEG_PIN_SPACING = 2;
LEG_PLATE_MARGIN = 1;
LEG_PLATE_THICKNESS = 0.125;

module Leg() {
    d1 = LEG_PIN_DISPLACEMENT+LEG_PIN_SPACING;
    d2 = LEG_PIN_DISPLACEMENT;
    alpha = atan((d1)/LEG_HEIGHT);
    beta = atan((LEG_PIN_DISPLACEMENT)/LEG_HEIGHT);
    l1 = sqrt(LEG_HEIGHT*LEG_HEIGHT + d1*d1 *2);
    l2 = sqrt(LEG_HEIGHT*LEG_HEIGHT + d2*d2 *2);

    union() {
        rotate([-beta, alpha, 0])
        cylinder(h=l1, d=LEG_PIN_DIAMETER, $fn = 30);

        rotate([-beta, beta, 0])
        cylinder(h=l2, d=LEG_PIN_DIAMETER, $fn = 30);

        rotate([-alpha, beta, 0])
        cylinder(h=l1, d=LEG_PIN_DIAMETER, $fn = 30);
    }
    
    c = LEG_PIN_SPACING + LEG_PLATE_MARGIN * 2;
    d = LEG_PIN_DISPLACEMENT+LEG_PIN_SPACING/2-c/2;
    translate([d, d, LEG_HEIGHT-LEG_PLATE_THICKNESS])
    difference() {
        cube([c, c, LEG_PLATE_THICKNESS]);
        //translate([c/2, c/2, 0]) cube([c, c, LEG_PLATE_THICKNESS]);
    }
}


module desktop(){
    color(c = [162/255, 132/255, 97/255, 1.0]){
        translate([0, 0, height])
        cube([width, 6.5, thickness]);
        translate([0, 7.25, height])
        cube([width, 6.5, thickness]);
        translate([0, 14.5, height])
        cube([width, 6.5, thickness]);
        
        translate([0, 6.5, height])
        cube([width - 36, thickness, thickness]);
        translate([36, 13.75, height])
        cube([width - 36, thickness, thickness]);
        
        //support structure
        translate([0, 0, height - thickness])
        cube([3, depth, thickness]);
        translate([width - 3, 0, height - thickness])
        cube([3, depth, thickness]);
        translate([width/2 - 1.5, 0, height - thickness])
        cube([3, depth, thickness]);
        translate([3, 0, height - thickness])
        cube([width - 6, 3, thickness]);
        translate([3, depth - 3, height - thickness])
        cube([width - 6, 3, thickness]);
    }
    
    color(c = [77/255, 0/255, 51/255, 1.0]){
        translate([12, 6.5, height])
        cube([36, thickness, thickness]);
        translate([0, 13.75, height])
        cube([36, thickness, thickness]);
        
        translate([-thickness, 0, height - thickness])
        cube([thickness, depth, 1.5]);
        translate([width, 0, height - thickness])
        cube([thickness, depth, 1.5]);
    }
}





module main(){
    
    translate([0.75, 0, 0.75])
    desktop();
    
    color("black"){
        
        Leg();
        
        translate([0, depth, 0])
        rotate([0, 0, -90])
        Leg();
        
        translate([width + 1.5, depth, 0])
        rotate([0, 0, 180])
        Leg();
        
        translate([width + 1.5, 0, 0])
        rotate([0, 0, 90])
        Leg();
    }
    
}main();














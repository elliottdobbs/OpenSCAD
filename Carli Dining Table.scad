//Carli Dining Table

//Will need to Cut off 0.75 inch off top if you want to use one piece of border


height = 28;
width = 48;
depth = 96;
thickness = 0.75;

module Top(){
    
    for (i = [0:3]){
        translate([12*i, 0, 0])
        cube([12, 96, 0.75]);
    }
    
    //Border
    translate([-0.75, -0.75, 0])
    cube([0.75, 97.5, 1.5]);
    translate([48, -0.75, 0])
    cube([0.75, 97.5, 1.5]);
    
    translate([-0.75, -0.75, 0])
    cube([49.5, 0.75, 1.5]);
    translate([-0.75, 96, 0])
    cube([49.5, 0.75, 1.5]);
}

module supports(){
    translate([0, 0, 0.75]){
        
        for(i = [0:5]){
            translate([3.5, 18.5*i, 0])
            cube([41, 3.5, 0.75]);
        }
        
        cube([3.5, 96, 0.75]);
        translate([44.5, 0, 0])
        cube([3.5, 96, 0.75]);
        
    }
}

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



module main(){
    rotate([180, 0, 0])
    translate([0, -96, -28 - 1.5])
    {
        color(c = [162/255, 132/255, 97/255, 1.0])
        Top();
        supports();
    }
    
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
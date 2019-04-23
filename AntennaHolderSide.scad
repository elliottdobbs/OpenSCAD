//Timbers Antenna holder

antennaDiam = 13;
screwDiam = 5;
height = 60;
width = 25;
thickness = 3;

module backplate(){
    difference(){
        union(){
            cube([width, height, thickness]);
        }
    
        union(){
            translate([0, 0, 0])
            rotate([0, -45, 0])
            cube([thickness * 2, height, thickness * 2]);
            translate([width, 0, 0])
            rotate([0, -45, 0])
            cube([thickness * 2, height, thickness * 2]);
            
            translate([0, 0, 0])
            rotate([45, 0, 0])
            cube([width, thickness*2, thickness * 2]);
            translate([0, height, 0])
            rotate([45, 0, 0])
            cube([width, thickness*2, thickness * 2]);
            
            translate([width/2, height/4])
            cylinder(10, screwDiam/2, screwDiam/2, $fn = 100, true);
            translate([width/2, 3*height/4])
            cylinder(10, screwDiam/2, screwDiam/2, $fn = 100, true);
        }
    }
}

module antennaMount(){
    difference(){
        union(){
            translate([width/2, height/2, 15])
            rotate([90, 0, 0])
            cylinder(thickness+1, antennaDiam/2 + 3, antennaDiam/2 + 3, $fn = 100, true);
            
            translate([width/2, height/2, 9])
            cube([antennaDiam + 6, thickness + 1, antennaDiam + 6 - antennaDiam/2], true);
        }
        
        union(){
            translate([width/2, height/2, 15])
            rotate([90, 0, 0])
            cylinder(thickness + 5, antennaDiam/2, antennaDiam/2, $fn = 100, true);
        }
    }
}








module main(){
    
    scale([0.75, 1, 1])
    backplate();
    translate([39.3, 17.5, 0])
    rotate([0, 0, 90])
    antennaMount();
    
}main();



















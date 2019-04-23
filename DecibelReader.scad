//Decibel Reader Holder

width = 54;
depth = 35;
height = 60;
buffer = 2;
thickness = 3;
screwDiam = 4;

bpWidth = 70;
bpHeight = 111;

module backplate(){
    difference(){
        union(){
            cube([bpWidth, bpHeight, thickness]);
        }
    
        union(){
            translate([0, 0, 0])
            rotate([0, -45, 0])
            cube([thickness * 2, bpHeight, thickness * 2]);
            translate([bpWidth, 0, 0])
            rotate([0, -45, 0])
            cube([thickness * 2, bpHeight, thickness * 2]);
            
            translate([0, 0, 0])
            rotate([45, 0, 0])
            cube([bpWidth, thickness*2, thickness * 2]);
            translate([0, bpHeight, 0])
            rotate([45, 0, 0])
            cube([bpWidth, thickness*2, thickness * 2]);
            
            translate([bpWidth/4, 10])
            cylinder(10, screwDiam/2, screwDiam/2, $fn = 100, true);
            translate([3*bpWidth/4, 10])
            cylinder(10, screwDiam/2, screwDiam/2, $fn = 100, true);
            
            translate([bpWidth/4, bpHeight - 10])
            cylinder(10, screwDiam/2, screwDiam/2, $fn = 100, true);
            translate([3*bpWidth/4, bpHeight - 10])
            cylinder(10, screwDiam/2, screwDiam/2, $fn = 100, true);
        }
    }
}

module cradle(){
    difference(){
        union(){
            cube([width + 2*(buffer + thickness),
                  depth + 2*(buffer + thickness),
                  height + thickness]);
        }
        
        union(){
            translate([thickness, thickness, thickness])
            cube([width + 2*buffer, depth + 2*buffer, height + buffer]);
            
            translate([(width + 2*(buffer + thickness))/2, 1, 70])
            cube([30, thickness + 2, 100], true);
        }
    }
}

module cradleFULL(){
    cube([width + 2*(buffer + thickness),
        depth + 2*(buffer + thickness),
        height + thickness]);
}







module main(){
    
    translate([-thickness, -thickness, -thickness])
    backplate();
    
    translate([0, 15, 0]){
    translate([0, 0, 30])
    rotate([-45, 0, 0])
    cradle();
    
    difference(){
        
        union(){
            translate([0, 0, 0])
            cube([64, 30, 30]);
            translate([0, 30, 0])
            cube([64, 46.35, 42.75]);
        }
        
        union(){
            translate([0, 0, 30])
            rotate([-45, 0, 0])
            cradleFULL();
        }
    }
}
    
    
    
}main();















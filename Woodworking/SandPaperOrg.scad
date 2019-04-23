//Sand Paper org

thickness = 4;
gap = 25;
paperParts = 3;
padParts = 3;

module paperTrianglePris(){
    difference(){
        cube([thickness*2 + gap, thickness*2 + 152, 50]);
        
        rotate([17, 0, 0])
        cube([thickness*2 + gap, thickness*2 + 200, 50]);
    }
}

module paperPart(){
    
    difference(){
        
        union(){
            cube([thickness*2 + gap, thickness*2 + 152, 50]);
            
            translate([0, 0, 50])
            paperTrianglePris();
        }
        
        //Slot
        union(){
            translate([thickness, thickness, thickness])
            cube([25, 152, 200]);
            
            scale([1, 0.9, 0.6])
            translate([0, 10, thickness*3])
            cube([thickness*2 + gap, thickness*2 + 152, 50]);
            
            scale([1, 0.9, 0.9])
            translate([0, 10, 50])
            paperTrianglePris();
        }
    }
}


module padTrianglePris(){
    difference(){
        cube([thickness*2 + gap, thickness*2 + 130, 50]);
        
        rotate([17, 0, 0])
        cube([thickness*2 + gap, thickness*2 + 200, 50]);
    }
}

module padPart(){
    
    difference(){
        
        union(){
            cube([thickness*2 + gap, thickness*2 + 130, 50]);
            
            translate([0, 0, 50])
            padTrianglePris();
        }
        
        //Slot
        union(){
            translate([thickness, thickness, thickness])
            cube([25, 130, 200]);
            
            scale([1, 0.9, 0.6])
            translate([0, 8, thickness*3])
            cube([thickness*2 + gap, thickness*2 + 130, 50]);
            
            scale([1, 0.9, 0.9])
            translate([0, 8, 50])
            padTrianglePris();
        }
    }
}





module main(){
    
    for (i = [0:2]){
        translate([i * (thickness + 25), 0, 0])
        padPart();
    }
    
    for (i = [3:5]){
        translate([i * (thickness + 25), 0, 0])
        paperPart();
    }
    
}main();



















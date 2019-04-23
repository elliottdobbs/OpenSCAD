//Chisel Holder

chiselDiam = 35;
buffer = 2;
thickness = 3;

module TrianglePris(){
    difference(){
        cube([thickness*2 + chiselDiam + 2*buffer, thickness*4 + 3 * (chiselDiam + buffer*2), 50]);
        
        rotate([21, 0, 0])
        cube([thickness*2 + chiselDiam + 2*buffer, 200, 50]);
    }
}

module holder(){
    
    difference(){
        
        union(){
            cube([thickness*2 + chiselDiam + buffer, thickness*4 + 3 * (chiselDiam + buffer*2), 50]);
            
            translate([0, 0, 50])
            TrianglePris();
        }
        
        union(){
            for(i = [0:2]){
                translate([thickness + chiselDiam/2 + buffer, 
                (thickness + chiselDiam/2 + buffer) + i*(thickness + chiselDiam + buffer*2), 
                thickness])
                cylinder(100, chiselDiam/2 + buffer, chiselDiam/2 + buffer, $fn = 100);
            }
        }
    }
    
}





module main(){
    
    holder();
    
    
}main();












//Mail Stamps

paperSize = 215.9;
buffer = 2;
thickness = 3;

module prism(){
    difference(){
        cube([25, paperSize + 2*buffer + 2*thickness, 150]);
        
        rotate([33.5, 0, 0])
        cube([25, 300, 150]);
    }
}

module holder(){
    difference(){
        
        union(){
            translate([0, 0, 50])
            prism();
            
            cube([25, paperSize + 2*buffer + 2*thickness, 50]);
        }
        
        union(){
            for (i = [0:1]){
                translate([25/4 - 2 + 25/2 * i, thickness, thickness])
                cube([4, paperSize + 2*buffer, 300]);
            }
        }
    }
}


module main(){
    holder();
}main();
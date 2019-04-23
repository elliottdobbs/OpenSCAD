//Smaller Cradle




module clip(){
    translate([0, 0, -2])
    scale([1, 1, 4/3])
    import("/Users/elliott.dobbs/Desktop/OpenSCAD/iMAG Clips/Parametric_clip.stl");
}

module cradle(){
    
    thickness = 3;
    buffer = 1;
    
    translate([-0.5*(69 + buffer + thickness), -(46.5 + buffer + thickness), 0])
    difference(){
        union(){
            cube([69 + buffer + 2*thickness,
                  46.5 + buffer + 2*thickness,
                  16]);
        }
        
        union(){
            translate([thickness, thickness, thickness])
            cube([69 + buffer,
                  46.5 + buffer,
                  16]);
            
            translate([0.5 * (69 + buffer + 2*thickness), 0.5 * (46.5 + buffer + 2*thickness), 1])
            cube([20.7 + buffer,
                  20 + buffer,
                  5], true);
        }
    }
}




module main(){
    
    translate([0, 20, 2])
    clip();
    
    cradle();
    
}main();














//Large Cradle




module clip(){
    translate([0, 0, -2])
    scale([1, 1, 5/3])
    import("/Users/elliott.dobbs/Desktop/OpenSCAD/iMAG Clips/Parametric_clip20.stl");
}

module cradle(){
    
    thickness = 2;
    buffer = 1;
    
    translate([-0.5 * (74.6 + buffer + 2*thickness), -1 * (27.5 + buffer + 2*thickness), 0])
    difference(){
        union(){
            cube([74.6 + buffer + 2*thickness,
                  27.5 + buffer + 2*thickness,
                  20]);
            
            //front left bevel
            cube([12, 12, 20]);
        }
        
        union(){
            translate([thickness, thickness, -0.5])
            difference(){
                union(){
                    cube([74.6 + buffer, 27.5 + buffer, 21]);
                }
                
                union(){
                    //front left bevel
                    translate([0, -9, 0])
                    rotate(45)
                    cube([12, 12, 22]);
                    
                    //rear left bevel
                    translate([0, 29.5 - 9.2, 0])
                    rotate(45)
                    cube([12, 12, 22]);
                    
                    //front right bevel
                    translate([74.6 + buffer, -9, 0])
                    rotate(45)
                    cube([12, 12, 22]);
                    
                    //rear right bevel
                    translate([74.6 + buffer, 29.5 - 9.2, 0])
                    rotate(45)
                    cube([12, 12, 22]);
                }
            }
            
            //FL
            translate([3, -12, 0])
            rotate(45)
            cube([12, 20, 22]);
            //BL
            translate([-3, 20.3, 0])
            rotate(45)
            cube([20, 12, 22]);
            //FR
            translate([74.6 + 2, -12, 0])
            rotate(45)
            cube([20, 12, 22]);
            //BL
            translate([74.6 + 8, 20.3, 0])
            rotate(45)
            cube([12, 20, 22]);
        }
        
        translate([-1, 0, 0])
        cube([100, 6, 20]);
    }
}




module main(){
    
    translate([0, 16, 2])
    clip();
    
    cradle();
    
}main();














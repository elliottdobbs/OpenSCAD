//Josiah's Kennel/Side Table

width = 24;
height = 24;
depth = 36;
thickness = 0.75;

module frame(){
    
    //front
    translate([0, 0, 0])
    cube([width, thickness, 3.5]);
    translate([0, 0, 0])
    cube([3.5, thickness, height]);
    translate([width - 3.5, 0, 0])
    cube([3.5, thickness, height]);
    translate([0, 0, height - 3.5])
    cube([width, thickness, 3.5]);
    
    //back
    translate([0, depth - thickness, 0])
    cube([width, thickness, 3.5]);
    translate([0, depth - thickness, 0])
    cube([3.5, thickness, height]);
    translate([width - 3.5, depth - thickness, 0])
    cube([3.5, thickness, height]);
    translate([0, depth - thickness, height - 3.5])
    cube([width, thickness, 3.5]);
    
}











module main(){
    
    frame();
    
}main();














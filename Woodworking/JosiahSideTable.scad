//Josiah's Kennel/Side Table

width = 24;
height = 24;
depth = 36;
thickness = 0.75;

boardWidth = 2.5;

module back(){
    
    translate([0, depth - thickness, 0])
    cube([width, thickness, boardWidth]);
    translate([0, depth - thickness, 0])
    cube([boardWidth, thickness, height]);
    translate([width - boardWidth, depth - thickness, 0])
    cube([boardWidth, thickness, height]);
    translate([0, depth - thickness, height - boardWidth])
    cube([width, thickness, boardWidth]);
    //backplate
    translate([0, depth - thickness - 0.25, 0])
    cube([width, 0.25, height]);
    
}

module front(){
    
    translate([0, 0, 0])
    cube([width, thickness, boardWidth]);
    translate([0, 0, 0])
    cube([boardWidth, thickness, height]);
    translate([width - boardWidth, 0, 0])
    cube([boardWidth, thickness, height]);
    translate([0, 0, height - boardWidth])
    cube([width, thickness, boardWidth]);
    
}

module base(){
    
    //floor
    translate([0, 0, boardWidth])
    cube([width, depth - thickness - 0.25, thickness]);
    //support
    translate([width/2 - 0.75, thickness, 0])
    cube([1.5, depth - thickness*2 - 0.25, boardWidth]);
    translate([width/2 - 0.75, thickness, 0])
    cube([1.5, depth - thickness*2 - 0.25, boardWidth]);
}

module frame(){
    
    front();
    back();
    base();
    
}











module main(){
    
    frame();
    
}main();














//Josiah's Kennel/Side Table

width = 24;
height = 24;
depth = 36;
thickness = 0.75;

boardWidth = 1.5;
plywoodThickness = 0.5;

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
    translate([width/2, 0, boardWidth])
    cube([boardWidth, thickness, height - boardWidth*2]);
    translate([width - boardWidth, 0, 0])
    cube([boardWidth, thickness, height]);
    translate([0, 0, height - boardWidth])
    cube([width, thickness, boardWidth]);
    //faceplate
    translate([width/2, thickness, 0])
    cube([width/2, 0.25, height]);
    
}

module base(){
    
    //floor
    translate([thickness, thickness, boardWidth])
    cube([width - thickness*2 - 0.25, depth - thickness*2 - 0.25, plywoodThickness]);
    //support
    translate([width/2 - thickness/2, thickness + 0.25, plywoodThickness])
    cube([thickness, depth - thickness*2 - 0.5, boardWidth - plywoodThickness]);
    translate([thickness + 0.25, depth/2, plywoodThickness])
    cube([width - thickness*2 - 0.5, thickness, boardWidth - plywoodThickness]);
    //floorFloor
    translate([thickness, thickness, 0])
    cube([width - thickness*2 - 0.25, depth - thickness*2 - 0.25, plywoodThickness]);
}

module leftSide(){
    translate([0, 0, 0])
    cube([thickness, depth, boardWidth]);
    translate([0, width/2, boardWidth])
    cube([thickness, boardWidth, height - boardWidth*2]);
    translate([0, depth - boardWidth, 0])
    cube([thickness, boardWidth, height]);
    translate([0, 0, height - boardWidth])
    cube([thickness, depth, boardWidth]);
    //sidePlate
    translate([thickness, width/2, 0])
    cube([0.25, depth - width/2, height]);
}

module rightSide(){
    translate([width - thickness, 0, 0])
    cube([thickness, depth, boardWidth]);
    translate([width - thickness, 0, boardWidth])
    cube([thickness, boardWidth, height - boardWidth*2]);
    translate([width - thickness, depth - boardWidth, 0])
    cube([thickness, boardWidth, height]);
    translate([width - thickness, 0, height - boardWidth])
    cube([thickness, depth, boardWidth]);
    //sidePlate
    translate([width - thickness - 0.25, 0, 0])
    cube([0.25, depth, height]);
}

module frame(){
    
    color(c = [162/255, 132/255, 97/255, 1.0]){
    front();
    back();
    base();
    leftSide();
    rightSide();
    top();
    }
    
}

module top(){
    
    //topCeil
    translate([thickness, thickness, height - boardWidth - plywoodThickness])
    cube([width - thickness*2 - 0.25, depth - thickness*2 - 0.25, plywoodThickness]);
    //support
    translate([width/2 - thickness/2, thickness + 0.25, height - boardWidth])
    cube([thickness, depth - thickness*2 - 0.5, boardWidth - plywoodThickness]);
    translate([thickness + 0.25, depth/2, height - boardWidth])
    cube([width - thickness*2 - 0.5, thickness, boardWidth - plywoodThickness]);
    //topTop
    translate([thickness, thickness, height - plywoodThickness])
    cube([width - thickness*2 - 0.25, depth - thickness*2 - 0.25, plywoodThickness]);
}











module main(){
    
    frame();
    
}main();














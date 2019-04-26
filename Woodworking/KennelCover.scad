//Kennel Cover

height = 27.5;
depth = 36.25;
width = 24.5;

thickness = 0.75;
legBoardThickness = 2.5;

//2 inches wide for legs

module leg(){
    cube([thickness, legBoardThickness, height]);
    cube([legBoardThickness, thickness, height]);
}

module top(){
    
    translate([thickness, thickness, height - thickness])
    cube([width - thickness*2, depth - thickness*2, thickness]);
    
    translate([0, legBoardThickness, height - 1.5])
    cube([thickness, depth - legBoardThickness*2, 1.5]);
    translate([width - thickness, legBoardThickness, height - 1.5])
    cube([thickness, depth - legBoardThickness*2, 1.5]);
    translate([2.5, 0, height - 1.5])
    cube([width - legBoardThickness*2, thickness, 1.5]);
    translate([2.5, depth - thickness, height - 1.5])
    cube([width - legBoardThickness*2, thickness, 1.5]);
    
}

module legssss(){
    
    leg();
    translate([width, 0, 0])
    rotate([0, 0, 90])
    leg();
    translate([width, depth, 0])
    rotate([0, 0, 180])
    leg();
    translate([0, depth, 0])
    rotate([0, 0, -90])
    leg();
    
}






module main(){
    
    color(c = [162/255, 132/255, 97/255, 1.0]){
        top();
        legssss();
    }
    
}main();












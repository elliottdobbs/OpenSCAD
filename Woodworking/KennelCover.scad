//Kennel Cover

height = 27.5;
depth = 36.25;
width = 24.5;

thickness = 0.75;


module top(){
    
    translate([0, 0, height - thickness])
    cube([width - thickness*2, depth - thickness*2, thickness]);
    
}

//






module main(){
    
    top();
    
}main();












// Cass Tic Tac Toe

module board(x, width){
    
    translate([0, -1.75, 0])
    cube([x, width, 0.75], true);
}



module main(){
    
    //Main part
    //Horiz
    translate([0, 0, 16])
    board(48, 3.5);
    translate([0, 0, 32])
    board(48, 3.5);
    //Vert
    translate([8, 0, 24])
    rotate([0, 90, 0])
    board(48, 3.5);
    translate([-8, 0, 24])
    rotate([0, 90, 0])
    board(48, 3.5);
    
//    //Square border
//    //Vert
//    translate([24, 0, 24])
//    rotate([0, 90, 0])
//    board(48, 3.5);
//    translate([-24, 0, 24])
//    rotate([0, 90, 0])
//    board(48, 3.5);
//    //Horiz
//    translate([0, 0, -0.375])
//    board(48.75, 3.5);
//    translate([0, 0, 48.375])
//    board(48.75, 3.5);

    //Mount
    translate([0, -0.375, 32.75])
    rotate([90, 0, 0])
    board(48, 1.5);
    translate([0, -0.375, 16.75])
    rotate([90, 0, 0])
    board(48, 1.5);
    
    
}main();














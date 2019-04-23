//Cassie TV Stand

width = 60;
depth = 16;
height = 24;
thickness = 1.25;

module top(){
    translate([0, 0, height - thickness])
    cube([width, depth, thickness]);
}

module sidewalls(){
    translate([1, 0, 0])
    cube([thickness, depth, height - thickness]);
    
    translate([width - thickness - 1, 0, 0])
    cube([thickness, depth, height - thickness]);
}

module angledSidewalls(){
    translate([1, 0, 0])
    rotate([0, 22.5, 0])
    cube([thickness, depth - thickness, (sin(22.5) * thickness + 0.1) + 1/cos(22.5)*(height - thickness)]);
    
    translate([width - thickness - 1, 0, -(sin(22.5) * thickness)])
    rotate([0, -22.5, 0])
    cube([thickness, depth - thickness, (sin(22.5) * thickness + 0.1) + 1/cos(22.5)*(height - thickness)]);
}

module back(){
    difference(){
        union(){
            translate([1, depth - thickness, 1])
            cube([width - 2, 0.25, height - thickness - 1]);
        }
        
        union(){
            translate([1, depth - thickness, 1])
            rotate([-45, 0, 0])
            cube([width, 2, 2]);
        }
        
    }
}

module bottom(){
    translate([1 + thickness, 0, 1])
    cube([width - 2*thickness - 2, depth - thickness, thickness]);
}

module shelves(){
    translate([thickness + 1, 0, height / 2])
    cube([width - 2*thickness - 2, depth - 1.25, thickness]);
    
    translate([width / 2, 0, 0])
    cube([thickness, depth - thickness, 12]);
    
    translate([width / 3, 0, 12])
    cube([thickness, depth - thickness, 12]);
    translate([2*width / 3, 0, 12])
    cube([thickness, depth - thickness, 12]);
}





module boxy(){
    
    top();
    
    sidewalls();
    
    //back();
    bottom();
    shelves();
    
}
color(c = [162/255, 132/255, 97/255, 1.0])
boxy();

module angled(){
    
    top();
    
    difference(){
        union(){
            angledSidewalls();
            back();
            bottom();
            shelves();
        }
        
        union(){
            
            translate([-20.648, 0, 0])
            rotate([0, 22.5, 0])
            cube([20, depth, 30]);
    
            translate([width - thickness - 1 + 1.353, 0, -(sin(22.5) * thickness)])
            rotate([0, -22.5, 0])
            cube([20, depth, 30]);
        }
    }
}//angled();
















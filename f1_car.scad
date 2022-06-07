//F1-Car von Christoph Pascal Ahlner (19INB-1)

//Vorderachse mit Reifen
translate([-12.5, 25, 5]) {
    rotate([0, 90, 0]) {
        cylinder(25, 1, 1);
    }
}

translate([10, 25, 5]) {
    rotate([0, 90, 0]) {
        cylinder(7.5, 7.5, 7.5);
    }
}

translate([-10, 25, 5]) {
    rotate([0, -90, 0]) {
        cylinder(7.5, 7.5, 7.5);
    }
}
//Flügel
union(){
    translate([0, -1, 0]) {
        rotate([0, 0, 10]){
            cube([20, 10, 1]);
        }
    }

    mirror([1, 0, 0]) {
        translate([0, -1, 0]) {
            rotate([0, 0, 10]){
                cube([20, 10, 1]);
                }
            }
    }
}
difference() {
    translate([0, 15, 5]){
        cube([10, 30, 10], center = true);
    }
    translate([0, 10, 10]){
        rotate([20, 0, 0])
    cube([11, 30, 10], center = true);
    }
}
//Karosserie
difference(){
    translate([0, 50, 5]) {
        cube([35, 40, 10], center = true);
    }
    translate([10, 21, -0.5]) {
        rotate([0, 0, 45]) {
        cube ([25, 10, 11]);
    }
    }
    mirror([1,0,0]){
        translate([10, 21, -0.5]) {
            rotate([0, 0, 45]) {
                cube ([25, 10, 11]);
            }
        }
    }
    translate([26, 64, -0.5]) {
        rotate([0, 0, 130]) {
            cube ([20, 10, 11]);
        }
    }
    mirror([1,0,0]){
        translate([26, 64, -0.5]) {
    rotate([0, 0, 130]) {
        cube ([20, 10, 11]);
    }
}
    }
    translate([6, 30, 2]) {
        cube([10, 30, 7]);
    }
    mirror([1, 0, 0]){
        translate([6, 30, 2]) {
        cube([10, 30, 7]);
}
    }
}
translate([0, 77, 5]) {
    cube([16, 15, 10], center = true);
}
//Hinterachse mit Reifen
translate([-12.5, 77, 5]) {
    rotate([0, 90, 0]) {
        cylinder(25, 1, 1);
    }
}

translate([10, 77, 5]) {
    rotate([0, 90, 0]) {
        cylinder(9, 7.5, 7.5);
    }
}

translate([-10, 77, 5]) { 
    rotate([0, -90, 0]) {
        cylinder(9, 7.5, 7.5);
    }
}
//Fahrer
translate([0, 55, 10]){
    scale([1.1, 2.2, 1]){
        difference(){
            sphere(8);
            translate([0, 0, -4]){
                cube([16, 16, 8],center = true);
            }
        }
    }   
}

// Spoiler
union() {
    translate([5, 82, 5]){
        cube([1, 5, 12]);
    }
    
    mirror([1, 0, 0]){
        translate([5, 82, 5]){
            cube([1, 5, 12]);
        } 
    }
    
    translate([0, 81, 15.5]){
        cube([40, 10, 1], center = true);
    }
}

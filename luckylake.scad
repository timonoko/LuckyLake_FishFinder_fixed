use <threads-library-by-cuiso-v1.scad>

$fn=200;

difference(){
  union(){
    cylinder(d=80,h=12);
    cylinder(d=84,h=5,$fn=12);
  }
  //  translate([0,0,-3])cylinder(d=70,h=10);
  translate([0,0,3]) thread_for_nut(diameter=76,length=20,usrclearance=0.1);
 translate([0,0,-1])cylinder(d=62,h=30);
}



translate([84,0,0])difference(){
  union(){
    cylinder(d=84,h=5,$fn=12);
    thread_for_screw(diameter=76, length=12);
  }
  translate([0,0,3])cylinder(d=68,h=20);
  translate([0,0,-1])cylinder(d=62,h=30);
}

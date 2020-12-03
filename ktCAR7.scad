




//magsafe(0,-1,100);

difference()
{
    union()
    {
        translate([0,0,100]) rotate([-90,0,0]) cylinder(h=30,r=62/2,$fn=100);
        translate([-30,0,20]) cube([40,30,80]);
    }
    magsafe(0,-1,100);
    translate([-60,-1,0]) cube([50,20,150]);
    translate([-60+50,-1+20,0]) rotate ([0,0,180-25]) cube([50,30,150]);
}



module magsafe(X,Y,Z)
{
    color("LightGrey")
    translate([X,Y+9,Z])
    rotate([90,0,0])
    {
        difference()
        {
            cylinder(h=9,r=60/2,$fn=100);
            translate([10,-70/2,-5+3]) cube([25,70,5]);
            translate([-25-10,-70/2,-5+3]) cube([25,70,5]);
        }
        translate([-12/2,-60/2-45,9/2+4-50]) cube([12,50,50]);
    }
}

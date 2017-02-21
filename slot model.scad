//This is a replica of Autodesk meshmixer's functional clip slot. This clip slot is based on meshmixer's default clip size of about 20.42mm size. 

scalesize=1; //by default, meshmixer use scale based size

//clip_slot();

$fn=80;
module clip_slot()
{
    union()
    {
        slot();
        mirror([0,0,1])slot();
    }
}
module slot()
{
    union()
    {
        color("cyan")cylinder(d1=9.125,d2=8.3,h=0.65, center=false);

        translate([0,0,7.])color("cyan")cylinder(d1=8.3,d2=9.15,h=0.65, center=false);
        translate([0,0,7.65])color("cyan")cylinder(d1=9.15,d2=9.3,h=0.15, center=false);
        translate([0,0,7.8])color("cyan")cylinder(d=9.3,h=0.625, center=false);
        
        translate([0,0,8.425])color("cyan")cylinder(d1=9.3,d2=9.2,h=0.15, center=false);
        translate([0,0,8.575])color("cyan")cylinder(d1=9.2,d2=7.75,h=1.1, center=false);
        
        color("cyan")cylinder(d=8.3,h=8, center=false);
        color("blue")cylinder(d=7.95,h=10.2, center=false);
    }

}

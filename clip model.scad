//This is a replica of Autodesk meshmixer's functional clip. This clip is based on meshmixer's default clip size of about 20.13mm size. 

length=0; //change this if you want to make the clip longer/shorter. 

scalesize=1; //by default, meshmixer use scale based size


//fullclip();

$fn=80;

module fullclip()
{
    rotate([90])scale([scalesize,scalesize,scalesize])difference()
    {
        union()
        {
            body();
            mirror([0,0,1])body();
        }
        cut();
        mirror([0,0,1])cut();
    }
}

module body()
{
    color("cyan")cylinder(d=7.98,h=7.5+(length));
    translate([0,0,6.925+(length)])color("cyan")cylinder(d1=7.98,d2=8.25,h=0.35);
    translate([0,0,7.275+(length)])color("cyan")cylinder(d1=8.25,d2=8.972,h=0.567);
    
    translate([0,0,7.842+(length)])color("cyan")cylinder(d=8.972,h=0.581);

    translate([0,0,8.423+(length)])color("cyan")cylinder(d1=8.972,d2=8.825,h=0.232);
    translate([0,0,8.655+(length)])color("cyan")cylinder(d1=8.825,d2=8.7,h=0.115);
    
    translate([0,0,8.77+(length)])color("cyan")cylinder(d1=8.7,d2=7.29,h=1.055);
    
    translate([0,0,9.825+(length)])color("cyan")cylinder(d1=7.29,d2=7.088,h=.121);

    translate([0,0,9.946+(length)])color("cyan")cylinder(d1=7.088,d2=6.81125,h=.098);
    
    translate([0,0,10.044+(length)])color("cyan")cylinder(d1=6.81125,d2=6.585,h=.019);
}

module cut()
{
    echo(6.925+0.35);
    translate([0,0,2.862+(length)])color("green")cylinder(d=3.175,h=10);
    
    translate([-1.001,-4,2.862+(length)])color("blue")cube([2.0003,8,10]);
    
    translate([-5.00,-5.9978,0])color("red")cube([10,2.5,12+(length)]);
    mirror([0,1,0])translate([-5.00,-5.9978,0])color("red")cube([10,2.5,12+(length)]);

}
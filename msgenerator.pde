////////////////
GENERATING-MOBIUS-STRIP
////VARIABLES DECLARATION
var w1 = 1;
var w2 = 2;
var t = 20;
var o0x = 200;
var o0y = 200;
var R = 130;
var r = 30;
var o1x;
var o1y;
var Mx, My;

////SETUP
void setup()
{
    o1x = o0x + R;
    o1y = o0y;
    strokeWeight(1);
}

//SET VARIABLES IN RELATION TO EACH OTHER
var findCoords = function() 
{
    w1=2*t;
    o1x = R*(sin(w1*t))+o0x;
    o1y = R*(cos(w1*t))+o0y;
    Mx=o1x+cos(90+w2*t)*r;
    My=o1y+sin(90+w2*t)*r;
};

//DRAWING MOBIUS STRIP
var drawM = function()
{
    stroke(29, 18, 232);
    strokeWeight(2);
    point(Mx,My);
    strokeWeight(1);
    fill(0, 0, 0);
    text(t,12,15);
};

//MAIN DRAWING FUNCTION
void draw()
{
    findCoords();
    fill(255, 255, 255);
    rect(1,0,60,20);
    drawM();
    if(t<130)
    {
      t=t+0.02;  
    }
}

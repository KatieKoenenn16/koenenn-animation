//Project 3
//Katie Koenenn
//main class

//instances of segment 
Segment arm = new Segment (300,200,-90,100);

//instances of skeleton 
Skeleton mySkeleton = new Skeleton (300,200);

//setup function 

void setup () {
  size (600,400);
  background (255,255,255);
  
  arm.weight = 10;
  
} //end setup

//draw function 

void draw () {
  background (241,255,232);
  
stroke (0,0,0);
fill (0,255,223);
ellipse (300,60,40,40);

  
  //arm.drawLine();
  
  mySkeleton.act ();
  
  
} //end draw function 


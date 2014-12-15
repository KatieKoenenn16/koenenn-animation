//Katie Koenenn
//Project01 xmas tree

//define function
void drawTree (int x, int y, int s) { 
  fill (44,242,78); //green
  //bottom
  triangle (x,y,x+7*s,y-5*s,x+14*s,y+0*s);
  //middle
  triangle (x+2*s,y-2*s,x+7*s,y-7*s,x+12*s,y-2*s);
  //top
  triangle (x+2.5*s,y-4*s,x+7*s,y-10*s,x+12*s,y-4*s);
  stroke (25,90,32);
 // base 
fill (62,53,6); //brown
rect (x+6*s,y+0*s,2*s,3*s);
}
 void drawPresent (int x, int y, int s) {
 //present right
fill (247,7,220); //pink
rect (x+2*s,y+1*s,3*s,2*s);
//present left 
fill (38,7,247); //blue
rect(x+10*s,y+1*s,4*s,2*s);
 }
 void drawOrnament (int x, int y, int s) {
//ornament 1 
fill (255,0,255); //pink
ellipse(x+2.5*s,y-1*s,.5*s,.5*s);
//ornament 2
fill (250,167,13); //orange 
ellipse (x+10*s,y-1.5*s,.5*s,.5*s);
//ornament 3 
fill (194,151,245); //purple
ellipse (x+7.5*s,y-2*s,.5*s,.5*s);
//ornament 4
fill (247,252,102); //yellow
ellipse (x+5*s,y-3*s,.5*s,.5*s);
//ornament 5
fill (255,255,255); //white
ellipse (x+7*s,y-4.5*s,.5*s,.5*s);
//ornament 6
fill (0,0,0);  //black
ellipse (x+9*s,y-6*s,.5*s,.5*s);
//ornament 7
fill (250,0,0); //red
ellipse( x+6*s,y-7*s,.5*s,.5*s);

 }
void drawRibbon (int x, int y, int s) {
//ribbon on present one
line (x+2*s,y+2*s,x+5*s,y+2*s);
line (x+3.5*s,y+1*s,x+3.5*s,y+3*s);
//ribbon on present two 
line (x+10*s, y+2*s, x+14*s,y+2*s);
line (x+12*s, y+1*s, x+12*s, y+3*s);
}
void drawTopper (int x, int y, int s) {
//topper
quad ( x+7*s,y-10*s,x+6*s,y-11*s,x+7*s,y-13*s,x+8*s,y-11*s);
fill(255,0,0); //red
}
void drawGarland (int x, int y, int s) {
  //top garland 
   stroke(0);
  arc (320, 160,50,50, -PI/44,PI); //top 
  arc (320,200,110,60, -PI/44,PI);//bottom
}


void setup () {
  size (600,400); //canvas
  background (10,247,229); //color of background
   drawTree (100,270,15);
   drawTree(350,250,13);
  stroke (28,103,42); //dark green stroke on tree
  strokeWeight (2); //thickness
  drawTree (200,300,17);
  stroke (0,0,250); //green stroke on ornaments
  strokeWeight (1); //thickness
   drawOrnament (200,300,17);
   stroke (247,7,168); //hot pink topper outline 
   strokeWeight (2); //thickness
  drawTopper (200,300,17);
  stroke (255,133,3); //orange present outline
  strokeWeight (2); //thickness
  drawPresent (200,300,17);
  stroke (255,255,255); //white ribbon otline
  strokeWeight(2); //thickness
  drawRibbon (200,300,17);
  fill(250,250,250,0);
  strokeWeight (2);
  drawGarland (200,300,17);
}
  

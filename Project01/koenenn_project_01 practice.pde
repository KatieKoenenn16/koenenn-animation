// Katie Koenenn
//Project 1 

//Define function
void drawSnowman (int x, int y, int s) {
  fill (240,240,240); //white ish
  // low
  ellipse (x,y+6*s,11*s,11*s);
  //mid
  ellipse(x,y,8*s,8*s);
  //head
  ellipse(x,y-5*s,6*s,6*s);
  //right eye
  fill (0,0,0); //black
  ellipse(x-1*s,y-6*s,1*s,1*s);
  //left eye
  fill (0,0,0); //black
  ellipse(x+1*s,y-6*s,1*s,1*s); 
//nose 
fill (247,194,112); //orange
triangle(x+.5*s,y-5*s,x+.5*s,y-4*s,x+1.5*s,y-4*s);
//hat
fill (156,12,247); //purple
rect(x-1.5*s,y-11.5*s,3*s,3*s);//top
rect (x-3*s,y-8.5*s,6*s,1*s); //bottom
//mouth 
fill (240,240,240);
arc (x,y-4*s,4*s,2*s,0,PI); 

}

void setup () {
  size (600,400); //canvas
  background(13,237,255);
  drawSnowman(300,200,10);
  drawSnowman (400,200,5);
}
void draw () { 
  drawSnowman(mouseX,mouseY,5); // move snowman 
}

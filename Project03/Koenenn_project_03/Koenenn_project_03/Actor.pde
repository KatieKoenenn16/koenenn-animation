class Actor{
//fields
float x; 
float y;
int fillRed = 0; //colors for fill 
int fillGreen = 0;
int fillBlue = 0;   
int penRed = 0;
int penGreen = 0;
int penBlue = 0; 
int size = 50;
int wid = 50;
int hei = 50;
int dx = 0; 
int dy = 0;

float velocity = 0;
float direction = 0;


//Constructor 1
public Actor (float xPos, float yPos) {
  x = xPos;
  y = yPos;
  
  
}

//Constructor 2: Blank 
public Actor () {
} 

//set fill and pen color
public void setColor (int r, int g, int b){
  fillRed = r;
 fillGreen = g;
 fillBlue = b; 
}
void setPenColor (int r, int g, int b){
  penRed = r;
  penGreen = g;
  penBlue = b;
}
//move and goTo functions 
  void move () {
    x = x + dx;
    y = y +dy;
  }
  void goTo (float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }
  //bounce edge
  void bounceEdge () {
    if (x > width || x <0){
      dx = dx * -1;
    }
    
   if (y> height || y <0) {
     dy = dy * -1;
   }
  }
   
   //setDx and setDY
   void setDX (int xVel) { 
     dx = xVel;
   }
   void setDY (int yVel) {
     dy = yVel;
   }
   //rectangle function
   void drawRect() {
  }
  void drawEllipse() {
  }
  void drawTriangle () {
  }
  void drawArc () {
  }
  
  public void turn (float t){
  direction += t; //change direction by t 
} //end turn 
  
} //end actor 


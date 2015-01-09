//segment class
//segment class will extend actor 

class Segment extends Actor {
float len; //length of line 
float weight = 5; //thickness

//constructors
public Segment (float x, float y) {
  super (x, y);
  len = size; //default
}

public Segment (float x, float y, float d, float s) {
super (x,y);
direction = d;
len = s; 
  
}
  public Segment () {
  }
  
  //draw line function 
  public void drawLine () {
   //calculate endpoints 
  float x2 = x + len * cos(radians(direction));  
    float y2 = y + len * sin(radians(direction));
    stroke (penRed, penGreen, penBlue);
    strokeWeight (weight);
    line (x, y, x2, y2);
  }
  public float getEndX () {
    float x2 = x + len * cos(radians(direction));
    return x2;
  } //end get x
  
  public float getEndY () {
    float y2 = y + len * sin(radians(direction));
    return y2;
  } //end get y 
  
}

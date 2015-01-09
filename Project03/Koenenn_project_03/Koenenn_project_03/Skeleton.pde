//skeleton class
//extends actor

class Skeleton extends Actor {
  //body 
  Segment body;
  
  //left side
  Segment luleg;
  Segment llowleg;
  Segment lshoulder;
  Segment luarm;
  Segment llowarm;

  
  //right side
  Segment rshoulder;
  Segment rlowarm;
  Segment ruarm;
  Segment ruleg;
  Segment rlowleg; 
  
  Segment neck;
 
  
 
  
  public Skeleton (float xPos, float yPos) {
    super (xPos, yPos);
    //initialize segments
    body = new Segment (xPos,yPos,-90,100);
    body.weight = 15;
    body.setPenColor (255,132,0);
    
    luleg = new Segment (xPos,yPos,45,50);
    luleg.weight = 10;
    luleg.setPenColor(0,0,255);
    
    llowleg = new Segment (xPos,yPos,90,50);
    llowleg.weight = 7;
    llowleg.setPenColor (255,0,0);
    
    lshoulder = new Segment (body.getEndX(), body.getEndY());
    lshoulder.weight = 5;
    lshoulder.setPenColor (0,255,0);
    
    luarm = new Segment (xPos,yPos,-60,70);
    luarm.weight = 8;
    luarm.setPenColor (255,0,149);
    
    llowarm = new Segment (luarm.getEndX (), luarm.getEndY());
    llowarm.weight = 12;
    llowarm.setPenColor (152,0,255);
    
    ruleg= new Segment (xPos,yPos,45,50);
    ruleg.weight = 9;
    ruleg.setPenColor (50,150,250);
    
    rlowleg = new Segment (xPos, yPos,90,50);
    rlowleg.weight = 10;
    rlowleg.setPenColor (59,233,166);
    
    rshoulder = new Segment (xPos, yPos, 180,50);
    rshoulder.weight = 13;
    rshoulder.setPenColor (247,187,187);
    
    rlowarm = new Segment (xPos, yPos, 180,50);
    rlowarm.weight = 17;
    rlowarm.setPenColor (233,255,0);
    
    ruarm = new Segment (xPos,yPos, 120,60);
    ruarm.weight = 10;
    ruarm.setPenColor (70,220,110);
    
    neck = new Segment (xPos,yPos,-90,20);
    neck.weight = 10;
    neck.setPenColor (224,187,247);
    
  
   
  }//  end public skeleton 

public void drawFrame() {
  body.drawLine();
  luleg.drawLine ();
 
  llowleg.goTo (luleg.getEndX (),luleg.getEndY());
  llowleg.drawLine ();
 
  lshoulder.goTo(body.getEndX(), body.getEndY());
  lshoulder.drawLine();
  
  luarm.goTo (lshoulder.getEndX(), lshoulder.getEndY());
    luarm.drawLine();
    
    llowarm.goTo (luarm.getEndX(), luarm.getEndY());
    llowarm.drawLine();
    
 ruleg.drawLine();
 
 rlowleg.goTo(ruleg.getEndX(), ruleg.getEndY());
 rlowleg.drawLine();
 
 rshoulder.goTo (body.getEndX(), body.getEndY());
 rshoulder.drawLine();
 
 ruarm.goTo(rshoulder.getEndX(), rshoulder.getEndY());
 ruarm.drawLine();
 
 rlowarm.goTo(ruarm.getEndX(), ruarm.getEndY());
 rlowarm.drawLine();
 
 neck.goTo (body.getEndX(),body.getEndY());
 neck.drawLine();
 

 

} //end drawFrame 

//act function 
public void act() {
  drawFrame();
  luleg.turn(1);
  ruleg.turn(2);
  
  if (keyPressed) {
    if (key=='f') {
      luarm.turn(1);
    }
    if (key == 'g') {
      luarm.turn (-1);
    } //end turn luarm turn 
    
    if (key == 'h'){
      llowarm.turn (1);
    }
    if (key == 'j') {
      llowarm.turn (-1);
    } //end turn llowarm 
    
    if (key == 'k') {
      lshoulder.turn (1);
    }
    
    if (key == 'l') {
      lshoulder.turn(-1);
    } //end lshoulder turn 
    if (key == 'q') {
      body.turn (-1);
    }
   if (key == 'w') {
     body.turn (1);
   }
   if (key == 'e') {
     rshoulder.turn(2);
   }
   if (key == 'r') {
     rshoulder.turn(-2);
   }
   if (key == 'i') {
     ruarm.turn(3);
   }
   if (key == 't'){
     ruarm.turn(-3);
   }
   
   if (key == 'y') {
     rlowarm.turn(4);
   }
   
   if (key == 'u') {
     rlowarm.turn (-4);
   }
  }//end key press
} //end act 
} //end skeleton

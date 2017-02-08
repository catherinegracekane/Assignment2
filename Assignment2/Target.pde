//This is simply the design for the target squares 
class Target extends GameObject
{

  Target(float x, float y)
  {
    pos = new PVector(x, y); //co-ordinates of the targets
    a = 95;
  }
  
  void display()
  {
    rectMode(CORNER);
    fill(255);
    stroke(0);
    rect(pos.x, pos.y, 100, 100);
    stroke(18, 252, 231);
    //line(pos.x, pos.y, pos.x+a, pos.y+a);
    //line(pos.x+a, pos.y, pos.x, pos.y+a);
    pushMatrix();
    translate(pos.x+(a/3)+6, pos.y+(a/4)-5);
    noFill();
    strokeWeight(2);
    stroke(0);
    rotate((PI/3.0));
    //rect((width/2), (height/4), width/3, width/3);
    rect(0, 0-30, 70, 70);
    popMatrix();
    fill(21, 203, 77);
    ellipse(pos.x+(a/2)+5, pos.y+(a/2)+5, 30, 30);
  }
  
  void level2()
  {   
      rectMode(CORNER);
      fill(255);
      stroke(0);
      rect(this.pos.x, this.pos.y, 100, 100);
      stroke(255);
      fill(0);
      ellipse(this.pos.x+50, this.pos.y+50, 30, 30);  
  }

}
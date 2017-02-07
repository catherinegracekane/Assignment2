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
    line(pos.x, pos.y, pos.x+a, pos.y+a);
    line(pos.x+a, pos.y, pos.x, pos.y+a);

  }
  
  void level2()
  {
    for( int i = 0; i < gameObjects2.size() - 1 ; i++)
    {
      rectMode(CORNER);
      fill(155,145,41);
      stroke(0);
      rect(this.pos.x, this.pos.y, 100, 100);
      stroke(255);
      fill(255);
      ellipse(this.pos.x+50, this.pos.y+50, 20, 20);
    }
  }
}
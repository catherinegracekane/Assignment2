class Target extends GameObject
{
  
  int a = 95;
  
  Target(float x, float y)
  {
    pos = new PVector(x, y); //co-ordinates of the targets
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
}
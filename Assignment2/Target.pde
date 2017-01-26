class Target{
  
  PVector pos;
  
  Target(float x, float y)
  {
    pos = new PVector(x, y); //co-ordinates of the targets
  }
  
  void display()
  {
    rectMode(CORNER);
    stroke(18, 252, 231);
    rect(pos.x, pos.y, 100, 100);  
  }
}
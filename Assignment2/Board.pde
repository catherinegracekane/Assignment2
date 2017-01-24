//This is used for the player to move around and hit target areas
class Board 
{
   //rect(x, y, width, height, radi of corners)
   PVector pos;
  
  Board()
  {
    pos = new PVector(width/2, height/2); //start in centre

  }
  
  void display()
  {
    fill(255);
    rectMode(CENTER);
    rect(pos.x, pos.y, 600, 600, 5);  
  }
}
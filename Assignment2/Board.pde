//This is used for the player to move around and hit target areas
class Board 
{
  //rect(x, y, width, height, radi of corners)
  PVector pos;
  int boardW, boardH;

  Board()
  {
    pos = new PVector(width/2, height/2); //start in centre
    boardW = 600;
    boardH = 600;
  }

  void display()
  {
    fill(255);
    rectMode(CENTER);
    rect(pos.x, pos.y, boardW, boardH, 5);  

    //create a grid
    stroke(0);
    strokeWeight(3);
    //vertical grid
    for ( float i = (pos.x - (boardW/2)); i < (pos.x + (boardH/2)); i += 100)
    {
      // x1, y1, x2, y2
      line((pos.x - (boardW/2))+i, 0, (pos.x - (boardH/2))+i, 500);
    }

    for ( float j = 0; j < height; j +=100)
    {
      // x1, y1, x2, y2
      line((pos.x - (boardW/2)), 100+j, (pos.x + (boardH/2)), 100+j);
      //j = j+100;
    }
  }
}
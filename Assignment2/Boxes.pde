//These are box objects to be moved around until all boxes sit in target place
//They will be created in the same way player was created in YASC however
//there's a number of rules to be applied in order for their movement to be controlled
class Boxes extends GameObject
{
  
  int a = 100;
  int b = a/5;
  
  Boxes(float x, float y)
  {
    pos = new PVector(x, y); //co-ordinates of the targets
  }
  
  void display()
  {
    rectMode(CORNER);
    fill(128); 
    stroke(0);
    rect(pos.x, pos.y, 100, 100);
    stroke(0);
    for(int i = 0 ; i < 5 ; i++)
    {
      line(pos.x+b, pos.y+25, pos.x+b, pos.y-(b*3));
    }
  }
}

/*
so i need to use this logic 
  Player player0 = new Player(width / 2, height / 2, 0, 50, 'w', 's', 'a', 'd', ' ');
  so i need to have their positions when calling them in main
  Boxes box1 = new Boxes(x, y); 
  
*/
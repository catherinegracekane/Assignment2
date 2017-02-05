//These are box objects to be moved around until all boxes sit in target place
//They will be created in the same way player was created in YASC however
//there's a number of rules to be applied in order for their movement to be controlled
class Boxes extends GameObject
{

  /*
  set up PVectors for each position on the board they can move to, if they click in that area, update the boxes
   pvector to this position on the board
   
   do i need to take the distance from mouseX to these positions?
   array list of pvectors, iterate through all and set according to board pos
   100,0 100,100 outer for goes through x which is 100-500, inner for through y
   which is 0-500 i+=100 j+=100
   
   this code is used to get objects, can i set pvectors
   for (int i = gameObjects.size() -1 ; i >= 0  ; i --)
   {
   GameObject go = gameObjects.get(i); 
   go.update();
   go.render();    
   }
   ArrayList<PVector> positions = new ArrayList<PVector>();  
   
   PVector poss = positions.set(psx, psy);
   
   for(int psx = 100 ; psx < 600 ; psx += 100)
   {
   for(int psyy = 0 ; psy < 600 ; psy +=100)
   {
   PVector poss = positions.set(psx, psy);
   println("hi");
   }
   }
   
   OR, the error is set(int, PVector), need to sort this
   
   for(float psx = 100.0 ; psx < 600.0 ; psx += 100.0)
   {
   for(float psy = 0.0 ; psy < 600.0 ; psy +=100.0)
   {
   PVector poss = this.positions.set(psx, psy);
   println("hi");
   }
   }
   
   */

  int a;
  int j;
  color col1, col2; 
  int click;

  ArrayList<PVector> positions = new ArrayList<PVector>();  


  Boxes(float x, float y)
  {
    pos = new PVector(x, y); //co-ordinates of the targets
    a = 100;
    j = (a/5);
    col1 = color(0);
    col2 = color(245, 239, 57);
    this.click = 0;
  }

  void display()
  {
    println(click);
    println(click);

    if (mousePressed && mouseX > this.pos.x && mousePressed && mouseX < (this.pos.x+15))
    {
      if (mousePressed && mouseY > this.pos.y && mousePressed && mouseY < (this.pos.y+15))
      {
        if (click == 1)
        {
          click = 0;
          col1 = color(0);
          col2 = color(245, 239, 57);
        }
      }
    }
    
     
     keyPressed();
     
    //all level 1 targets here
    if (this.pos.x == 200 && this.pos.y == 200 || this.pos.x == 300 && this.pos.y == 200 || this.pos.x == 400 && this.pos.y == 300 || this.pos.x == 100 && this.pos.y == 0 || this.pos.x == 500 && this.pos.y == 200 || this.pos.x == 600 && this.pos.y == 300 || this.pos.x == 600 && this.pos.y == 400)
    {
      col2 = color(21, 203, 77);
    }  

    if (click == 0)
    {
      rectMode(CORNER);
      fill(128); 
      stroke(col1);
      rect(pos.x, pos.y, a, a);
      fill(col2);
      rect(pos.x, pos.y, j, j);    
      stroke(0);
      line(pos.x, pos.y+j, pos.x+a, pos.y+j);
      line(pos.x, pos.y+(j*4), pos.x+a, pos.y+(j*4));
      for (int b = 20; b < a; b+=20)
      {
        line(pos.x+b, pos.y+23, pos.x+b, pos.y+80);
      }
    }

    if (mousePressed && mouseX > this.pos.x && mouseX < (this.pos.x+j))
    {
      if (mousePressed && mouseY > this.pos.y && mouseY < (this.pos.y+j))
      {
        if (click == 0)
        {
          click = 1;
          col1 = color(245, 239, 57);
        }
      }
    }


    if (click == 1)
    {
      noFill();
      stroke(col1);
      rect(this.pos.x, this.pos.y, a, a); 
      fill(col2);
      rect(this.pos.x, this.pos.y, j, j);    
      stroke(0);
      line(pos.x, pos.y+j, pos.x+a, pos.y+j);
      line(pos.x, pos.y+(j*4), pos.x+a, pos.y+(j*4));
      for (int b = 20; b < a; b+=20)
      {
        line(pos.x+b, pos.y+23, pos.x+b, pos.y+80);
      }
    }
  }
  
  void keyPressed() {
    if (key == CODED && keyCode == RIGHT)
    {
      this.pos.set(this.pos.x+a, this.pos.y); //this moves the boxes one at a time, but needs to move to correct points
    }
    if (key == CODED && keyCode == LEFT)
    {
      this.pos.set(this.pos.x-a, this.pos.y); //this moves the boxes one at a time, but needs to move to correct points
    }
    if (key == CODED && keyCode == UP)
    {
      this.pos.set(this.pos.x, this.pos.y-a); //this moves the boxes one at a time, but needs to move to correct points
    }
    if (key == CODED && keyCode == DOWN)    
    {
      this.pos.set(this.pos.x, this.pos.y+a); //this moves the boxes one at a time, but needs to move to correct points
    }
  }
}
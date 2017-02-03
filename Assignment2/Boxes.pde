//These are box objects to be moved around until all boxes sit in target place
//They will be created in the same way player was created in YASC however
//there's a number of rules to be applied in order for their movement to be controlled
class Boxes extends GameObject
{

  int a;
  int j;
  color col1,col2; 
  int click;

  //only log the co-ordinates of target in box and change accordingly
  //not using target!!

  /*t11 = new Boxes(100, 0);
   t12 = new Boxes(200, 200);
   t13 = new Boxes(300, 200);
   t14 = new Boxes(400, 300);
   t15 = new Boxes(500, 200);
   t16 = new Boxes(600, 300);
   t17 = new Boxes(600, 400);*/

  /*
  
   if(this.pos.x == 200 && this.pos.y == 200)
   {
      col2 = color(21,203,77);  
   }
   
   */

  Boxes(float x, float y)
  {
    pos = new PVector(x, y); //co-ordinates of the targets
    a = 100;
    j = (a/5);
    col1 = color(0);
    col2 = color(245, 239, 57);
    this.click = 0;
    //col2 = color(204, 153, 0);
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
    
   if(this.pos.x == 200 && this.pos.y == 200)
   {
      col2 = color(21,203,77);  
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
}

/*void     mouseClicked() {
 if (click == 0) {
 color col1 = color(0);
 } else {
 color col1 = color(245, 239, 57);
 }*/



/*
so i need to use this logic 
 Player player0 = new Player(width / 2, height / 2, 0, 50, 'w', 's', 'a', 'd', ' ');
 so i need to have their positions when calling them in main
 Boxes box1 = new Boxes(x, y); 
 
 */
//These are box objects to be moved around until all boxes sit in target place
//They will be created in the same way player was created in YASC however
//there's a number of rules to be applied in order for their movement to be controlled
class Boxes extends GameObject
{

  int a;
  int j;
  color col1; 
  //boolean t = false;


  Boxes(float x, float y)
  {
    pos = new PVector(x, y); //co-ordinates of the targets
    a = 100;
    j = (a/5);
    col1 = color(0);
    //col2 = color(204, 153, 0);
  }

  void display()
  {

    rectMode(CORNER);
    fill(128); 
    stroke(col1);
    rect(pos.x, pos.y, a, a);
    fill(245, 239, 57);
    rect(pos.x, pos.y, j, j);    
    stroke(0);
    line(pos.x, pos.y+j, pos.x+a, pos.y+j);
    line(pos.x, pos.y+(j*4), pos.x+a, pos.y+(j*4));
    for (int b = 20; b < a; b+=20)
    {
      line(pos.x+b, pos.y+23, pos.x+b, pos.y+80);
    }  

    if (mousePressed && mouseX > this.pos.x && mouseX < (this.pos.x+j))
    {

      click++;
    }

    /*if (click == 1)
     {
     noFill();
     stroke(col1);
     rect(this.pos.x, this.pos.y, a, a); 
     fill(245, 239, 57);
     rect(this.pos.x, this.pos.y, j, j);    
     stroke(0);
     line(pos.x, pos.y+j, pos.x+a, pos.y+j);
     line(pos.x, pos.y+(j*4), pos.x+a, pos.y+(j*4));
     for (int b = 20; b < a; b+=20)
     {
     line(pos.x+b, pos.y+23, pos.x+b, pos.y+80);
     }*/

    if (mousePressed)
    {
      click--;
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
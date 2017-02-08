//These are box objects to be moved around until all boxes sit in target place
//They will be created in the same way player was created in YASC however
//there's a number of rules to be applied in order for their movement to be controlled
class Boxes extends GameObject
{
  PVector pos;
  int i;
  float z;
  int j;
  color col1, col2, col3; 
  int click;
  char up, down, left, right;
  boolean inc = false;
  boolean screen = false;

  Boxes(float x, float y, char up, char down, char left, char right)
  {
    pos = new PVector(x, y); //co-ordinates of the targets
    a = 100;
    j = (a/5);
    col1 = color(0);
    col2 = color(245, 239, 57);
    col3 = color(227,234,21);
    this.click = 0;
    i = 0;
    z = 100/60;
    this.left = left;
    this.right = right;
    this.up = up;
    this.down = down;
    total = total + score;
  }

  void display()
  {
    println(click);
    println(click);

    textSize(12);
    text("Score: " + score, 0, 50);

    level1();

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
          selected = this;
          col1 = color(245, 239, 57);
        }
      }
    }

    if (click == 1)
    {
      fill(128);
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
      keyPressed();
    }   
  }

  void keyPressed() {

    //for (int i=0; i<boxes.size(); i++)
    //{
      //if ( boxes.get(i).pos.x == selected.pos.x && boxes.get(i).pos.y == this.pos.x)
      //{
        //frameRate(1);
        if (checkKey(up))
        {
          this.pos.set(this.pos.x, this.pos.y-z); //this moves the boxes one at a time, but needs to move to correct points
        }
        if (checkKey(down))
        {
          this.pos.set(this.pos.x, this.pos.y+z);
        }
        if (checkKey(left))  
        {
          this.pos.set(this.pos.x-z, this.pos.y);
        }
        if (checkKey(right))
        {
          this.pos.set(this.pos.x+z, this.pos.y);
        }
     // }
    //}
  }
  
  void level1 ( ) {
    
    //all level 1 targets here
    if (this.pos.x == 200 && this.pos.y == 200)
    {
       whenTarget1();
    } 
    if (this.pos.x == 300 && this.pos.y == 200)
    {
       whenTarget1();
    }    
    if (this.pos.x == 400 && this.pos.y == 300)
    {
       whenTarget1();
    }    
    if ( this.pos.x == 100 && this.pos.y == 0)
    {
       whenTarget1();
    }
    if (this.pos.x == 500 && this.pos.y == 200)
    {
       whenTarget1();
    }
    if (this.pos.x == 500 && this.pos.y == 300)
    {
       whenTarget1();
    }    
    if (this.pos.x == 600 && this.pos.y == 300)
    {
       whenTarget1();
    }
    if (this.pos.x == 600 && this.pos.y == 400)
    {
       whenTarget1();
    }
        
    if(score == boxes.size() * 5 || key == ENTER || key == RETURN)
    {
      background(0);
      screen = true;
      
      if(screen == true)
      {
        
      clear();
      
      pushMatrix();
      translate(pos.x, pos.y);
      for (int i = 0; i < width/2; i++)
      {
        fill(255);
        stroke(246,255,5);
        rotate(0.2);
        rect(i, 0, 8, 8);
      }
      popMatrix();
      
      textAlign(LEFT, CENTER);
      textSize(75);
      text("NICE WORK", (pos.x/2)-100, pos.y);
      textSize(25);
      text("Press TAB to continue", pos.x/2, pos.y+50); 
      }
      if(key == TAB)
      {
        gameState = 3;
      }
    }
  }
  
  void level2(){
    
    level2Target();
    
    if (click == 0)
    {
      rectMode(CORNER);
      fill(col3); 
      stroke(col1);
      rect(pos.x, pos.y, a, a);
      noFill();
      strokeWeight(5);
      ellipseMode(CENTER);
      ellipse(pos.x+(a/2), pos.y+(a/2), a*0.75, a*0.75); 
      stroke(47,212,232);
      ellipse(pos.x+(a/2), pos.y+(a/2), a*0.65, a*0.65);
      stroke(234,50,21);
      ellipse(pos.x+(a/2), pos.y+(a/2), a*0.55, a*0.55);
      
      stroke(0);
      strokeWeight(3);
    }

    if (mousePressed && mouseX > this.pos.x && mouseX < (this.pos.x+j))
    {
      if (mousePressed && mouseY > this.pos.y && mouseY < (this.pos.y+j))
      {
        if (click == 0)
        {
          click = 1;
          selected = this;
          col1 = color(245, 239, 57);
        }
      }
    }


    if (click == 1)
    {
      rectMode(CORNER);
      fill(col3); //bright yellow
      stroke(col1);
      rect(pos.x, pos.y, a, a);
      noFill();
      strokeWeight(5);
      ellipseMode(CENTER);
      ellipse(pos.x+(a/2), pos.y+(a/2), a*0.75, a*0.75); 
      stroke(47,212,232);
      ellipse(pos.x+(a/2), pos.y+(a/2), a*0.65, a*0.65);
      stroke(234,50,21);
      ellipse(pos.x+(a/2), pos.y+(a/2), a*0.55, a*0.55);
      
      stroke(0);
      strokeWeight(3);
      keyPressed();
    }
    
  }
  
  void level2Target(){
    
    //all level 2 targets here
    if (this.pos.x == 300 && this.pos.y == 500)
    {
      whenTarget2();
    } 
    if (this.pos.x == 300 && this.pos.y == 600)
    {
      whenTarget2();
    }    
    if (this.pos.x == 200 && this.pos.y == 200)
    {
      whenTarget2();
    }   
    if ( this.pos.x == 100 && this.pos.y == 400)
    {
      whenTarget2();
    }
    if (this.pos.x == 500 && this.pos.y == 100)
    {
      whenTarget2();
    }
    if (this.pos.x == 600 && this.pos.y == 200)
    {
      whenTarget2();
    }    
    if (this.pos.x == 200 && this.pos.y == 100)
    {
      whenTarget2();
    }
    if (this.pos.x == 100 && this.pos.y == 500)
    {
      whenTarget2();
    }
    if (this.pos.x == 200 && this.pos.y == 400)
    {
      whenTarget2();
    }
    
    textAlign(LEFT);
    textSize(12);
    text("Score: " + score, 0, 50);
    
    if(score == 530)
    {
      background(0);
      textSize(75);
      text("BULLSEYE", pos.x, pos.y);
      textSize(25);
      text("Press TAB to continue", pos.x, pos.y+150);     
      
      if(key == TAB )
      {
        gameState = 4;
      }
    }   
  }
  
  void whenTarget1(){
      col2 = color(21, 203, 77);
      click = 0;
      col1 = color(0);
      
      if(inc == false){
        score = score + 5;
        inc = true;
      }
  }
  void whenTarget2(){
     
      col3 = color(234,185,21);
      click = 0;
      col1 = color(0);
      
      if(inc == false)
      {
        score = score + 50;
        inc = true;
      }  
  }
}
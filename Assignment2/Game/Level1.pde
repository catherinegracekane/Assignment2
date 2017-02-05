class Level1
{
  PVector pos;
  int boardW, boardH, click;


  Level1()
  {
    pos = new PVector(width/2, height/2); //start in centre
    boardW = 500;
    boardH = 500;
    click = 0;
  }

  void display()
  {
    
    fill(255);
    rectMode(CENTER);
    rect(pos.x, pos.y, boardW, boardH, 5);  

    //create a grid
    stroke(0);
    strokeWeight(3);
    line(pos.x, 0, pos.x, height);
    line(0, pos.y, width, pos.y);
    
    play();
    
 /* switch (click)
  {
  case 1:

    background(0);
    play();
    break;

  case 2:
    
    background(0);
    play();
    break;
    
    case 3:
    background(0);

    break;
    
    case 4:
    background(0);

    break;

  default:
    println("Incorrect choice");
    break;
  }*/
  }
  
  void play()
  {
    if(mouseX > 150 && mouseX < pos.x && mouseY > 0 && mouseY < pos.y)
    {
      if(mousePressed)
      {
        click = 1;
        println("test1");
      }
    }
    
    if(mouseX > pos.x && mouseX < (pos.x + boardW/2) && mouseY > 0 && mouseY < pos.y)
    {
      if(mousePressed)
      {
        click = 2;
        println("test2");
      }
    }
    
    if(mouseX > 150 && mouseX < pos.x && mouseY > pos.y && mouseY < height)
    {
      if(mousePressed)
      {
        click = 3;
        println("test3");
      }
    }
    
    if(mouseX > pos.x && mouseX < (pos.x + boardW/2) && mouseY > pos.y && mouseY < height)
    {
      if(mousePressed)
      {
        click = 4;
        println("test4");
      }
    }
    
  }

 }
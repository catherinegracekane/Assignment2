class Level1
{
  PVector pos;
  int boardW, boardH, click, borderT, borderL, score, pair1, pair2;
  color col1, col2, col3;

  Level1()
  {
    pos = new PVector(width/2, height/2); //start in centre
    boardW = 500;
    boardH = 500;
    borderT = 50;
    borderL = 150;
    click = 0;
    col1 = 128;
    col2 = color(0, 255, 0);
    col3 = 255;
    score = 0;
    pair1 = 0;
    pair2 = 0;
  }

  void display()
  {

    if(pair1 != 4)
    {
    fill(col3);
    rectMode(CORNER);
    rect(borderL, borderT, boardW/2, boardH/2);   
    rect(borderL, borderT+boardW/2, boardW/2, boardH/2);
    }else if (pair1 > 4)
    {
      col3 = 0;
    }
    
    if(pair2 != 4)
    {
    fill(col3);
    rectMode(CORNER); 
    rect(borderL+boardW/2, borderT, boardW/2, boardH/2);  
    rect(borderL+boardW/2, borderT+boardW/2, boardW/2, boardH/2);
    }
    else if (pair2 > 4)
    {
      col3 = 0;
    }

    //create a grid
    stroke(0);
    strokeWeight(3);
    line(pos.x, 0, pos.x, height);
    line(0, pos.y, width, pos.y);

    play();

    switch (click)
    {
    case 1:
      
      if(pair1 != 4 && pair2 != 4)
      {
        fill(col1);
        rectMode(CORNER);
        rect(borderL, borderT, boardW/2, boardH/2);
      }
      break;

    case 2:
      if(pair1 != 4 && pair2 != 4)
      {
      fill(col2);
      rectMode(CORNER);
      rect(borderL+boardW/2, borderT, boardW/2, boardH/2);
      }
      break;

    case 3:
      if(pair1 != 4 && pair2 != 4)
      {
        fill(col1);
        rectMode(CORNER);
        rect(borderL, borderT+boardW/2, boardW/2, boardH/2);
      }
      break;

    case 4:
      if(pair1 != 4 && pair2 != 4)
    {
      fill(col2);
      rectMode(CORNER);
      rect(borderL+boardW/2, borderT+boardW/2, boardW/2, boardH/2);
    }
      break;

    case 5:
      if (pair1 == 4)
      {
        fill(0);
        rectMode(CORNER);
        rect(borderL, borderT, boardW/2, boardH/2);
        rect(borderL, borderT+boardW/2, boardW/2, boardH/2);  
        score+=10;
      }

    default:
      println("Incorrect choice");
      break;
    }


    if (pair2 == 4)
    {
      fill(0);
      rectMode(CORNER);
      rect(borderL+boardW/2, borderT, boardW/2, boardH/2);
      rect(borderL+boardW/2, borderT+boardW/2, boardW/2, boardH/2); 
      score+=10;
    }
  }

  void play()
  {
    //case 1 = pair 1
    if (mouseX > 150 && mouseX < pos.x && mouseY > 0 && mouseY < pos.y)
    {
      if (mousePressed)
      {
        click = 1;
        println("test1");
        pair1 = 2;
        println(pair1);
      }
    }
    //case 2 = pair 2
    if (mouseX > pos.x && mouseX < (pos.x + boardW/2) && mouseY > 0 && mouseY < pos.y)
    {
      if (mousePressed)
      {
        click = 2;
        println("test2");
        pair2 = pair2 + 2;
      }
    }
    //case 3 = pair1
    if (mouseX > 150 && mouseX < pos.x && mouseY > pos.y && mouseY < height)
    {
      if (mousePressed)
      {
        click = 3;
        println("test3");
        pair1 = 2;
        println(pair1);
      }
    }
    //case 4 = pair 2
    if (mouseX > pos.x && mouseX < (pos.x + boardW/2) && mouseY > pos.y && mouseY < height)
    {
      if (mousePressed)
      {
        click = 4;
        println("test4");
        pair2 = pair2 + 2;
      }
    }

    //if 1 and 3 are a match 

    if (mouseX > 150 && mouseX < pos.x && mouseY > pos.y && pmouseY < height && pmouseX > 150 && pmouseX < pos.x && pmouseY > 0 && pmouseY < pos.y)
    {
      pair1 = 4;
      click = 5;
    }

    if (mouseX > 150 && mouseX < pos.x && mouseY > 0 && mouseY < pos.y && pmouseX > 150 && pmouseX < pos.x && pmouseY > pos.y && pmouseY < height)
    {
      pair1 = 4;
      click = 5;
    }
    
    //if 2 and 4 are a match
    if (mouseX > pos.x && mouseX < (pos.x + boardW/2) && mouseY > 0 && mouseY < pos.y && pmouseX > pos.x && pmouseX < (pos.x + boardW/2) && pmouseY > pos.y && pmouseY < height)
    {
      pair2 = 4;
      click = 6;
    }

    if (mouseX > pos.x && mouseX < (pos.x + boardW/2) && mouseY > pos.y && mouseY < height && pmouseX > pos.x && pmouseX < (pos.x + boardW/2) && pmouseY > 0 && pmouseY < pos.y )
    {
      pair2 = 4;
      click = 6;
    }
  }
}
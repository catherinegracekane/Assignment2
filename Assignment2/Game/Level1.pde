class Level1
{
  PVector pos;
  int boardW, boardH, click, borderT, borderL, score, pair1, pair2;
  color col1, col2;

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
    score = 0;
    pair1 = 0;
    pair2 = 0;
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

    switch (click)
    {
    case 1:

      fill(col1);
      rectMode(CORNER);
      rect(borderL, borderT, boardW/2, boardH/2);

      break;

    case 3:

      fill(col2);
      rectMode(CORNER);
      rect(borderL+boardW/2, borderT, boardW/2, boardH/2);

      break;

    case 5:
      fill(col1);
      rectMode(CORNER);
      rect(borderL, borderT+boardW/2, boardW/2, boardH/2);

      break;

    case 7:
      fill(col2);
      rectMode(CORNER);
      rect(borderL+boardW/2, borderT+boardW/2, boardW/2, boardH/2);

      break;

    default:
      println("Incorrect choice");
      break;
    }

    if (pair1 == 4)
    {
      fill(0);
      rectMode(CORNER);
      rect(borderL, borderT, boardW/2, boardH/2);
      rect(borderL, borderT+boardW/2, boardW/2, boardH/2);  
      score+=10;
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
        pair1 = pair1 + 2;
      }
    }
    //case 2 = pair 2
    if (mouseX > pos.x && mouseX < (pos.x + boardW/2) && mouseY > 0 && mouseY < pos.y)
    {
      if (mousePressed)
      {
        click = 3;
        println("test2");
        pair2 = pair2 + 2;
      }
    }
    //case 3 = pair1
    if (mouseX > 150 && mouseX < pos.x && mouseY > pos.y && mouseY < height)
    {
      if (mousePressed)
      {
        click = 5;
        println("test3");
        pair1 = pair1 + 2;
      }
    }
    //case 4 = pair 2
    if (mouseX > pos.x && mouseX < (pos.x + boardW/2) && mouseY > pos.y && mouseY < height)
    {
      if (mousePressed)
      {
        click = 7;
        println("test4");
        pair2 = pair2 + 2;
      }
    }
  }
}
//Splash Screen

class Splash {

  int spacing, click, a;
  String[] instructions;

  Splash()
  {
    instructions = loadStrings("instructions.txt");
    spacing = 50;
    click = 0;
  }

  void display()
  {

    pushMatrix();
    translate(width/2, height/2);

    for (int i = 0; i < width/2; i++)
    {
      fill(255);
      stroke(#2EAFF2);
      rotate(0.2);
      rect(i, 0, 10, 10);
    }

    popMatrix();

    pushMatrix();
    translate((width/2)+200+a, 10);
    a += 0.1;
    noFill();
    strokeWeight(5);
    stroke(255);
    rotate(PI/3.0);
    //rect((width/2), (height/4), width/3, width/3);
    rect(0, 10, width/3, width/3);
    popMatrix();

    fill(228, 232, 40);
    textSize(130);
    //text("B", width/5, (height/2)+15);
    text("B", width/5-20, (height/2)+15);
    textSize(62);
    //text(" iddle", (width/5)+70, height/2);
    text(" iddle", (width/5)+50, height/2);
    textSize(240);
    //text("?", (width/2)+50, (height/2)+50);
    text("?", (width/2)+75, (height/3)+50);
    textSize(24);
    text("1) Press Enter to Begin", (width/4), height/2+100);
    text("2) Click here for Instructions", (width/4), height/2+170);

    if (mousePressed && mouseX > 0 && mouseY < 50)
    //if(key == CODED && keyCode == '1') //fix this when i have internet
    {
      gameState = 2;
    }

    if ( key == RETURN || key == ENTER)
    {
      gameState = gameState + 1;
      fill(0);
    }
  }

  void instructions() {

        background(0);

        for (int i = 0; i < instructions.length; i+=5)
        {
          for (int j = 0; j < (instructions.length*spacing); j+=spacing)
          {
            text(instructions[i], 50, 50+(j/2));
            i = i+1;
          }
        }
 
      if (key == TAB)
      {
        gameState = 0;
      }
  }

}//end of class
//Splash Screen

class Splash {

  int spacing;
  String[] instructions;

  Splash()
  {
    instructions = loadStrings("instructions.txt");
    spacing = 50;
  }

  void display()
  {
    fill(59, 187, 245);
    textSize(130);
    text("B", width/5, (height/2)+15);
    textSize(62);
    text(" iddle", (width/5)+70, height/2);
    textSize(240);
    text("?", (width/2)+50, (height/2)+50);

    textSize(24);
    text("Press Enter to Begin", (width/3), height/2+200);

    noFill();
    strokeWeight(5);
    stroke(255);
    rect((width/2), (height/4), width/3, width/3);
    
    text("Click here for Instructions", 10, 20);

    if(mousePressed && mouseX > 0 && mouseY < 50)
    {
    for (int i = 0; i < instructions.length; i+=5) {
      for (int j = 0; j < (instructions.length*spacing); j+=spacing)
      {
        text(instructions[i], 50, 50+(j/2));
        i = i+1;
      }
    }
    }
    
    if ( key == RETURN || key == ENTER)
    {
      gameState = gameState + 1;
      fill(0);
    }
  }
}//end of class
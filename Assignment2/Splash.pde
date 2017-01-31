//Splash Screen

class Splash {

  int spacing;
  String[] instructions;

  Splash()
  {
    instructions = loadStrings("instructions.txt");
    spacing = 49;
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

    noFill();
    strokeWeight(5);
    stroke(255);
    rect((width/2), (height/4), width/3, width/3);

    if ( key == RETURN || key == ENTER)
    {
      gameState = gameState + 1;
      fill(0);
    }
  }
}//end of class
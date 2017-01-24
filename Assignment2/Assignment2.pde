PFont font;
Board board1; //this is a 600x600 board

int gameState = 0; //counter used to determine screen
void setup() {

  size(800, 500);
  background(0);

  board1 = new Board();

  font = loadFont("ChalkboardSE-Bold-48.vlw");
  textFont(font, 18);
}

void draw() {

  switch (gameState)
  {
  case 0:
    //front screen
    frontScreen();
    break;

  case 1:

    board1.display();
    break;

  default:
    println("Incorrect choice");
    break;
  }
}

void frontScreen() {

  fill(59, 187, 245);
  textSize(110);
  text("S", width/5, (height/2)+15);
  textSize(42);
  text("okoban", (width/5)+70, height/2);
  textSize(240);
  text("?", (width/2)+50, (height/2)+50);

  noFill();
  strokeWeight(5);
  stroke(255);
  rect((width/2), (height/4), width/4, width/4);

  if ( key == RETURN || key == ENTER)
  {
    gameState = gameState + 1;
    fill(0);
  }
}
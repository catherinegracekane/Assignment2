PFont font;
Board board1; //this is a 600x600 board
Target t11, t12, t13, t14, t15, t16, t17;

int gameState = 0; //counter used to determine screen
void setup() {

  size(800, 500);
  background(0);

  board1 = new Board();
  
  t11 = new Target(100,0);
  t12 = new Target(200,100);
  t13 = new Target(300,200);
  t14 = new Target(400,300);
  t15 = new Target(500,200);
  t16 = new Target(600,300);
  t17 = new Target(600,500);
  
  
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
    board1.level1();
    t11.display();
    t12.display();
    t13.display();
    t14.display();
    t15.display();
    t16.display();
    t17.display();
    
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
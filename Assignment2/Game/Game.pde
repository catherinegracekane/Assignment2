PFont font;
Splash splash;
Level1 level1;

//int click = 0;
int gameState = 0; //counter used to determine screen

void setup() {

  size(800, 600, P2D);
  background(0);
  
  splash = new Splash();
  level1 = new Level1();
  
  font = loadFont("ChalkboardSE-Bold-48.vlw");
  textFont(font, 18);
}

//ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();


void draw() {

  switch (gameState)
  {
  case 0:
    //front screen
    background(0);
    splash.display();
    break;

  case 1:
    
    background(0);
    level1.display();


    break;
    
    case 2:
    background(0);
    splash.instructions();
    break;

  default:
    println("Incorrect choice");
    break;
  }
  
  
}
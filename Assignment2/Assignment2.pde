PFont font; //<>//
Board board1; //this is a 600x600 board
Target t11, t12, t13, t14, t15, t16, t17;
Boxes b11, b12, b13, b14, b15, b16, b17, b18;
Splash splash;

//int click = 0;
int gameState = 0; //counter used to determine screen

Boxes selected;

void setup() {

  size(800, 600, P2D);
  background(0);

  splash = new Splash();
  board1 = new Board();

  t11 = new Target(100, 0);
  t12 = new Target(200, 200);
  t13 = new Target(300, 200);
  t14 = new Target(400, 300);
  t15 = new Target(500, 200);
  t16 = new Target(600, 300);
  t17 = new Target(600, 400);

  b11 = new Boxes(200, 100, 'i', 'k', 'j', 'm');
  b12 = new Boxes(300, 100, 'i', 'k', 'j', 'm');
  b13 = new Boxes(200, 200, 'i', 'k', 'j', 'm');
  b14 = new Boxes(200, 300, 'i', 'k', 'j', 'm');
  b15 = new Boxes(400, 300, 'i', 'k', 'j', 'm');
  b16 = new Boxes(500, 300, 'i', 'k', 'j', 'm');
  b17 = new Boxes(500, 400, 'i', 'k', 'j', 'm');
  b18 = new Boxes(500, 500, 'i', 'k', 'j', 'm');

  gameObjects.add(t11);
  gameObjects.add(t12);
  gameObjects.add(t13);
  gameObjects.add(t14);
  gameObjects.add(t15);
  gameObjects.add(t16);
  gameObjects.add(t17);

  boxes.add(b11);
  boxes.add(b12);
  boxes.add(b13);
  boxes.add(b14);
  boxes.add(b15);
  boxes.add(b16);
  boxes.add(b17);
  boxes.add(b18);

  font = loadFont("ChalkboardSE-Bold-48.vlw");
  textFont(font, 18);
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
ArrayList<Boxes> boxes = new ArrayList<Boxes>();
boolean[] keys = new boolean[1000];

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
    board1.display();
    board1.level1();

    for (GameObject t : gameObjects)
    {
      t.display();
    }
    for (Boxes b : boxes) 
    {
      b.display();
    }

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

/*void keyPressed()
{
  if (gameState == 1 && selected != null)
  {
    selected.keyPressed();
  }
}*/

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}
PFont font; //<>//
Board board1; //this is a 600x600 board
Target t11, t12, t13, t14, t15, t16, t17, t18, t21, t22, t23, t24, t25, t26, t27;
Boxes b11, b12, b13, b14, b15, b16, b17, b18, b21, b22, b23, b24, b25, b26,b27;
Splash splash;

//int click = 0;
int gameState = 0; //counter used to determine screen
int score = 0;
int total = 0;

Boxes selected;

void setup() {

  size(800, 600, P2D);
  background(0);
  
  splash = new Splash();
  board1 = new Board();

  //level 1 targets and boxes, coded at t11 means level 1 target 1 and b11 box 1 level 1
  t11 = new Target(100, 0);
  t12 = new Target(200, 200);
  t13 = new Target(300, 200);
  t14 = new Target(400, 300);
  t15 = new Target(500, 200);
  t16 = new Target(600, 300);
  t17 = new Target(600, 400);
  t18 = new Target(500, 300);
  
  b11 = new Boxes(200, 100, 'i', 'm', 'j', 'k');
  b12 = new Boxes(300, 100, 'i', 'm', 'j', 'k');
  b13 = new Boxes(200, 200, 'i', 'm', 'j', 'k');
  b14 = new Boxes(200, 300, 'i', 'm', 'j', 'k');
  b15 = new Boxes(400, 300, 'i', 'm', 'j', 'k');
  b16 = new Boxes(500, 300, 'i', 'm', 'j', 'k');
  b17 = new Boxes(500, 400, 'i', 'm', 'j', 'k');
  b18 = new Boxes(500, 500, 'i', 'm', 'j', 'k');

  gameObjects.add(t11);
  gameObjects.add(t12);
  gameObjects.add(t13);
  gameObjects.add(t14);
  gameObjects.add(t15);
  gameObjects.add(t16);
  gameObjects.add(t17);
  gameObjects.add(t18);
  
  boxes.add(b11);
  boxes.add(b12);
  boxes.add(b13);
  boxes.add(b14);
  boxes.add(b15);
  boxes.add(b16);
  boxes.add(b17);
  boxes.add(b18);

  //level 2 targets and boxes, coded as t21 and b21 meaning box and target level 2 and box/target 1
  t21 = new Target(100, 100);
  t22 = new Target(200, 400);
  t23 = new Target(300, 200);
  t24 = new Target(400, 300);
  t25 = new Target(500, 200);
  t26 = new Target(600, 500);
  t27 = new Target(600, 400);
  
  b21 = new Boxes(200, 100, 'i', 'm', 'j', 'k');
  b22 = new Boxes(300, 100, 'i', 'm', 'j', 'k');
  b23 = new Boxes(200, 200, 'i', 'm', 'j', 'k');
  b24 = new Boxes(200, 300, 'i', 'm', 'j', 'k');
  b25 = new Boxes(400, 300, 'i', 'm', 'j', 'k');
  b26 = new Boxes(500, 300, 'i', 'm', 'j', 'k');
  b27 = new Boxes(500, 400, 'i', 'm', 'j', 'k');

  gameObjects2.add(t21);
  gameObjects2.add(t22);
  gameObjects2.add(t23);
  gameObjects2.add(t24);
  gameObjects2.add(t25);
  gameObjects2.add(t26);
  gameObjects2.add(t27);
  
  boxes2.add(b21);
  boxes2.add(b22);
  boxes2.add(b23);
  boxes2.add(b24);
  boxes2.add(b25);
  boxes2.add(b26);
  boxes2.add(b27);
  
  font = loadFont("ChalkboardSE-Bold-48.vlw");
  textFont(font, 18);
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
ArrayList<Boxes> boxes = new ArrayList<Boxes>();

ArrayList<GameObject> gameObjects2 = new ArrayList<GameObject>();
ArrayList<Boxes> boxes2 = new ArrayList<Boxes>();

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
    
  case 3:
     
    for (GameObject t2 : gameObjects2)
    {
      t2.display();
    }
    for (Boxes b2 : boxes2) 
    {
      b2.display();
    }
    println("level 2");

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

//the above code wouldn't work, so I used what was learnt in YASC for the keys, as per the below
//this was very helpful to ensure the keys were recognised both on pressed and released

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
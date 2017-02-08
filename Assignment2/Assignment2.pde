import ddf.minim.*; //sound library //<>//

PFont font;
Board board1; //this is a 600x600 board
Target t11, t12, t13, t14, t15, t16, t17, t18, t21, t22, t23, t24, t25, t26, t27, t28, t29;
Target t31, t32, t33, t34, t35, t36, t37, t38;
Boxes b11, b12, b13, b14, b15, b16, b17, b18, b21, b22, b23, b24, b25, b26,b27, b28, b29;
Boxes b31, b32, b33, b34, b35, b36, b37, b38;
Splash splash;

//int click = 0;
int gameState = 0; //counter used to determine screen
int score = 0;

Boxes selected; //used to initialise box object to "this"

//clip from http://soundbible.com/tags-click.html
AudioPlayer pop, bg;
Minim minim;

void setup() {

  size(800, 600, P2D);
  background(0);
  
  splash = new Splash();
  board1 = new Board();
  
  //sound
  //http://soundimage.org/wp-content/uploads/2014/04/Fantasy_Game_Background.mp3
  minim = new Minim(this);
  pop = minim.loadFile("pop.wav");
  bg = minim.loadFile("backgroundSound.mp3");
  
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
  t21 = new Target(300, 500);
  t22 = new Target(300, 600);
  t23 = new Target(200, 200);
  t24 = new Target(100, 400);
  t25 = new Target(200, 0);
  t26 = new Target(600, 200);
  t27 = new Target(200, 100);
  t28 = new Target(100, 500);
  t29 = new Target(200, 400);
  
  b21 = new Boxes(200, 100, 'i', 'm', 'j', 'k');
  b22 = new Boxes(200, 200, 'i', 'm', 'j', 'k');
  b23 = new Boxes(400, 200, 'i', 'm', 'j', 'k');
  b24 = new Boxes(400, 300, 'i', 'm', 'j', 'k');
  b25 = new Boxes(400, 300, 'i', 'm', 'j', 'k');
  b26 = new Boxes(500, 300, 'i', 'm', 'j', 'k');
  b27 = new Boxes(500, 500, 'i', 'm', 'j', 'k');
  b28 = new Boxes(600, 400, 'i', 'm', 'j', 'k');
  b29 = new Boxes(600, 100, 'i', 'm', 'j', 'k');
  
  gameObjects2.add(t21);
  gameObjects2.add(t22);
  gameObjects2.add(t23);
  gameObjects2.add(t24);
  gameObjects2.add(t25);
  gameObjects2.add(t26);
  gameObjects2.add(t27);
  gameObjects2.add(t28);
  gameObjects2.add(t29); 
  
  boxes2.add(b21);
  boxes2.add(b22);
  boxes2.add(b23);
  boxes2.add(b24);
  boxes2.add(b25);
  boxes2.add(b26);
  boxes2.add(b27);
  boxes2.add(b28);
  boxes2.add(b29);
  
 //level 3 targets and boxes, coded as t31 and b31 meaning box and target level 3 and box/target 1
  if(gameState == 4)
  {
  t31 = new Target(300, 100);
  t32 = new Target(200, 400);
  t33 = new Target(300, 200);
  t34 = new Target(600, 300);
  t35 = new Target(500, 200);
  t36 = new Target(600, 500);
  t37 = new Target(600, 400);
  t38 = new Target(600, 400);
  
  b31 = new Boxes(200, 100, 'i', 'm', 'j', 'k');
  b32 = new Boxes(300, 100, 'i', 'm', 'j', 'k');
  b33 = new Boxes(200, 200, 'i', 'm', 'j', 'k');
  b34 = new Boxes(200, 300, 'i', 'm', 'j', 'k');
  b35 = new Boxes(400, 300, 'i', 'm', 'j', 'k');
  b36 = new Boxes(500, 300, 'i', 'm', 'j', 'k');
  b37 = new Boxes(500, 400, 'i', 'm', 'j', 'k');
  b38 = new Boxes(500, 400, 'i', 'm', 'j', 'k');
  
  gameObjects2.add(t31);
  gameObjects2.add(t32);
  gameObjects2.add(t33);
  gameObjects2.add(t34);
  gameObjects2.add(t35);
  gameObjects2.add(t36);
  gameObjects2.add(t37);
  gameObjects2.add(t38);
  
  boxes3.add(b31);
  boxes3.add(b32);
  boxes3.add(b33);
  boxes3.add(b34);
  boxes3.add(b35);
  boxes3.add(b36);
  boxes3.add(b37);
  boxes3.add(b38);  
  }
  
  font = loadFont("ChalkboardSE-Bold-48.vlw");
  textFont(font, 18);
  
}

//These arraylists store box objects and target objects but are cleared per level
//and the new arraylist is initialised
//level 1 
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();
ArrayList<Boxes> boxes = new ArrayList<Boxes>();
//level 2
ArrayList<GameObject> gameObjects2 = new ArrayList<GameObject>();
ArrayList<Boxes> boxes2 = new ArrayList<Boxes>();
//level 3
ArrayList<GameObject> gameObjects3 = new ArrayList<GameObject>();
ArrayList<Boxes> boxes3 = new ArrayList<Boxes>();

boolean[] keys = new boolean[1000];

void draw() {

  bg.play();
  
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
     
    gameObjects.clear();
    boxes.clear();
    
    background(0);
    board1.level2();
       
    for (GameObject t2 : gameObjects2)
    {
      t2.level2();
    }
    
    for (Boxes b2 : boxes2) 
    {
      b2.level2();
    }
        
    println("level 2");
    
    break;
    
   case 4:
     
    clear();
    background(0);
    board1.level2();
    
    for (GameObject t3 : gameObjects3)
    {
      t3.display();
    }
    for (Boxes b3 : boxes3) 
    {
      b3.display();
    }
    println("level 3");
    
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
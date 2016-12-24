PFont font;

void setup(){
  
  size(800,500);
  background(128);
  
  font = loadFont("ChalkboardSE-Bold-48.vlw");
  textFont(font, 18);
  
}

void draw(){
  
  frontScreen();
}

void frontScreen(){
  
  fill(59, 187, 245);
  textSize(110);
  text("S", width/5, (height/2)+15);
  textSize(42);
  text("okoban", (width/5)+70, height/2);
  textSize(240);
  text("?", (width/2)+50, (height/2)+50);
  
  noFill();
  strokeWeight(5);
  stroke(142,113,79);
  rect((width/2), (height/4), width/4, width/4);
  
  
  
  
}
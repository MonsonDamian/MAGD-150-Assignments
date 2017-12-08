//Song "Shooting Star" is by Bag Raiders

PVector pos, scale;
float a, speed;
int maxImages = 10; 
int imageIndex = 0; 

PImage space_img;

float x1,x2,x3,x4,y1,y2,y3,y4;

import processing.sound.*;

SoundFile star;

PImage[] images = new PImage[maxImages]; 

void setup() {
  surface.setResizable(true);
  surface.setTitle("Dem Starz");
  pixelDensity(displayDensity());
  size(1200, 800);
  background(32);
  noStroke();
  pos = new PVector(width / 2.0, height / 2.0);

  speed = 2;
  a = 0.0;
  
  star = new SoundFile(this, "ShootingStar.mp3");
 
  star.loop();
  
  x1 = 0;
  x2 = 0;
  x3 = 0;
  x4 = 0;
  y1 = 0;
  y2 = 0;
  y3 = 0;
  y4 = 0;
  
  space_img = loadImage("Space.jpg");
  
   for (int i = 0; i < images.length; i ++ ) {
    images[i] = loadImage( "meme" + i + ".jpg" ); 
  }
}


void draw() {
  background(32);
  imageMode(CORNERS);
  tint(119, 28, 220);
  image(space_img,0,0,width,height);
  noTint();
   fill(165, 28, 78);
  stroke(76, 119, 43);
  ellipse(100,120,100,100);
  strokeWeight(3);
  noFill();
  stroke(163, 140, 63);
  bezier(80, 167, 400, 300, -220, -70, 130,77 );
  bezier(83, 167, 400, 310, -217, -113, 130,77 );
  fill(220);
  noStroke();
  ellipse(-.70*x1,200-y1,10,10);
   float star1 = 1800;
 if (x1 < -star1){
   x1 = random(-100,100);
   y1 = random(0,100);
 }
 x1 = x1-20;
 y1 = y1-5;
  ellipse(-.56*x2,10-y2,10,10);
   float star2 = 2300;
 if (x2 < -star2){
   x2 = random(-100,100);
   y2 = random(0,100);
 }
 x2 = x2-20;
 y2 = y2-5;
  ellipse(-1.5*x3,150-y3,10,10);
   float star3 = 2000;
 if (x3 < -star3){
   x3 = random(-100,100);
   y3 = random(0,100);
 }
 x3 = x3-20;
 y3 = y3-5;
  ellipse(-1*x4,400+y4,10,10);
   float star4 = 2500;
 if (x4 < -star4){
   x4 = random(-100,100);
   y4 = random(0,100);
 }
 x4 = x4-20;
 y4 = y4-5;


  pushMatrix();
  translate(mouseX, mouseY);
  rotate(a);

  imageMode(CENTER);
 image(images[imageIndex], 0, 0);

  popMatrix();


  a += 0.02;

  

  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP) {
        pos.add(a * speed, -a * speed);
      }
      if (keyCode == DOWN) {
        pos.sub(new PVector(cos(a) * speed, sin(a) * speed));
      }
    }
  }
  

 float rate = map(mouseX, 0, width, .8, 1.2);
  star.rate(rate);
  
}

void mousePressed() {

  imageIndex = int(random(images.length));
}
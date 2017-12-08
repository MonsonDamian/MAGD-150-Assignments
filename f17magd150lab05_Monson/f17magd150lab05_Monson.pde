boolean circle = true;
boolean rectangle = false;
boolean TV = false;

int rectX, rectY;      
int circleX, circleY;  
int rectSize = 30;     
int circleSize = 30;   
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;
int x,y;


void setup(){
  frameRate(100000000);
  size(800,600);
  background(#3a3834);
  fill(155, 107, 48);
   rect(0,400,800,200);
  fill(145, 56, 31);
   rect(80,120,443,403,60);
  fill(10);
   rect(100,150,405,305);
   strokeWeight(0);
   fill(#2fddfc);
   rect(550,50,200,250);
   fill(#ffe947);
   ellipse(710,90,40,40);
   noFill();
   strokeWeight(10);
   stroke(205);
   rect(550,50,200,250);
   line(550,175,750,175);
   line(650,50,650,300);
  x = mouseX;
  y = mouseY;
  
  rectColor = color(0);
  rectHighlight = color(51);
  circleColor = color(255);
  circleHighlight = color(204);
  baseColor = color(102);
  currentColor = baseColor;
  circleX = width/2+circleSize/2+10;
  circleY = (height/2)+190;
  rectX = width/2-rectSize-10;
  rectY = (height/2-rectSize/2)+190;
  ellipseMode(CENTER);
  
}

void draw(){
   update(mouseX, mouseY);
  strokeWeight(0);
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(255);
  rect(rectX, rectY, rectSize, rectSize);
  
  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

void mousePressed() {

  
  if (circleOver) {
    currentColor = circleColor;
    circle = !circle;
    rectangle = !rectangle;
    circle();
  }
  if (rectOver) {
    currentColor = rectColor;
    rectangle = !rectangle;
    rectangle();
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
  }
void circle(){
  if(circle==true){
fill(255);
rect(100,150,405,305);
fill(#195ee8);
rect(100,425,55,30);
fill(#ffff3a);
rect(155,150,55,275);
fill(0);
rect(155,425,55,30);
fill(#26f4ff);
rect(210,150,55,275);
fill(#f720f7);
rect(210,425,55,30);
fill(#1eff4b);
rect(265,150,55,275);
fill(20);
rect(265,425,55,30);
fill(#f711ff);
rect(320,150,55,275);
fill(#32fff1);
rect(320,425,55,30);
fill(#ff0000);
rect(375,150,55,275);
fill(30);
rect(375,425,55,30);
fill(#1934ff);
rect(430,150,75,275);
textSize(30);
    fill(80);
    text("Channel 12",110,200);
    println("TV Error");
  }
  if(circle==false){
    fill(80);
    rect(100,150,405,305);
    textSize(50);
    fill(#ff2018);
    text("Error 404",190,300);
    textSize(35);
    text("Channel Not Found",140,350);
    textSize(30);
    fill(175);
    text("Channel XX",110,200);
    println("Channel Doesn't Exist");
  }
}

void rectangle(){
  if(rectangle==true){
fill(0);
rect(100,150,405,305);
textSize(30);
fill(200,0,0);
    text("Off",110,200);
    println("Television Off");
}
if(rectangle==false){
  fill(#ff741e);
  rect(100,150,405,305);
  fill(255,193,124,83);
  ellipse(310,370,170,170);
  fill(255, 205, 124,80);
  ellipse(310,375,120,120);
  fill(#fcfa99);
  ellipse(310,375,80,80);
  fill(30);
  rect(100,385,405,70);
  textSize(30);
    fill(80);
    text("Channel SS",110,200);
    println("Channel Sun Set");
}
}

void keyPressed(){
  strokeWeight(0);
   fill(#ff8421);
   rect(550,50,200,250);
   fill(#ffbc38);
   ellipse(710,250,40,40);
   noFill();
   strokeWeight(10);
   stroke(175);
   rect(550,50,200,250);
   line(550,175,750,175);
   line(650,50,650,300);
   textSize(20);
   fill(230);
   text("Dinner Time! Turn the televison off okay?",30,30);
   println("Dinner Time");
}
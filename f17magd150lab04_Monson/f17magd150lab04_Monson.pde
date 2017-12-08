//Integers go on top 
char pep, cheese, sauce;
boolean button = false;
boolean buttonPressed = false;
float theta, cosTheta, sinTheta, 
  rotationSpeed;
float x1, y1, w, h, 
  x2, y2,
  x3, y3,
  x4, y4;

void setup(){
  size(500,500);
  pixelDensity(displayDensity());
  background(255);
  w = h = min(width, height) * 0.20;
 
  x1 = width * 0.25;
  y1 = height * 0.5;
 
  x2 = width * 0.5;
  y2 = height * 0.5;
  
  x3 = width * 0.25;
  y3 = height * 0.5;
  
  x4 = width * 0.5;
  y4 = height * 0.5;
  

  rotationSpeed = 0.11+pmouseX*0.01;
  
  cheese = 'q';
}

void draw(){
  strokeWeight(0);
  if(button){
background(0,30,255);
 fill(#fcb437);
  triangle(250,-1-mouseY,0,499-mouseY,500,499-mouseY);
  fill(200,10,10);
  ellipse(160,270-mouseY,50,50);
  ellipse(200,367-mouseY,50,50);
  ellipse(320,230-mouseY,50,50);
  ellipse(100,420-mouseY,50,50);
  ellipse(250,87-mouseY,50,50);
  ellipse(205,150-mouseY,50,50);
  ellipse(400,435-mouseY,50,50);
  ellipse(300,400-mouseY,50,50);
  fill(#fcb437);
  triangle(250,500-mouseY,0,1000-mouseY,500,1000-mouseY);
  fill(200,10,10);
  ellipse(160,770-mouseY,50,50);
  ellipse(200,867-mouseY,50,50);
  ellipse(320,730-mouseY,50,50);
  ellipse(100,920-mouseY,50,50);
  ellipse(250,587-mouseY,50,50);
  ellipse(205,650-mouseY,50,50);
  ellipse(400,935-mouseY,50,50);
  ellipse(300,900-mouseY,50,50);
  
  }else {
    background(0,0,150);
    
    fill(32, 32);
  rect(0, 0, width, height);
  theta = theta + map(mouseX, 0, width, -rotationSpeed, rotationSpeed);
  cosTheta = cos(theta);
  sinTheta = sin(theta);

  x1 = map(cosTheta, -1, 1, w, width - w);
  y1 = height * 0.5;
  fill(255, map(sinTheta, -1, 1, 0, 200), 0, 250);
  ellipse(x1, y1, w * 0.5, h * 0.5);
  x2 = width * 0.5;
  y2 = map(sinTheta, -1, 1, h, height - h);
  fill(255, map(cosTheta, -1, 1, 0, 200), 0, 250);
  ellipse(x2, y2, w * 0.5, h * 0.5);
  x3 = map(cosTheta, 1, -1, w, width - w);
  y3 = height * 0.5;
  fill(255, map(sinTheta, -1, 1, 0, 200), 0, 250);
  ellipse(x3, y3, w * 0.5, h * 0.5);
      if (buttonPressed){
      if (keyPressed) {
    if (key == sauce) {
      fill(#fcb437);
      ellipse(mouseX,mouseY,200,200);
      fill(#ad4432);
   ellipse(mouseX,mouseY,180,180);
    }
   
    }
    if(key == cheese) { 
      ellipse(mouseX,mouseY,200,200);
    fill(#f2c02b);
    ellipse(mouseX,mouseY,180,180);
      }
  }
  else{
    triangle(50,0,0,100,100,100);
    triangle(450,0,400,100,500,100);
    triangle(50,400,0,500,100,500);
    triangle(450,400,400,500,500,500);
  }
}
}
void keyPressed(){
  buttonPressed = !buttonPressed;
}

void mousePressed(){
 button = !button;
 
}
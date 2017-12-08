 void setup(){
 size(500,500);
 frameRate(100);
}

void draw(){
  background(80,30,60);
 stroke(240);
 strokeWeight(10);
float a = 10;
float b = 490;
float c = lerp(a, b, .2);
float d = lerp(a, b, .5);
float e = lerp(a, b, .8);
beginShape(POINTS);
vertex(a, 250);
vertex(b, 250);
vertex(c, 250);
vertex(d, 250);
vertex(e, 250);
endShape();
  strokeWeight(3);
  line(0,height/3.0,width,height/3.0);
  line(0,height*2/3.0,width,height*2/3.0);
 stroke(0);
strokeWeight(3);
fill(187, 51, 255);
    float  x1 = map(mouseX+mouseY, 0, width, 300, 200);
  ellipse(x1, 60, 50, 50);  
  fill(#1a53ff);
  float x2 = map(mouseX+mouseY, 0, width, 200, 300);
  ellipse(x2, 440, 50, 50);  
  fill(187, 51, 255);
   float  x3 = map(mouseX-(2*mouseY), 0, width, 300, 200);
  ellipse(x3, 60, 50, 50);  
  fill(#1a53ff);
  float x4 = map(mouseX-(2*mouseY), 0, width, 200, 300);
  ellipse(x4, 440, 50, 50);  
 
 fill(#9999ff);
 strokeWeight(5);
 float mx = constrain(mouseX, 100, 400);
  rect(mx-10, 225, 50, 50);
 
  
 //This is the mouse cursor dots don't touch this line!
  strokeWeight(1.5);
  fill(#6600cc);
  ellipse(mouseX,mouseY,60,60);
  fill(#5900b3);
  ellipse(mouseX,mouseY,40,40);
  fill(#400080);
  ellipse(mouseX,mouseY,20,20);
}
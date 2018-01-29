final int size = 1000;
float x, y, z;
float angle = 0;

void settings() {
  size(size, size, P3D);
}

void setup() {
  lights();
  x = width/2;
  y = height/2;
  z = 0;
}

void draw() {
  background(0);
  //sun
  translate(x, y, z);
  fill(255, 200, 64);   
  ellipse(0, 0, 80, 80);
  pushMatrix();
  //venus
  rotate(angle + 0.001);
  translate(120,0);
  fill(155,135,95);
  ellipse(0,0,20,20);
  
  popMatrix();
  pushMatrix();
  //earth
  rotate(angle + 10);
  translate(200,0);
  fill(64,64,255); 
  ellipse(0,0,30,30);
  //moon
  rotate(angle + 1);
  translate(20,0);
  fill(169,169,169);
  ellipse(0,0,5,5);
  popMatrix();
  
  pushMatrix();
  
  rotate(angle + 1);
  translate(350,0);
  fill(255);
  ellipse(0,0,100,100);
  
  popMatrix();
  
  
  angle += PI/100;
  
  
}

void rotate(float x, float y, float z) {
  rotateX(x % 2*PI);
  rotateY(y % 2*PI);
  rotateZ(z % 2*PI);
}

void sphere() {
  beginShape();
  fill(0);
  //translate(size/2,size/2,0);
  stroke(255);
  strokeWeight(0.5);
  sphere(size/8);
  endShape();
}
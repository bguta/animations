final int size = 1000;
float x, y, z;
float angle = 0;
c cube;
void settings() {
  size(size, size, P3D); 
  x= width /2;
  y = height / 2;
  z = 0;
}
void setup() {
  rectMode(CENTER);
  lights();
  cube = new c(size);
}
void draw() {
  background(250);
  translate(x, y, z);
  //rotate(angle/10, angle/5, angle);
  cube.display();
  //angle += PI/500;
}

void rotate(float x, float y, float z) {
  rotateX(x);
  rotateY(y);
  rotateZ(z);
}

void drawCube() {
  beginShape();
  fill(0);
  stroke(255);
  box(size/4);
  endShape();
}
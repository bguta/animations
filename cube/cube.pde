final int size = 1000;
float x, y, z;
float angle = 0;

void settings() {
  size(size, size, P3D); 
  x= width /2;
  y = height / 2;
  z = 0;
}
void setup() {
  rectMode(CENTER);
  lights();
}
void draw() {
  background(250);
  translate(x, y, z);
  rotate(angle/10, angle/5, angle);
  drawCube2();
  //drawCube();
  angle += PI/500;
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

void drawCube2() {

  for (int p = 0; p < size/4; p++) {
    fill(0);
    stroke(0);
    if(p == 0 || p == size/4 - 1)
      stroke(255);
    beginShape();
    vertex(-size/8, size/8, p);
    vertex(size/8, size/8, p);
    vertex(size/8, -size/8, p);
    vertex(-size/8, -size/8, p);
    endShape(CLOSE);
  }
}
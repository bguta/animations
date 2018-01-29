final int size = 3000;
float x, y, z;
float eOrbit,vOrbit;
float earthAngle,sunAngle,moonAngle,venusAngle;
float sunSize, moonSize, earthSize,venusSize;

void settings() {
  fullScreen(P3D);
  // size(size, size, P3D);
}

void setup() {
  background(255);
  lights();
  x = width/2;
  y = height/2;
  z = 0;
  sunSize = size/10;
  earthSize = sunSize/5;
  moonSize = earthSize/10;
  moonAngle = earthAngle = venusAngle = sunAngle = 0;
  eOrbit = size/3;
  vOrbit = 0.72 * eOrbit;
  venusSize = 0.94 * earthSize;
}

void draw() {
  background(0, 0, 0);
  translate(x, y, z);

  pushMatrix();
  sun();
  popMatrix();

  pushMatrix();
  venus();
  popMatrix();
  
  pushMatrix();
  earth();
  moon();
  popMatrix();

  earthAngle += PI/1000;
  moonAngle += PI/100;
  sunAngle += PI/5000;
  venusAngle += (PI/1000) * 0.61;
}

void sun() {
  beginShape();
  rotate(0, sunAngle, 0);
  fill(253, 184, 19);
  stroke(255);
  translate(0, 0, 0);
  sphere(sunSize);
  endShape();
}


void earth() {
  beginShape();
  rotate(0, earthAngle, 0);
  fill(107, 147, 214);
  stroke(255);
  translate(0, 0, eOrbit);
  sphere(earthSize);
  endShape();
}

void venus(){
  beginShape();
  rotate(0, venusAngle, 0);
  fill(193,143,23);
  stroke(255);
  translate(0, 0, vOrbit);
  sphere(venusSize);
  endShape();
  
}

void moon() {
  
  beginShape();
  rotate(0, moonAngle, 0);
  fill(162, 168, 174);
  stroke(255);
  translate(0, 0, earthSize + 10);
  sphere(moonSize);
  endShape();
}

void rotate(float x, float y, float z) {
  rotateX(x % 2*PI);
  rotateY(y % 2*PI);
  rotateZ(z % 2*PI);
}
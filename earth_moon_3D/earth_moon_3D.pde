final int size = 1500;
float x, y, z;
float earthAngle = 0;
float moonAngle = 0;

void settings() {
  fullScreen(P3D);
 // size(size, size, P3D);
}

void setup(){
  background(255);
  lights();
  x = width/2;
  y = height/2;
  z = 0;
}

void draw(){
 background(255);
 translate(x,y,z);
 pushMatrix();
 rotate(0,earthAngle,0);
 earth(size/8);
 popMatrix();
 
 pushMatrix();
 rotate(0,moonAngle,0);
 moon(size/64);
 
 popMatrix();
 
 earthAngle += PI/1000;
 moonAngle += PI/100;
  
}

void earth(float r){
  beginShape();
  fill(107,147,214);
  //stroke(107,147,214);
  translate(0,0,0);
  sphere(r);
  endShape();
}
void moon(float r){
  beginShape();
  fill(162,168,174);
  //stroke(162,168,174);
  translate(0,0,size/4);
  sphere(r);
  endShape();
}
void rotate(float x, float y, float z) {
  rotateX(x % 2*PI);
  rotateY(y % 2*PI);
  rotateZ(z % 2*PI);
}
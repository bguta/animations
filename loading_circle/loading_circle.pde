 //<>//
//size of the screen
int size = 1000;

// Stuff for load
float len = 0;
//speed should be a small multiple of pi for best results
final float speed = PI/100;
boolean growth = true;
boolean clockwise = false;
//

void settings() {
  size(size, size);
}

void setup() {
  background(255);
}

void draw() {
  load();
}

void load() {

  if (growth && len <= 2*PI)
    len += speed;
  else {
    growth = false;
    len -= speed;
    if (len <= 0) {
      len = 0;
      growth = true;
    }
  }

  background(0);
  background(255);
  beginShape();
  stroke(0);
  strokeWeight(10);
  if (clockwise)
    arc(size/2, size/2, size/2, size/2, 0, len);
  else
    arc(size/2, size/2, size/2, size/2, 2*PI - len, 2*PI);
   endShape();
}
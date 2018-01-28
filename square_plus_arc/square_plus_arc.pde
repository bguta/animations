

final int size = 1000;
float angle = 0;
int count = 0;
float arcAngle;
final float step = PI/100;
boolean clockwise = true;
boolean delay = false;

void settings() {
  size(size, size);
}
void setup() {
  rectMode(CENTER);
  ellipseMode(RADIUS);
}

void draw() {
  background(255);
  rotating_square();
  rotating_arc();
}

void rotating_square() {
  translate(width/2, height/2);
  rotate(angle);
  fill(0);
  rect(0, 0, size/4, size/4, 50);
  if (clockwise)
    angle += step;
  else angle -= step;
}
void rotating_arc() {
  if (!delay)
    arcAngle = angle/4 % 2*PI;

  beginShape();
  noFill();
  strokeWeight(20);
  if (arcAngle > 2*PI - PI/100) {
    delay = true;
    count += 1;
  }
  if (count > 10) {
    delay = false;
    count = 0;
  }
  arc(0, 0, size/2 - 10, size/2- 10, 0, arcAngle);

  endShape();
}
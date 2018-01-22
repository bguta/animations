
int radius = 0;
int speed = 1;
final int  max = 1000;
boolean growth;

void settings(){
  size(max, max);
}
void setup() {
  background(255);
}

void draw() {
  process();
}

void process() {
  
  if(radius < max && growth)
    grow();
  else
    shrink();
}
void grow() {
  fill(0);
  background(0);
  background(255);

  ellipse(max/2, max/2, radius, radius);

  radius += speed;
  if(radius >= max)
    growth = false;
}

void shrink() {

  fill(0);
  background(0);
  background(255);

  ellipse(max/2, max/2, radius, radius);

  radius-=speed;

  if (radius <= 0) {
    radius = 0;
    growth = true;
  }
}
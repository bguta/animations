public class c{
  private float angle;
  private final float rAngle = PI/500;
  private final int SIZE;
  
  public c(int size){ // create a cube
    angle = 0;
    SIZE = size;
  }
  
  public void display(){ //show it
    
    r();
    background(255);
    for (int p = 0; p < SIZE/4; p++) {
    fill(0);
    stroke(0);
    beginShape();
    if( p == SIZE/4 - 1){
    stroke(255);
    line(-SIZE/8, SIZE/8, 0,-SIZE/8, SIZE/8, p);
    line(SIZE/8, SIZE/8, 0,SIZE/8, SIZE/8, p);
    line(SIZE/8, -SIZE/8, 0,SIZE/8, -SIZE/8, p);
    line(-SIZE/8, -SIZE/8, 0,-SIZE/8, -SIZE/8, p);
    stroke(0);
    }
    if(p == 0 || p == SIZE/4 - 1)
      stroke(255);
    vertex(-SIZE/8, SIZE/8, p);
    vertex(SIZE/8, SIZE/8, p);
    vertex(SIZE/8, -SIZE/8, p);
    vertex(-SIZE/8, -SIZE/8, p);
    endShape(CLOSE);
    }
    
  }
  
  private void r(){//rotate
    rotate(angle/10, angle/5, angle);
     angle += rAngle;
  }
  
  private void rotate(float x, float y, float z) {
  rotateX(x);
  rotateY(y);
  rotateZ(z);
}
  
  
  
  
  
  
  
  
  
}
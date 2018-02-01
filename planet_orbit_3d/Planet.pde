public class planet{
  
  private float size;
  private ArrayList<Float> colour;
  
  
  
  public planet(){
    size = 300;
    colour = new ArrayList<Float>();
    setColour(107, 147, 214);
  }
 
  public void show(float angle,float orbitRadius){
    beginShape();
    rotate(0, angle, 0);
    fill(colour.get(0),colour.get(1),colour.get(2));
    stroke(255);
    translate(0, 0, orbitRadius);
    sphere(size);
    endShape();  
  }
  public void setColour(float a, float b, float c){
    colour.add(a);
    colour.add(b);
    colour.add(c);
    fill(a,b,c);
  }
  
}
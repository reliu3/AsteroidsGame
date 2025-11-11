class Star //note that this class does NOT extend Floater
{
  private double starX, starY;
  private int starCol;
  
  public Star() {
    starX = (Math.random()*(width-49))+50;
    starY = (Math.random()*(height-49))+50;
    starCol = color(116,160,31);
  }
  
  public void show() {
    fill(starCol);
    noStroke();
    triangle((float)starX-10, (float)starY, (float)starX, (float)starY-20, (float)starX+10, (float)starY);
    triangle((float)starX-20, (float)starY, (float)starX-10, (float)starY-15, (float)starX, (float)starY);
    triangle((float)starX, (float)starY, (float)starX+10, (float)starY-15, (float)starX+20, (float)starY);
  }
  
  
  
  
  //modifier and accessor
  public double getX() {
    return starX; 
  }
  
  public double getY() {
    return starY; 
  }
  
  public int getClr() {
    return starCol; 
  }
  
  public void setX(double x) {
    starX = x; 
  }
  
  public void setY(double y) {
    starY = y; 
  }
  
  public void setClr(int r, int g, int b) {
    starCol = color(r, g, b); 
  }
  
}

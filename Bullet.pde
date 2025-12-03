class Bullet extends Floater {
  private int bulletSize;
  public Bullet(Spaceship theShip) {
     myCenterX = theShip.getX();
     myCenterY = theShip.getY();
     myXspeed = theShip.getXspeed();
     myYspeed = theShip.getYspeed();
     myPointDirection = theShip.getDirection();
     accelerate(6.0);
     myColor = color(76,108,12);
     
     bulletSize = 5;
     
     corners = 13; 
     
     xCorners = new int[corners];
     xCorners[0] = -3*bulletSize;
     xCorners[1] = -4*bulletSize;
     xCorners[2] = -3*bulletSize;
     xCorners[3] = -4*bulletSize;
     xCorners[4] = -3*bulletSize;
     xCorners[5] = -2*bulletSize;
     xCorners[6] = 3*bulletSize;
     xCorners[7] = 3*bulletSize;
     xCorners[8] = 4*bulletSize;
     xCorners[9] = 3*bulletSize;
     xCorners[10] = 3*bulletSize;
     xCorners[11] = -2*bulletSize;
     xCorners[12] = -3*bulletSize;
    
     yCorners = new int[corners];
     yCorners[0] = 1*bulletSize;
     yCorners[1] = 1*bulletSize;
     yCorners[2] = 0*bulletSize;
     yCorners[3] = -1*bulletSize;
     yCorners[4] = -1*bulletSize;
     yCorners[5] = 0*bulletSize;
     yCorners[6] = 0*bulletSize;
     yCorners[7] = -1*bulletSize;
     yCorners[8] = 0*bulletSize;
     yCorners[9] = 1*bulletSize;
     yCorners[10] = 0*bulletSize;
     yCorners[11] = 0*bulletSize;
     yCorners[12] = 1*bulletSize;
     
  }
  



  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getDirection() {
    return myPointDirection; 
  }
  
  
  
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public void setX(double x) {
    myCenterX = x;
  }
  public void setY(double y) {
    myCenterY = y;
  }
  public void setDirection(double d) {
    myPointDirection = d; 
  }
}

class Spaceship extends Floater  
{   
  private int size;
  public Spaceship() {
    size = 6;
    corners = 33;
    
    //X coordinates
    xCorners = new int[corners];
    xCorners[0] = 3*size;
    xCorners[1] = 4*size;
    xCorners[2] = 4*size;
    xCorners[3] = 6*size;
    xCorners[4] = 6*size;
    xCorners[5] = 7*size;
    xCorners[6] = 7*size;
    xCorners[7] = 6*size;
    xCorners[8] = 6*size;
    xCorners[9] = 4*size;
    xCorners[10] = 4*size;
    xCorners[11] = 3*size;
    xCorners[12] = 3*size;
    xCorners[13] = -3*size;
    xCorners[14] = 3*size;
    xCorners[15] = 5*size;
    xCorners[16] = 5*size;
    xCorners[17] = -3*size;
    xCorners[18] = -3*size;
    xCorners[19] = -4*size;
    xCorners[20] = -4*size;
    xCorners[21] = -7*size;
    xCorners[22] = -7*size;
    xCorners[23] = -4*size;
    xCorners[24] = -4*size;
    xCorners[25] = -3*size;
    xCorners[26] = -3*size;
    xCorners[27] = 3*size;
    xCorners[28] = -3*size;
    xCorners[29] = 5*size;
    xCorners[30] = 5*size;
    xCorners[31] = 3*size;
    xCorners[32] = 3*size;
    
    //Y coordinates
    yCorners = new int[corners];
    yCorners[0] = 6*size;
    yCorners[1] = 6*size;
    yCorners[2] = 5*size;
    yCorners[3] = 2*size;
    yCorners[4] = 1*size;
    yCorners[5] = 1*size;
    yCorners[6] = -1*size;
    yCorners[7] = -1*size;
    yCorners[8] = -2*size;
    yCorners[9] = -5*size;
    yCorners[10] = -6*size;
    yCorners[11] = -6*size;
    yCorners[12] = -5*size;
    yCorners[13] = -1*size;
    yCorners[14] = -5*size;
    yCorners[15] = -2*size;
    yCorners[16] = -1*size;
    yCorners[17] =-1*size;
    yCorners[18] = -2*size;
    yCorners[19] = -2*size;
    yCorners[20] = -1*size;
    yCorners[21] = -2*size;
    yCorners[22] = 2*size;
    yCorners[23] = 1*size;
    yCorners[24] = 2*size;
    yCorners[25] = 2*size;
    yCorners[26] = 1*size;
    yCorners[27] = 5*size;
    yCorners[28] = 1*size;
    yCorners[29] = 1*size;
    yCorners[30] = 2*size;
    yCorners[31] = 5*size;
    yCorners[32] = 6*size;
    
    //color
    myColor = color(178, 209, 119);
    
    //initial location
    myCenterX = 500.0;
    myCenterY = 500.0;
    myPointDirection = 0;
    
    //speed
    myXspeed= 0;
    myYspeed= 0;
  }
  
  
  
  public void hyperspace() {
    myCenterX = (Math.random()*(width+1));
    myCenterY = (Math.random()*(height+1));
    myPointDirection = (Math.random()*361);
    myXspeed= 0;
    myYspeed= 0;
  }
  
  
  
  
  //getters & setters
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

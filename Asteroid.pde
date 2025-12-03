class Asteroid extends Floater 
{
  private double rotateSpeed; 
  private int asteroidSize;
  
  public Asteroid() {
    //rotation speed
    rotateSpeed = (Math.random()*2)-0.5;
    
    //size
    asteroidSize = (int)((Math.random()*3)+1);
    
    //corners
    corners = 18;
    
    //xcorners 
    xCorners = new int[corners];
    xCorners[0] = -2*asteroidSize;
    xCorners[1] = 2*asteroidSize;
    xCorners[2] = 5*asteroidSize;
    xCorners[3] = 8*asteroidSize;
    xCorners[4] = 10*asteroidSize;
    xCorners[5] = 10*asteroidSize;
    xCorners[6] = 9*asteroidSize;
    xCorners[7] = 7*asteroidSize;
    xCorners[8] = 3*asteroidSize;
    xCorners[9] = -3*asteroidSize;
    xCorners[10] = -7*asteroidSize;
    xCorners[11] = -9*asteroidSize;
    xCorners[12] = -10*asteroidSize;
    xCorners[13] = -10*asteroidSize;
    xCorners[14] = -8*asteroidSize;
    xCorners[15] = -5*asteroidSize;
    xCorners[16] = -2*asteroidSize;
    xCorners[17] = 2*asteroidSize;
    
    
    //ycorners (need to add the 2 corners)
    yCorners = new int[corners];
    yCorners[0] = 9*asteroidSize;
    yCorners[1] = 9*asteroidSize;
    yCorners[2] = 8*asteroidSize;
    yCorners[3] = 5*asteroidSize;
    yCorners[4] = 1*asteroidSize;
    yCorners[5] = -3*asteroidSize;
    yCorners[6] = -5*asteroidSize;
    yCorners[7] = -7*asteroidSize;
    yCorners[8] = -8*asteroidSize;
    yCorners[9] = -8*asteroidSize;
    yCorners[10] = -7*asteroidSize;
    yCorners[11] = -5*asteroidSize;
    yCorners[12] = -3*asteroidSize;
    yCorners[13] = 1*asteroidSize;
    yCorners[14] = 5*asteroidSize;
    yCorners[15] = 8*asteroidSize;
    yCorners[16] = 9*asteroidSize;
    yCorners[17] = 9*asteroidSize;
     
    //color
    myColor = color((int)((Math.random()*81)+100),(int)((Math.random()*46)+210),(int)(Math.random()*151));
   
    //center point
    myCenterX = (Math.random()*(width-49))+50;
    myCenterY = (Math.random()*(height-49))+50;
    
    //speed
    myXspeed = Math.random()*2;
    myYspeed = Math.random()*2;
    
    //direction
    myPointDirection = degrees((float)(Math.random()*361));
  }
  
  
  public void move() {
    turn(rotateSpeed);
    super.move();
  }



//getters & setters
  public int getSize() {
    return asteroidSize; 
  }
  public double getRspeed() {
    return rotateSpeed; 
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
  
  
  public void setSize(int s) {
    asteroidSize = s; 
  }
  public void setRspeed(double r) {
    rotateSpeed = r; 
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



  //overrided show
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      curveVertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}

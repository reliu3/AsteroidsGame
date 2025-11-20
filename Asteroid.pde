class Asteroid extends Floater 
{
  private double rotateSpeed; 
  private int asteroidSize;
  
  public Asteroid() {
    //rotation speed
    rotateSpeed = (Math.random()*2)-0.5;
    
    //size
    asteroidSize = (int)(Math.random()*4);
    
    //corners
    corners = 16;
    
    //xcorners 
    xCorners = new int[corners];
    xCorners[0] = 2*asteroidSize;
    xCorners[1] = 5*asteroidSize;
    xCorners[2] = 8*asteroidSize;
    xCorners[3] = 10*asteroidSize;
    xCorners[4] = 10*asteroidSize;
    xCorners[5] = 9*asteroidSize;
    xCorners[6] = 7*asteroidSize;
    xCorners[7] = 3*asteroidSize;
    xCorners[8] = -3*asteroidSize;
    xCorners[9] = -7*asteroidSize;
    xCorners[10] = -9*asteroidSize;
    xCorners[11] = -10*asteroidSize;
    xCorners[12] = -10*asteroidSize;
    xCorners[13] = -8*asteroidSize;
    xCorners[14] = -5*asteroidSize;
    xCorners[15] = -2*asteroidSize;
    
    
    
    //ycorners (need to add the 2 corners)
    yCorners = new int[corners];
    yCorners[0] = 9*asteroidSize;
    yCorners[1] = 8*asteroidSize;
    yCorners[2] = 5*asteroidSize;
    yCorners[3] = 1*asteroidSize;
    yCorners[4] = -3*asteroidSize;
    yCorners[5] = -5*asteroidSize;
    yCorners[6] = -7*asteroidSize;
    yCorners[7] = -8*asteroidSize;
    yCorners[8] = -8*asteroidSize;
    yCorners[9] = -7*asteroidSize;
    yCorners[10] = -5*asteroidSize;
    yCorners[11] = -3*asteroidSize;
    yCorners[12] = 1*asteroidSize;
    yCorners[13] = 5*asteroidSize;
    yCorners[14] = 8*asteroidSize;
    yCorners[15] = 9*asteroidSize;
     
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
}

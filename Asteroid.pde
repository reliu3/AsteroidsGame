class Asteroid extends Floater {
  private double rotateSpeed;
  
  public Asteroid() {
    //rotation speed
    rotateSpeed = (Math.random()*6);
    
    //corners
    corners = 16;
    
    //xcorners
    xCorners = new int[corners];
    xCorners[0] = 2;
    xCorners[1] = 5;
    xCorners[2] = 8;
    xCorners[3] = 10;
    xCorners[4] = 10;
    xCorners[5] = 9;
    xCorners[6] = 5;
    xCorners[7] = -5;
    xCorners[8] = 7;
    xCorners[9] = -7;
    xCorners[10] = -9;
    xCorners[11] = -10;
    xCorners[12] = -10;
    xCorners[13] = -8;
    xCorners[14] = -5;
    xCorners[15] = -2;
    
    //ycorners
    yCorners = new int[corners];
    yCorners[0] = 9;
    yCorners[1] = 8;
    yCorners[2] = 5;
    yCorners[3] = 1;
    yCorners[4] = -3;
    yCorners[5] = -5;
    yCorners[6] = -7;
    yCorners[7] = -7;
    yCorners[8] = -5;
    yCorners[9] = -3;
    yCorners[10] = 1;
    yCorners[11] = 5;
    yCorners[12] = 8;
    yCorners[13] = 9;
     
    //color
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   
    //center point
    myCenterX = (Math.random()*(width-49))+50;
    myCenterY = (Math.random()*(height-49))+50;
    
    //speed
    myXspeed = Math.random()*4;
    myYspeed = Math.random()*4;
    
    //direction
    myPointDirection = degrees((float)(Math.random()*361));
  }
}

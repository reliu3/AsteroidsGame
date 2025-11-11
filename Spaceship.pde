class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 28;
    
    //X coordinates
    xCorners = new int[corners];
    xCorners[0] = 25;
    xCorners[1] = 25;
    xCorners[2] = 30;
    xCorners[3] = 25;
    xCorners[4] = 25;
    xCorners[5] = 20;
    xCorners[6] = 10;
    xCorners[7] = 10;
    xCorners[8] = 5;
    xCorners[9] = 5;
    xCorners[10] = 15;
    xCorners[11] = 5;
    xCorners[12] = 5;
    xCorners[13] = 10;
    xCorners[14] = 10;
    xCorners[15] = 20;
    xCorners[16] = -25;
    xCorners[17] = -30;
    xCorners[18] = -35;
    xCorners[19] = -30;
    xCorners[20] = -35;
    xCorners[21] = -30;
    xCorners[22] = -25;
    xCorners[23] = 5;
    xCorners[24] = -25;
    xCorners[25] = 5;
    xCorners[26] = -25;
    xCorners[27] = 25;
    //Y coordinates
    yCorners = new int[corners];
    yCorners[0] = 00;
    yCorners[1] = 5;
    yCorners[2] = 00;
    yCorners[3] = -5;
    yCorners[4] = 00;
    yCorners[5] = 00;
    yCorners[6] = 30;
    yCorners[7] = 35;
    yCorners[8] = 35;
    yCorners[9] = 30;
    yCorners[10] = 00;
    yCorners[11] = -30;
    yCorners[12] = -35;
    yCorners[13] = -35;
    yCorners[14] = -30;
    yCorners[15] = 00;
    yCorners[16] = 00;
    yCorners[17] = 5;
    yCorners[18] = 5;
    yCorners[19] = 00;
    yCorners[20] = -5;
    yCorners[21] = -5;
    yCorners[22] = 00;
    yCorners[23] = 30;
    yCorners[24] = 00;
    yCorners[25] = -30;
    yCorners[26] = 00;
    yCorners[27] = 00;
    
    //color
    myColor = color(56, 69, 39);
    
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
}

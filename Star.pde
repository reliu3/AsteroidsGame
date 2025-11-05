class Star //note that this class does NOT extend Floater
{
  private double starX, starY;
  private int starCol;
  
  Star() {
    starX = (Math.random()*(width-49))+50;
    starY = (Math.random()*(height-49))+50;
    starCol = color(116,160,31);
  }
}

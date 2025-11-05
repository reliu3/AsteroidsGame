//your variable declarations here
Spaceship bow = new Spaceship();
//Star grass = new Star[50];


public void setup() 
{
  //your code here
  size(1000,1000);
  background(131,178,44);
  strokeWeight(01);
  //for (int i = 0; i<grass.length; i++){
  //  grass[i]= new Star();
  //  grass[i].show();
  //}
}
public void draw() 
{
  background(131,178,44);
  bow.move();
  bow.show(); 
}

public void keyPressed() {  
  if(keyCode == RIGHT) {
    bow.turn(5);
  }
  if(keyCode == LEFT) {
    bow.turn(-5);
  }
  if(keyCode == UP) {
   bow.accelerate(1.5); 
  }
  
  if(keyCode == DOWN) {
   bow.accelerate(-1.5); 
  }
  
  if(key == ENTER) {
    bow.hyperspace(); 
  }
}

//your variable declarations here
Spaceship bow = new Spaceship();
Star[] grass = new Star[30];

//blobs
ArrayList <Asteroid> blob = new ArrayList <Asteroid>();
int numOfBlobs = 30;
int blobInd = 0;

public void setup() 
{
  //background setup
  size(1000,1000);
  background(131,178,44);
  strokeWeight(01);
  
  //grass initialization
  for (int i = 0; i<grass.length; i++){
    grass[i]= new Star();
  }
  
  //blobs initialization
  for(int i = 0; i<numOfBlobs; i++) {
    blob.add(new Asteroid()); 
  }
  
}
public void draw() 
{
  //backround n grass setup
  background(131,178,44);
  for (int i = 0; i<grass.length; i++){
    grass[i].show();
  }
  
   //bow movement
  bow.move();
  bow.show(); 
  
  
  
  // blob thing
  for(int i = 0; i<blob.size(); i++) {
     blob.get(i).move();
     blob.get(i).show();
     if(dist((float)bow.myCenterX, (float)bow.myCenterY, (float)blob.get(i).myCenterX, (float)blob.get(i).myCenterY) < 20) {
       blob.remove(i);
     }
 
  }
  
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

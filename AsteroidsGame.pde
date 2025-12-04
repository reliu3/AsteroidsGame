//your variable declarations here
Spaceship bow = new Spaceship();
Star[] grass = new Star[30];
ArrayList <Bullet> arrow = new ArrayList <Bullet>();

//blobs
ArrayList <Asteroid> blob = new ArrayList <Asteroid>();
int numOfBlobs = 30;
int blobInd = 0;

public void setup() {
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




public void draw() {
  //backround n grass setup
  background(131,178,44);
  for (int i = 0; i<grass.length; i++){
    grass[i].show();
  }
  
  
  for(int i = 0; i<blob.size(); i++) {
     blob.get(i).move();
     blob.get(i).show();
  }
  
  for(int i = 0; i< arrow.size(); i++) {
    arrow.get(i).move();
    if((arrow.get(i).getX() >= width || arrow.get(i).getX() <= 0) || (arrow.get(i).getY() >= height|| arrow.get(i).getY() <= 0)) {
        arrow.remove(i);
        i--;
      } else {
        for(int j = 0; j < blob.size(); j++) {
           if(dist((float)arrow.get(i).getX(), (float)arrow.get(i).getY(), (float)blob.get(j).getX(), (float)blob.get(j).getY()) < 10*blob.get(j).getSize()) {
             blob.remove(j);
             arrow.remove(i);
             i--;
             break;
           }
            arrow.get(i).show(); 
            
        }
      }
  }
  
  
  //addin arrows
  //for(int i = 0; i<arrow.size(); i++) {
  //    arrow.get(i).move();
  //    if((arrow.get(i).getX() >= width || arrow.get(i).getX() <= 0) || (arrow.get(i).getY() >= height|| arrow.get(i).getY() <= 0)) {
  //      arrow.remove(i);
  //    } else {
  //      arrow.get(i).show();
  //    }  
  //}
  // blob thing
  //for(int i = 0; i<blob.size(); i++) {
  //   blob.get(i).move();
  //   blob.get(i).show();
  //   if(dist((float)bow.getX(), (float)bow.getY(), (float)blob.get(i).getX(), (float)blob.get(i).getY()) < 20*blob.get(i).getSize()) {
  //     blob.remove(i);
  //     i--;
  //   }
  // }
  
  
  if(blob.size() == 0) {
    for(int i = 0; i<numOfBlobs; i++) {
      blob.add(new Asteroid()); 
    }
  }
  
  
  
  //bow movement
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
  
  if(key == ' ' ) {
    arrow.add(new Bullet(bow));
  }
}

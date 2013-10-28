Container objContainer;
PShape rectangle;
PImage backgroundSup, backgroundInf;
void setup(){
  size(1190, 700, P2D);
  
  backgroundSup = loadImage("container.png");
  image(backgroundSup, 55, 50);
  
  backgroundInf = loadImage("container.png");
  image(backgroundInf, 55, 420);
  
  objContainer = new Container(57, 470, 27, 14);
  objContainer.fillItems();
}

void draw(){
    
}

void mouseMoved() {
  objContainer.watchCursor();
}

class ItemContainer{
  private int w_h = 60;
  private int x;
  private int y;
  private int round_corners_px = 5;
  private PImage img, img_ori;
  private color ori_color;
  
  ItemContainer(int x, int y){
    this.x = x;
    this.y = y;
    this.ori_color = color(255,255,0);
    
    this.img = loadImage("letter.png");
    this.img_ori = loadImage("letter.png");
    image(this.img, x, y);
  }
  
  public int getWidth(){
    return this.w_h;  
  }
  
  public int getX(){
    return this.x;  
  }
  
  public int getY(){
    return this.y;  
  }
  
  public PImage getImg(){
    return this.img;
  }
  
  public void repaint(){
    image(this.img, this.x, this.y);
  }
  
  public void restart(){
    image(this.img_ori, this.x, this.y);
  }
}

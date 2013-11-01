class Container {
  private int x_start;
  private int y_start;
  private int x_start_ori;
  private int y_start_ori;
  private int num_items = 12;
  private int breakAt = 6;
  private final ItemContainer[] objItems;
  private final int item_padding_right = 16;
  private final int item_padding_bottom = 50;
  
  Container(int x_start, int y_start, int items, int breakAt){
    this.x_start = x_start;
    this.y_start = y_start;
    
    this.x_start_ori = x_start;
    this.y_start_ori = y_start;
    
    this.num_items = items;
    this.breakAt = breakAt;
    this.objItems = new ItemContainer[num_items];
  }
  
  public void fillItems(){
    ItemContainer objItem;
    for(int i=0; i < num_items; i++){
      objItem = new ItemContainer(this.x_start, this.y_start);
      
      this.objItems[i] = objItem;
      this.x_start += objItem.getWidth() + this.item_padding_right;
      
      /*
       * Break line on breakAt - 1
       */
      if(i == (breakAt - 1)){
        this.y_start = this.y_start_ori + objItem.getWidth() + item_padding_bottom;
        this.x_start = this.x_start_ori;
      }
    }
  }
  
  public void watchCursor(){
    for(int i=0; i < num_items; i++){
      ItemContainer objItem = this.objItems[i];
      
      if(mouseX >= objItem.getX() && mouseX <= (objItem.getX() + objItem.getWidth()) && mouseY >= objItem.getY() && mouseY <= (objItem.getY() + objItem.getWidth())){
        objItem.getImg().filter(GRAY);
        objItem.repaint();
        
        break;
      }
      else{
        objItem.restart();
      }
    }
  }
  
  public ItemContainer watchPressedCursor(){
    ItemContainer item = null;
    
    for(int i=0; i < num_items; i++){
      ItemContainer objItem = this.objItems[i];
      
      if(mouseX >= objItem.getX() && mouseX <= (objItem.getX() + objItem.getWidth()) && mouseY >= objItem.getY() && mouseY <= (objItem.getY() + objItem.getWidth())){
        item = objItem;
        
        break;
      }
    }
    
    return item;
  }
}

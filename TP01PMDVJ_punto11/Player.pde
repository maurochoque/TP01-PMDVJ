class Player{
  PVector pos=new PVector(mouseX,mouseY);
  //PVector posM= new PVector(mouseX+20,mouseY+10);
  Player(){
    
  }
   Player(PVector pos) {
    this.pos = pos;
  }
  
  public void displayPlayer(){
    square(mouseX,mouseY,20);
  }
  
  public void setPos(PVector posN){
    this.pos=posN;
    
  }
  public PVector getPos(){
    return pos;
  }
}


Enemy e;
Player p;//= new Player();
  /*PVector r;
  PVector s;
  PVector rs;*/
void setup(){
  size(600,600);
  //PVector señal= new PVector(mouseX+25,mouseY+25);
  //PVector p= new PVector(mouseX,mouseY);
   //translate(width / 2, height / 2);
   //scale(1, -1);
    /*r= new PVector(width/2,height/2);
    s=new PVector(50,50);
    rs= new PVector(s.x-r.x,s.y-r.y);*/
  
}

void draw(){
  background(255);
  
   /* line(r.x,r.y,s.x,s.y);
   r.x-=0.5;
   r.y-=0.5;
   s.x+=1;
   s.y+=1;;*/
  
   //println(rs.x,rs.y);
   
   p = new Player();
   e = new Enemy();
  //PVector p= new PVector(mouseX,mouseY);
  p.displayPlayer();
  e.display();
  e.caza(p);
  //e.disparar(p);
  //imageMode(CENTER);
  //println(p.getPos().x,p.getPos().y,e.pos.x,e.pos.y);
  //line(mouseX,mouseY,mouseX+50,mouseY);
  //println("holaaaa");
  
}

class Enemy{
  PVector pos= new PVector(width/2,height/2);
  PVector posV= new PVector(pos.x+10,pos.y);
  
  public Enemy(){
    
  }
  public void display(){
   
    fill(255,66,22);
    circle(width/2,height/2,25);
    line(pos.x,pos.y, posV.x,posV.y);
  }
  public void caza(Player presa){
    line(pos.x,pos.y,presa.pos.x,presa.pos.y);
    
    PVector hp = new PVector(presa.pos.x-pos.x, presa.pos.y-pos.y).normalize();
    PVector ca= new PVector(pos.x,pos.y).normalize();
    
    float pp=(hp.x*ca.x+hp.y*ca.y);
    float mhp= hp.mag();
    float mca= ca.mag();
    float a = acos(pp / (mhp * mca));//al estar normalizados hp y ca las magnitudes de mhp y mca son 1, no es necesario, pp  /mhp * mca
    float ag=degrees(a);
    PVector s=new PVector(2,2,1);
    PVector vvv= new PVector(width/2,height/2,0);
    PVector pv= new PVector((s.y*vvv.z-s.z*vvv.y), (s.z*vvv.x-s.x*vvv.z), (s.x*vvv.y-s.y*vvv.x)).normalize();
    pv.z+=2;
    PVector au= new PVector(0,2);
    float angulo=PVector.angleBetween(hp,ca);
    //println(degrees(angulo),ag);
     PVector rota= new PVector(posV.y*hp.z-posV.z*hp.y,posV.z*hp.x-posV.x*hp.z,posV.x*hp.y-posV.y*hp.x).normalize();
     int rotacion =1;
     if(rota.z < 0){
       rotacion=-1;
     }
    //PVector presa = new PVector(presa.getPos().x,presa.getPos().y,presa.getPos().z*angulo*rotacion);
     
     
    if(hp.x > -0.30 && hp.x < 0.30){
      stroke(255,0,0);
      circle(pos.x,pos.y,50);
      au.y+=2;
      float count=frameCount;
      
      
      /*while(pv.z >= presa.pos.y){
      circle(pos.x,pos.y-pv.z,50);
        pv.z++;
      }*/
       //result.x += 10.1; // Puedes ajustar este factor según la velocidad deseada
    //result.y += 10.1;
      //println("ok okok");
      //disparar(presa);
    }
    else{
      stroke(0);
      frameCount=-1;
    }//println(hp);
    //println(hp.x,hp.y);
    /*float ppp= PI/4;
    float pa=degrees(ppp);
    println(ppp,pa);*/
  }

  public PVector getPos(){
    return pos;
  }
  public void setPos(PVector posN){
    this.pos=posN;
  }
}

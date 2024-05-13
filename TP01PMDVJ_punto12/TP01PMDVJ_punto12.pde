PVector player;
PVector enemy;
PImage tank;
void setup(){
  size(600,600);
tank = loadImage("tanke.png");
tank.resize(40, 40);

}

void draw(){
  //rotate(1);
  
  
   background(0);
  
  //translate(width/2,height/2);
  //scale(-1,1);
  rectMode(CENTER);
     
     
    PVector player= new PVector(mouseX,mouseY);
    
    PVector enemy= new PVector(width/2,height/2);
    PVector posE= new PVector(enemy.x+10,enemy.y).normalize();
  //fill();
  square(player.x,player.y,20);
  
  
  imageMode(CENTER);
  image(tank, enemy.x, enemy.y);
  //circle(enemy.x,enemy.y,20);
  PVector posP= new PVector(enemy.x-player.x,enemy.y-player.y).normalize();
  float mgP=posP.mag();
  float mgE = posE.mag();
  line(enemy.x,enemy.y,player.x,player.y);
  line(enemy.x,enemy.y,enemy.x+10,enemy.y);
  float productoP=(posP.x*posE.x + posP.y*posE.y);
  float angulo= acos((productoP)/(mgP*mgE));
  float anguloG= degrees(angulo);
  //float seno= sin(anguloG);
  //float coseno=cos(anguloG);
  //PVector nv= new PVector(player.x-(seno/2),player.y-(coseno/2));
  /*******CALCULO DISTANCIA*********/
  /*float cmx=posE.x-posP.x;
  float cmy=posE.y-posP.y;
  float calculom=sqrt(cmx*cmx+cmy*cmy);*/
  
  float angle2 = atan2(posE.x-posP.x , posE.x- posP.x);
  float angle = atan2(player.y-enemy.y , player.x-enemy.x);
  /*angle += HALF_PI; // Girar 90 grados para que el tanque apunte hacia arriba
  angle *= -1; */
  angle += HALF_PI; //+90 /*constante de processing, no me funciono de otra forma*/
  //angle *= 1; 
  float cx=enemy.x-player.x;
  float cy=enemy.y-player.y;
  float calculo= sqrt(cx*cx+cy*cy);
  //float emer= enemy.dist(player);
  //line(player.x,player.y,nv.x,nv.y);
  
  
  if(calculo < 100){
    stroke(255,1,0);
    /*se tapa el primer tanke*/
    fill(0); 
    rect(enemy.x, enemy.y, tank.width, tank.height); 
    /**/
    
    
    pushMatrix();
  translate(enemy.x, enemy.y);
  rotate(angle);
  imageMode(CENTER);
  image(tank, 0, 0);
  popMatrix();
    //println("OK");
  }
  else{
    stroke(0);
  }
  //println(seno,coseno,mgP,mgE,nv.x,nv.y);
  println(angle,angle2,anguloG);
  
}

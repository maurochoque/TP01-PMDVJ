Vector A;
Vector B;
Vector C;
Vector AB=new Vector();
Vector BA=new Vector();
Vector BC=new Vector();
Vector CB=new Vector();
Vector CBA=new Vector();
Vector ABC=new Vector();
void setup(){
  size(800,600);
  background(255);
  translate(width / 2, height / 2);// traslada el eje de coordenads al centro de la pantalla
  scale(1, -1);// "corrige" el eje Y para que positivo sea hacia arriba 
  A=new Vector();
  A.dibujarVector(new PVector(0,0), new PVector(-10,-20));
  B=new Vector();
  B.dibujarVector(new PVector(0,0), new PVector(40,-10));
  C=new Vector();
  C.dibujarVector(new PVector(0,0), new PVector(50,20));
  
  //AB = new Vector();
  AB=A.sumaV(B);
  AB.dibujarVector(new PVector(A.puntoDestino.x,A.puntoDestino.y),new PVector(AB.puntoDestino.x,AB.puntoDestino.y));
  ///////line(A.puntoDestino.x,A.puntoDestino.y,AB.puntoDestino.x,AB.puntoDestino.y );
  BA=B.sumaV(A);
  BA.dibujarVector(new PVector(BA.puntoDestino.x,BA.puntoDestino.y),new PVector(B.puntoDestino.x,B.puntoDestino.y));
  BC=B.sumaV(C);
  BC.dibujarVector(new PVector(B.puntoDestino.x,B.puntoDestino.y), new PVector(BC.puntoDestino.x,BC.puntoDestino.y));
  CB=C.sumaV(B);
  CB.dibujarVector(new PVector(C.puntoDestino.x,C.puntoDestino.y),new PVector(CB.puntoDestino.x,CB.puntoDestino.y));
  ABC=AB.sumaV(C);
  ABC.dibujarVector(new PVector(AB.puntoDestino.x,AB.puntoDestino.y),new PVector(ABC.puntoDestino.x,ABC.puntoDestino.y));
  CBA=CB.sumaV(A);
  CBA.dibujarVector(new PVector(CB.puntoDestino.x,CB.puntoDestino.y),new PVector(CBA.puntoDestino.x,CBA.puntoDestino.y));
}
void draw(){
  fill(255,0,0);
  strokeWeight(0);
  circle(width/2,height/2,10);//circulo de refenrencia, origen de coordenadas(0,0,0)
  println(A.sumaV(B).puntoDestino.x,A.sumaV(B).puntoDestino.y);
  //println(A.getpDestino().x,A.getpDestino().y,B.getpDestino().x,B.getpDestino().y,AmenosB.getpDestino().x,AmenosB.getpDestino().y); //new PVector(B.getpDestino().x,B.getpDestino().y),new PVector(AmenosB.getpDestino().x,AmenosB.getpDestino().y
  //println(v);
}

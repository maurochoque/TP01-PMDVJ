class Vector{
  
  public PVector puntoOrigen;
  
  public PVector puntoDestino;
  
  public Vector vectorResultado;
  
  public Vector(){
    //new Vector();
  }
  public Vector(PVector origen, PVector destino){
    this.puntoOrigen=new PVector (origen.x,origen.y);//Producto ecalar para visualizar los vectores
    this.puntoDestino=new PVector (destino.x,destino.y);
  }
  
  public void dibujarVector(PVector origen, PVector destino) {
    
    this.puntoOrigen=new PVector (origen.x,origen.y);//Producto ecalar para visualizar los vectores
    this.puntoDestino=new PVector (destino.x,destino.y);
    //stroke(55,66,11);//color de lineas modificar, recibir un color en esta funcion y en el constructor, asignar el color a cada linea
    strokeWeight(2);
    //line(puntoOrigen.x, puntoOrigen.y, puntoDestino.x*10, puntoDestino.y*10);
    line(puntoOrigen.x, puntoOrigen.y, puntoDestino.x, puntoDestino.y);
  }
  
  public Vector sumaV(Vector vectorSumar){
    PVector origen = new PVector(puntoOrigen.x + vectorSumar.puntoOrigen.x, puntoOrigen.y + vectorSumar.puntoOrigen.y);
    PVector destino = new PVector(puntoDestino.x + vectorSumar.puntoDestino.x, puntoDestino.y + vectorSumar.puntoDestino.y);
    return new Vector(origen,destino);
  }
  public Vector restaV(Vector vectorRestar){
    PVector resultOrigen = PVector.sub(vectorRestar.puntoOrigen,puntoOrigen );
    PVector resultDestino = PVector.sub(vectorRestar.puntoDestino,puntoDestino );
    //PVector r= new PVector (resultDestino.x/10,resultDestino.y/10);
   //PVector inicio= new PVector (0,0);
   //PVector r= new PVector((vectorRestar.puntoDestino.x - puntoDestino.x),(vectorRestar.puntoDestino.y - puntoDestino.y)) ;
   //println(r);
    //println(resultDestino);
    
    return new Vector(resultOrigen,resultDestino);
    //return new Vector(r,inicio);
  }
  public PVector getpOrigen(){
    return this.puntoOrigen;
  }
  public void setpOrigen(PVector setV){
    this.puntoOrigen=setV;
  }
   public PVector getpDestino(){
    return this.puntoDestino;
  }
  public void setpDestino(PVector setV){
    this.puntoDestino=setV;
  }
 
}

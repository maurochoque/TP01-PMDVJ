PVector posPelota;
PVector velPelota;
float tamPelota = 20;
float piso;

void setup() {
  size(400, 400);
  float anx= random(0,height);
  posPelota = new PVector(anx, anx);
  velPelota = new PVector(3, 5);
  piso = height;
}

void draw() {
  background(255);
  
 
  posPelota.add(velPelota);
  if(posPelota.x+tamPelota/2 > width ){
    PVector vN = new PVector(-1, 0);
    
    float pp = velPelota.dot(vN);//producto Punto  vector noraml de suelo y vector de velocidad
    
    PVector resRefle = PVector.sub(velPelota, PVector.mult(vN, 2 * pp));
    
    velPelota.set(resRefle);
  }
  if (posPelota.y + tamPelota / 2 >= piso) {
    PVector vN = new PVector(0, -1);
    
    float pp = velPelota.dot(vN);
    
    PVector resRefle = PVector.sub(velPelota, PVector.mult(vN, 2 * pp));
    
    velPelota.set(resRefle);
  }
  
  if (posPelota.y + tamPelota / 2 <= 0) {
    PVector vN = new PVector(0, 1);
    
    float pp = velPelota.dot(vN);
    
    PVector resRefle = PVector.sub(velPelota, PVector.mult(vN, 2 * pp));
    
    velPelota.set(resRefle);
  }
  if (posPelota.y + tamPelota / 2 <= 0) {
    PVector vN = new PVector(1,0.5);
    
    float pp = velPelota.dot(vN);
    
    // Calcular la reflexión de la velocidad de la pelota
    PVector resRefle = PVector.sub(velPelota, PVector.mult(vN, 2 * pp));
        velPelota.set(resRefle);
  } 
  if (posPelota.x + tamPelota / 2 <= 0) {
    
    PVector vN = new PVector(1,-0.0005);//
    
    float pp = velPelota.dot(vN);
    
    
    PVector resRefle = PVector.sub(velPelota, PVector.mult(vN, 2 * pp));
    
    
    velPelota.set(resRefle);
  }
   
  
  ellipse(posPelota.x, posPelota.y, tamPelota, tamPelota);
}

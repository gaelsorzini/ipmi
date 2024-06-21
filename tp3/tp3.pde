//Gael sorzini
// https://youtu.be/veiGWUh3Pcg
PImage obra;
int columnas = 8;
int filas=8;
int tam;
void setup() {
  size(800, 400);
  obra = loadImage("obra.png");
}
void draw() {
  background(255);
  tam = width/columnas;
  for (int i=columnas/2; i<columnas; i++) {
    for (int j=0; j<filas; j++) {
     float x = i * tam;
     float y = j * tam;
     float distancia= dist(mouseX,mouseY,x,y);
     float tono= distancia*255/dist(width,height,600,200);
     float tamaño = map(mouseX,0, width, 100, columnas);
      if ((i+j)%2==0) {
        fill(255, 255, 255,tono);
       rect(x, y, tam, tam);
        fill(51,95,222,tono);
       ellipse(x+tam/2, y+tam/2, tamaño, tamaño);
        fill(255,255,255,tono);
        ellipse(x+tam/2, y+tam*0.6, tam*0.7, tam*0.7);
      } else {
      fill(51,95,222,tono);
        rect(i*tam, j*tam, tam, tam);
        fill(255,255,255,tono);
        ellipse(x+tam/2, y+tam/2, tamaño, tamaño);
        fill(51,95,222,tono);
        ellipse(x+tam/2, y+tam*0.6, tam*0.7, tam*0.7); 
      }
    }
  }
 image(obra,0,0,400,400);}

void keyPressed(){
  columnas=8;
}
void mousePressed(){
  columnas++;}

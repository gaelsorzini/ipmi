// Sorzini Gael 
PImage imagen1, imagen2, imagen3, imagen4;
PFont fuente;
int py;
String resumen;
String estado;
String creditos;
int segundos;
int diametro;
void setup(){
  size(640,480);
  fuente=loadFont("starwars.vlw");
  textFont(fuente);
  textSize(36);
  imagen3 = loadImage("imagen3.png");
  imagen2 = loadImage("imagen2.png");
  imagen4 = loadImage("imagen4.png");
  py=height;
  resumen="Episode III \n\n REVENGE OF THE SITH \n\n War! The Republic crumbles under the attacks of ruthless Count Dooku, sir of the Sith. There are heroes in  both sides. The evil is for everywhere \n\n In a bold move, the diabolical droid leader, general Grievous, has entered the capital of the Republic and kidnapped the chancellor Palpatine, leader of the Senate Galactic. \n\n While the Droid Army Separatist tries to flee besieged capital with its valuable hostage, two gentlemen Jedi lead a mission desperate to rescue to the captive chancellor..."; 
  estado ="titulo";
  creditos="Written and Directed by \n GEORGE LUCAS \n\n Produced by \n RICK McCALLUM \n\n Executive Producer \n GEORGE LUCAS \n\n Production Designer \n GAVIN BOCQUET \n\n Edited by \n ROGER BARTON \n and \n BEN BURT \n\n Music by \n JOHN WILLIAMS";
  diametro= width/7;
 }
 
 
 void draw(){
  if (estado.equals("titulo")) {
 push();
  image(imagen4,0, 0, width, height); 
  textAlign(CENTER);
  fill(30,170,220,mouseX);
  text("A long time ago in a galaxy far,\n far away....", width/2, height/2);
pop();
}
  else if(estado.equals("segunda")) {
  image(imagen2,0, 0, width, height); 
  float tono= map(py,height,250, 255, 250);
  textAlign(CENTER);
  fill(217,173,23,tono);
  text(resumen,100, py,440,1350);
  py-=2;
 
}
   else if (estado.equals("tercera")) {
     push();
   image(imagen3,0, 0, width, height);
   textSize(26);
   textAlign(CENTER,CENTER);
   fill(217,173,23,mouseY);
   text(creditos,315,125);
   fill(255,128,0);
   circle(550,402,diametro);
   fill(0,0,0);
   textSize(20);
   text("Reiniciar",550,402 );
   pop();
}
 if (frameCount%60 == 0) {
    segundos++;
  }
  if (segundos<3) {
    estado = "titulo";
  } else if (segundos>=5 && segundos<= 19) {
    estado = "segunda";
  } else if (segundos > 19 && segundos <27) {
    estado = "tercera";
 } } 
 
  void mousePressed() {
 if (estado == "tercera"){
 estado = "inicio";}
  if (dist(mouseX, mouseY, 550, 402) < diametro/2) {
  estado = "titulo";
  segundos = 0;}
  py=height;}
 

 

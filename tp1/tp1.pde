// sorzini gael
// tp1 comision n°1
PImage chancho;
void setup(){
 size(800,400);
 background(70,130,180);
 chancho = loadImage("chanchito.png");
 }
void draw(){
image(chancho,30,70,300,300);
fill(225,160,189);
ellipse(395,250,168,190);
fill(223,95,125);
circle(349,75,25);
circle(439,75,25);
fill(225,160,189);
circle(394,132,132);
fill(255,255,255);
ellipse(371,108,25,40);
ellipse(415,108,25,40);
fill(0,0,0);
ellipse(371,108,10,18);
ellipse(415,108,10,18);
fill(237,95,138);
ellipse(394,145,40,25);
fill(0,0,0);
ellipse(386,145,5,11);
ellipse(402,145,5,11);
line(360,210,365,222);
line(365,222,370,213);
line(370,213,375,222);
line(375,222,380,210);
line(430,210,425,222);
line(425,222,420,213);
line(420,213,415,222);
line(415,222,410,210);
line(360,311,365,323);
line(365,323,370,314);
line(370,314,375,323);
line(375,323,380,311);
line(405,311,410,323);
line(410,323,415,315);
line(415,314,420,323);
line(420,323,425,311);
println("X:");
println(mouseX);
println("Y:");
}

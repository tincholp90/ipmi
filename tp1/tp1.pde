void setup() {
  size(800, 400);
}

void draw() {
  background(170); // Fondo gris
  
  println(mouseX);
  println("X:");
  println(mouseY);
  println("Y:");
  // Imagen de Gatito
  PImage img = loadImage("sombra.jpg"); // Carga tu propia imagen
  image(img, 400, 0, 400, 400);
  
  // Dibujo del TP
  fill(28,38,15);
  rect(105,1,200,600);
  
  //cabeza del gato
  noStroke();
  fill(0,0,0);
  ellipse(200,410,400,430);
  //orejas del gato
  fill(0,0,0);
  triangle(20,314,10,115,192,252);
  triangle(351,40,241,205,351,273);
  fill(199,166,159);
  triangle(29,306,21,131,120,209);
  triangle(347,59,252,200,343,255);
  
  // ojos del gato
  //ojo izquierdo
  fill(255,255,255);
  ellipse(116,315,55,45);
  fill(255,255,114);
  ellipse(111,315,55,55);
  fill(0,102,104);
  ellipse(111,315,35,55);
  fill(255,255,255);
  ellipse(111,315,10,15);
  
  //ojo derecho
  fill(255,255,255);
  ellipse(255,301,55,45);
  fill(255,255,114);
  ellipse(260,301,55,55);
  fill(0,102,104);
  ellipse(260,301,35,55);
  fill(255,255,255);
  ellipse(260,301,10,15);
  
  //Nariz
  fill(100,100,100);
  rect(160,285,50,59);
  ellipse(186,364,35,25);
  fill(150,150,150);
  rect(173,300,20,35);
  //bigotes
  stroke(255,255,255);
  line(219,354,250,345);
  line(242,357,333,345);
  line(234,362,370,356);
  line(244,362,352,365);
  line(250,366,355,370);
  line(250,366,365,380);
   line(250,372,365,385);
   line(237,369,363,399);
//lo que se atraviesa
  noStroke();
  fill(255,255,255);
  triangle(0,344,0,400,400,400);
  

}

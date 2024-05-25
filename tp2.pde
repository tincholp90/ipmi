PImage[] fondosPant;
String[] descripcionesPant;
int pantAhora = 0;
int cantPantallas = 3;
boolean presente = false;
int duracionTransicion = 5000; 
int tiempoInicioTransicion;

void setup() {
  size(640, 480);
  fondosPant = new PImage[cantPantallas];
  descripcionesPant = new String[cantPantallas];
  
  fondosPant[0] = loadImage("goku.jpg");
  descripcionesPant[0] = "Goku: El protagonista de Dragon Ball Z";
  
  fondosPant[1] = loadImage("vegeta.jpg");
  descripcionesPant[1] = "Vegeta: El príncipe de los Saiyajins";
  
  fondosPant[2] = loadImage("gohan.jpg");
  descripcionesPant[2] = "Gohan: El hijo mayor de Goku";
  
  textAlign(CENTER, CENTER);
  tiempoInicioTransicion = millis();
}

void draw() {
  if (presente) {
    background(0);
    image(fondosPant[pantAhora], 0, 0, width, height);
    fill(255);
    
    float tiempoTranscurrido = millis() - tiempoInicioTransicion;
    float progresoAnimacion = tiempoTranscurrido / (float)duracionTransicion;

    switch(pantAhora) {
      case 0:
        pGoku(progresoAnimacion);
        break;
      case 1:
        pVegeta(progresoAnimacion);
        break;
      case 2:
        pGohan(progresoAnimacion);
        break;
    }

    if (tiempoTranscurrido >= duracionTransicion) {
      avanzarPantalla();
    }
  } else {
    BotonInicio();
  }
}

void pGoku(float progresoAnimacion) {
  float posicionY = map(progresoAnimacion, 0, 1, height, height - 50);
  textSize(20);
  text(descripcionesPant[0], width / 2, posicionY);
}

void pVegeta(float progresoAnimacion) {
  float tamañoTexto = map(progresoAnimacion, 0, 1, 10, 24);
  textSize(tamañoTexto);
  text(descripcionesPant[1], width / 2, height - 50);
}

void pGohan(float progresoAnimacion) {
  int opacidadTexto = (int)map(progresoAnimacion, 0, 1, 0, 255);
  fill(255, 255, 255, opacidadTexto);
  text(descripcionesPant[2], width / 2, height - 50);
}

void BotonInicio() {
  background(0);
  fill(200, 0, 0);
  rect(width / 2 - 50, height / 2 - 20, 100, 40);
  fill(255);
  text("Iniciar", width / 2, height / 2);
}

void BotonReinicio() {
  fill(200, 0, 0);
  rect(width - 120, height - 40, 100, 30);
  fill(255);
  text("Reiniciar", width - 70, height - 25);
}

void avanzarPantalla() {
  if (pantAhora == cantPantallas - 1) {
    BotonReinicio();
  } else {
    pantAhora = (pantAhora + 1) % cantPantallas;
    tiempoInicioTransicion = millis();
  }
}

void mousePressed() {
  if (presente) {
    if (pantAhora == cantPantallas - 1 && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 40 && mouseY < height - 10) {
      reiniciarPresentacion();
    }
  } else {
    if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 - 20 && mouseY < height / 2 + 20) {
      iniciarPresentacion();
    }
  }
}

void iniciarPresentacion() {
  presente = true;
  tiempoInicioTransicion = millis();
}

void reiniciarPresentacion() {
  pantAhora = 0;
  tiempoInicioTransicion = millis();
}

PImage img1, img2, img3, img4;
int pantalla = 0;
int anchoBoton = 100;
int altoBoton = 50;
int botonX;
int botonY;
int tiempoEntreImagenes = 420;
int tamFont = 20; 
int alpha = 0; 
PFont customFont;
int posX;
float escala = 0.5; 
boolean aumentando = true; 

void setup() {
  size(640, 480);
 
  img1 = loadImage("Goku 1.jpeg");
  img2 = loadImage("Goku 2.jpeg");
  img3 = loadImage("Goku 3.jpeg");
  img4 = loadImage("Goku 4.jpg");
  
  botonX = width - anchoBoton - 10; 
  botonY = height - altoBoton - 10;
  
  frameRate(60);
  customFont = loadFont("FranklinGothic-Heavy-23.vlw");
  textFont(customFont);
  
  posX = width + 300; 
}

void draw() {
  background(255);
  textAlign(CENTER, CENTER); 
  textSize(20);
  fill(0, 245, 255); 
  
  if (pantalla == 0) {
    image(img1, 0, 0, width, height);
    posX -= 3; 
    if (posX < -300) posX = width + 300; 
    text("Dragon Ball Z sigue las aventuras de Goku, ahora adulto,\n mientras defiende \n la Tierra de poderosos enemigos.\n La serie comienza con la llegada de Raditz, \n quien revela que Goku es un Saiyajin,\n seguido por la invasión de los Saiyajines Nappa y Vegeta.\n Después de derrotarlos,\n Goku y sus amigos viajan al planeta Namek \n para enfrentarse al tirano Freezer.\n Goku se transforma en Super Saiyajin y \n derrota a Freezer en una batalla épica", posX, height / 2);
  } else if (pantalla == 1) {
    image(img2, 0, 0, width, height);
    alpha += 2; 
    if (alpha > 255) alpha = 255; 
    fill(255, 3, 226, alpha); 
    text("La serie continúa con la aparición de los androides y Cell, \n un bioandroide que busca la perfección. Gohan, \n el hijo de Goku, se convierte en el héroe y \n derrota a Cell tras una feroz batalla.", width / 2, height / 2);
  } else if (pantalla == 2) {
    image(img3, 0, 0, width, height);
    escala += 0.01; 
    if (escala > 1.5) escala = 0.5; 
    pushMatrix();
    translate(width / 2, height / 2);
    scale(escala);
    fill(5, 255, 3);
    text("Finalmente, la saga de Majin Buu presenta a un enemigo \n casi imbatible, pero Goku, \n Vegeta y otros guerreros Z trabajan \n juntos para destruirlo. Con Buu derrotado, \n la paz se restaura y la serie \nconcluye con un futuro esperanzador para la Tierra", 0, 0);
    popMatrix();
  } else if (pantalla == 3) {
    image(img4, 0, 0, width, height);
    textSize(tamFont);
    fill(255,0,0);
    text("FIN \n Reinicia por Goku", width / 2, height / 2);
    if (aumentando) {
      tamFont += 2;
      if (tamFont > 60) aumentando = false;
    } else {
      tamFont -= 2;
      if (tamFont < 30) aumentando = true;
    }
    
    fill(200);
    rect(botonX, botonY, anchoBoton, altoBoton);
    fill(0);
    textSize(16);
    textAlign(CENTER, CENTER);
    text("Reiniciar", botonX + anchoBoton / 2, botonY + altoBoton / 2);
  }
  
  if (frameCount % tiempoEntreImagenes == 0 && pantalla < 3) {
    pantalla++;
    posX = width + 300; 
    alpha = 0; 
    escala = 0.5;
    tamFont = 20; 
    aumentando = true;  
  }
}

void mousePressed() {
  if (pantalla == 3) {
    if (mouseX > botonX && mouseX < botonX + anchoBoton && 
        mouseY > botonY && mouseY < botonY + altoBoton) {
      reiniciar();
    }
  }
}

void reiniciar() {
  pantalla = 0;
  frameCount = 0;
  posX = width + 300;
  alpha = 0; 
  escala = 0.5; 
  tamFont = 20; 
  aumentando = true; 
}

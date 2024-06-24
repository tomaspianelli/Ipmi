PImage img;

void setup() {
  size(800, 400); 
  img = loadImage("obra.jpg"); 
}

void draw() {
  background(103, 119, 119);
  image(img, 0, 0, 400, 400); // Mostrar la imagen en la parte izquierda del canvas

  // Dibujar la cuadrícula sobre la imagen
  for (int i = 20; i < 100; i++) {
    for (int j = 0; j < 100; j++) {
      if ((i + j) % 2 == 0) {
        noFill();
      } else {
        fill(255, 0, 0);
      }
      rect(i * 20, j * 20, 20, 20);
      fill(0);
      text(i + "," + j, i * 20 + 10, j * 20 + 15);
    }
  }
}

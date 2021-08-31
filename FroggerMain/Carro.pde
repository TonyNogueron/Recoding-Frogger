class Carro {
  float x, y, b, h, speed;
  int pic;
  PImage img1, img2, img3, img4, img5, img6, img7;


  Carro(float _x, float _y, float _b, float _h, float s, int num) {
    x = _x;
    y = _y;
    b = _b;
    h = _h;
    speed = s;
    pic = num;
    img1 = loadImage("carro2derecha.png");
    img2 = loadImage("camion3izquierda.png");
    img3 = loadImage("camion4derecha1.png");
    img4 = loadImage("carro2izq.png");
    img5 = loadImage("camion3derecha.png");
    img6 = loadImage("carro2izquierda.png");
    img7 = loadImage("camion4derecha2.png");
  }

  void mueve() {
    x += speed;

    if (speed > 0 && x > width + 400) {
      x = -200;
    } else if (speed < 0 && x < -700) {
      x = width + 250;
    }
  }

  void setPos(float _x){
    x = _x;
  }
  
  void setSpeed(float s){
    speed = s;
  }

  void dibuja() {
    switch (pic) {
    case 1:
      image(img1, x, y);
      break;
    case 2:
      image(img2, x, y);
      break;
    case 3:
      image(img3, x, y);
      break;
    case 4:
      image(img4, x, y);
      break;
    case 5:
      image(img5, x, y);
      break;
    case 6:
      image(img6, x, y);
      break;
    case 7:
      image(img7, x, y);
      break;
    }
  }

  
}

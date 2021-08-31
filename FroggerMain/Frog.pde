
class Frog {
  float x, y, b, h;
  int skin;
  PImage frog, frog1, frog2;
  Frog(float _x, float _y, float _b, float _h, int s) {
    x = _x;
    y = _y;
    b = _b;
    h = _h;
    skin = s;
    frog = loadImage("frog.png");
    frog1 = loadImage("frog2.png");
    frog2 = loadImage("frog3.png");
  }

  void mover(float horizontal, float  vertical) {
    
      x += horizontal * cuadro;
      if (x >= width){
        x = width - cuadro;
      }
       if (x < 0 ){
        x = 0;
      }
      y += vertical * cuadro;
      if (y + cuadro >= height){
        y = height - cuadro;
      }
       if (y < 0 ){
        y = 0;
      }
  }


  boolean atropellada(Carro carro) {

    float izquierda = x;
    float derecha = x + b;
    float arriba = y;
    float abajo = y + h;

    float otra_izquierda = carro.x;
    float otra_derecha = carro.x + carro.b;
    float otra_arriba = carro.y;
    float otra_abajo = carro.y + carro.h;

    return !(izquierda >= otra_derecha ||
      derecha <= otra_izquierda ||
      arriba >= otra_abajo ||
      abajo <= otra_arriba);
  }


  void dibuja() {
    switch (skin) {
     case 0: 
     image(frog, x, y);
     break;
     case 1: 
     image(frog1, x, y);
     break;
     case 2: 
     image(frog2, x, y);
     break;
    }
    
  }

  float getx(){
   return x; 
  }
  float gety(){
   return y; 
  }

  boolean choca() {

    return (true);
  }
}

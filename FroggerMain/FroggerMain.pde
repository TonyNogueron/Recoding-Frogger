
Frog rana;
Carro[] carros;

float cuadro = 50;
int score = 0;
int screen, skin;
int vidas;
PImage nido, menu, creditos;
boolean lvl2, jugable;

boolean nido1, nido2, nido3, nido4, nido5, nido6, nido7, nido8, nido9, nido10;


void ranaabajo() {
  rana = new Frog(width/2-cuadro/2, height-cuadro, cuadro, cuadro, skin);
}



void setup() {
  size(1050, 500);
  ranaabajo();
  score = 0;
  skin = 0;
  screen = 2;
  vidas = 3;
  int j = 0;
  lvl2 = false;
  jugable = true;
  resetnidos();

  carros = new Carro[32];
  nido = loadImage("nido.png");
  menu = loadImage("menu.png");
  creditos = loadImage("creditos.png");

  //Primera Columna
  for (int i = 0; i < 5; i++) {
    float x = i * 250+20;
    carros[j] = new Carro(x, height-cuadro*2, cuadro*2, cuadro, 1, 1);
    j++;
  }
  //Segunda Columna
  for (int i = 0; i < 5; i++) {
    float x = i * 350 + 200;
    carros[j] = new Carro(x, height-cuadro*3, cuadro*3, cuadro, -1.5, 2);
    j++;
  }
  //Tercera Columna
  for (int i = 0; i < 5; i++) {
    float x = i * 600 + 600;
    carros[j] = new Carro(x, height-cuadro*4, cuadro*4, cuadro, 2, 3);
    j++;
  }
  //Cuarta Columna
  for (int i = 0; i < 5; i++) {
    float x = i * 550 + 260;
    carros[j] = new Carro(x, height-cuadro*5, cuadro*2, cuadro, -2.1, 4);
    j++;
  }
  //Quinta Columna
  for (int i = 0; i < 5; i++) {
    float x = i * 450 + 380;
    carros[j] = new Carro(x, height-cuadro*6, cuadro*3, cuadro, 3, 5);
    j++;
  }
  //Sexta Columna
  for (int i = 0; i < 3; i++) {
    float x = i * 500 + 220;
    carros[j] = new Carro(x, height-cuadro*8, cuadro*2, cuadro, -4, 6);
    j++;
  }
  //Octava Columna
  for (int i = 0; i < 4; i++) {
    float x = i * 800 + 220;
    carros[j] = new Carro(x, height-cuadro*9, cuadro*4, cuadro, 0.5, 7);
    j++;
  }
}

void resetnidos() {
  boolean nido1 = false;
  boolean nido2 = false;
  boolean nido3 = false;
  boolean nido4 = false;
  boolean nido5 = false;
  boolean nido6 = false;
  boolean nido7 = false;
  boolean nido8 = false;
  boolean nido9 = false;
  boolean nido10 = false;
}

void level2() {
  int j = 0;
  //Primera Columna
  for (int i = 0; i < 5; i++) {
    float x = i * 250+20;
    carros[j].setPos(x);
    carros[j].setSpeed(1);
    j++;
  }
  //Segunda Columna
  for (int i = 0; i < 5; i++) {
    float x = i * 350 + 200;
    carros[j].setPos(x);
    carros[j].setSpeed(-4);
    j++;
  }
  //Tercera Columna
  for (int i = 0; i < 5; i++) {
    float x = i * 600 + 600;
    carros[j].setPos(x);
    carros[j].setSpeed(2.2);
    j++;
  }
  //Cuarta Columna
  for (int i = 0; i < 5; i++) {
    float x = i * 550 + 260;
    carros[j].setPos(x);
    carros[j].setSpeed(-5);
    j++;
  }
  //Quinta Columna
  for (int i = 0; i < 5; i++) {
    float x = i * 450 + 380;
    carros[j].setPos(x);
    carros[j].setSpeed(5.5);
    j++;
  }
  //Sexta Columna
  for (int i = 0; i < 3; i++) {
    float x = i * 500 + 220;
    carros[j].setPos(x);
    carros[j].setSpeed(-12);
    j++;
  }
  //Octava Columna
  for (int i = 0; i < 4; i++) {
    float x = i * 800 + 220;
    carros[j].setPos(x);
    carros[j].setSpeed(1.5);
    j++;
  }
  resetnidos();
}

void nidos() {
  if (nido1 == false) {
    image(nido, cuadro*2, 0, 50, 50);
  } else if (nido1 == true) {
    tint(#0376FF);
    image(nido, cuadro*2, 0, 50, 50);
    noTint();
  }
  if (nido2 == false) {
    image(nido, cuadro*6, 0, 50, 50);
  } else if (nido2 == true) {
    tint(#0376FF);
    image(nido, cuadro*6, 0, 50, 50);
    noTint();
  }
  if (nido3 == false) {
    image(nido, cuadro*10, 0, 50, 50);
  } else if (nido3 == true) {
    tint(#0376FF);
    image(nido, cuadro*10, 0, 50, 50);
    noTint();
  }
  if (nido4 == false) {
    image(nido, cuadro*14, 0, 50, 50);
  } else if (nido4 == true) {
    tint(#0376FF);
    image(nido, cuadro*14, 0, 50, 50);
    noTint();
  }
  if (nido5 == false) {
    image(nido, cuadro*18, 0, 50, 50);
  } else if (nido5 == true) {
    tint(#0376FF);
    image(nido, cuadro*18, 0, 50, 50);
    noTint();
  }
}
void nidos2() {
  if (nido6 == false) {
    image(nido, cuadro*2, 0, 50, 50);
  } else if (nido6 == true) {
    tint(#0376FF);
    image(nido, cuadro*2, 0, 50, 50);
    noTint();
  }
  if (nido7 == false) {
    image(nido, cuadro*6, 0, 50, 50);
  } else if (nido7 == true) {
    tint(#0376FF);
    image(nido, cuadro*6, 0, 50, 50);
    noTint();
  }
  if (nido8 == false) {
    image(nido, cuadro*10, 0, 50, 50);
  } else if (nido8 == true) {
    tint(#0376FF);
    image(nido, cuadro*10, 0, 50, 50);
    noTint();
  }
  if (nido9 == false) {
    image(nido, cuadro*14, 0, 50, 50);
  } else if (nido9 == true) {
    tint(#0376FF);
    image(nido, cuadro*14, 0, 50, 50);
    noTint();
  }
  if (nido10 == false) {
    image(nido, cuadro*18, 0, 50, 50);
  } else if (nido10 == true) {
    tint(#0376FF);
    image(nido, cuadro*18, 0, 50, 50);
    noTint();
  }
}

void vidas() {
  textSize(25);
  fill(255);
  text("Vidas:"+vidas, width - 2*cuadro, height - cuadro/4);
  if (vidas == 0) {
    textSize(100);
    text("¡Derrota!", width/2-200, height/2);
    ranaabajo();
    jugable = false;
    textSize(20);      
    text("Presiona C para ver los créditos", 380, 310);
  }
  if (rana.gety() == 0) {
    if (rana.getx() == cuadro*0 ||rana.getx() == cuadro*1 ||rana.getx() == cuadro*3 ||rana.getx() == cuadro*4 ||
      rana.getx() == cuadro*5 ||rana.getx() == cuadro*7 ||rana.getx() == cuadro*8 ||rana.getx() == cuadro*9 ||rana.getx() == cuadro*11 ||
      rana.getx() == cuadro*12 ||rana.getx() == cuadro*13 ||rana.getx() == cuadro*15 ||rana.getx() == cuadro*16 ||rana.getx() == cuadro*17 ||
      rana.getx() == cuadro*19 ||rana.getx() == cuadro*20) {
      vidas --;
      ranaabajo();
    }
  }
}

void score() {
  if (rana.getx() == cuadro*2 && rana.gety() == 0 && nido1 == false) {
    score += 100;
    nido1 = true;
    ranaabajo();
  } 
  if (rana.getx() == cuadro*6 && rana.gety() == 0 && nido2 == false) {
    score += 100;
    nido2 = true;
    ranaabajo();
  }
  if (rana.getx() == cuadro*10 && rana.gety() == 0 && nido3 == false) {
    score += 100;
    nido3 = true;
    ranaabajo();
  }
  if (rana.getx() == cuadro*14 && rana.gety() == 0 && nido4 == false) {
    score += 100;
    nido4 = true;
    ranaabajo();
  }
  if (rana.getx() == cuadro*18 && rana.gety() == 0 && nido5 == false) {
    score += 100;
    nido5 = true;
    ranaabajo();
  }
  if (lvl2 == true) {
    if (rana.getx() == cuadro*2 && rana.gety() == 0 && nido6 == false) {
      score += 100;
      nido6 = true;
      ranaabajo();
    }
    if (rana.getx() == cuadro*6 && rana.gety() == 0 && nido7 == false) {
      score += 100;
      nido7 = true;
      ranaabajo();
    }
    if (rana.getx() == cuadro*10 && rana.gety() == 0 && nido8 == false) {
      score += 100;
      nido8 = true;
      ranaabajo();
    }
    if (rana.getx() == cuadro*14 && rana.gety() == 0 && nido9 == false) {
      score += 100;
      nido9 = true;
      ranaabajo();
    }
    if (rana.getx() == cuadro*18 && rana.gety() == 0 && nido10 == false) {
      score += 100;
      nido10 = true;
      ranaabajo();
    }
  }
  textSize(25);
  fill(255);
  text("SCORE:"+score, 5, height - cuadro/4);

  if (score == 500 && lvl2 == false) {
    score = 0;
    level2();
    lvl2 = true;
    ranaabajo();
  } else if (score == 500 && lvl2 == true) {
    textSize(100);
    text("¡Victoria!", width/2-200, height/2);
    jugable = false;
    textSize(20);      
    text("Presiona C para ver los créditos", 380, 310);
  }
}





void draw() {
  background(0);

  switch(screen) {
  case 0:
    skin();
    break;
  case 1:
    fill(#3B88FF);
    rect(0, 0, width, cuadro);
    fill(255, 100);
    rect(0, height-cuadro, width, cuadro);
    rect(0, height-cuadro*7, width, cuadro);

    for (int i = 0; i < 32; i++) {
      carros[i].mueve();
      carros[i].dibuja();
      if (rana.atropellada(carros[i])) {
        ranaabajo();
        vidas --;
      }
    }
    if (lvl2 == false) {
      nidos();
    } else {
      nidos2();
    }
    score();
    vidas();
    rana.dibuja();
    break;
  case 2:
    image(menu, 0, 0);
    if (key == 's') {
      screen = 0;
    } 
    if (key == 'w') {
      screen = 1;
      ranaabajo();
    }
    break;
  case 3:
    image(creditos, 0, 0);
    break;
  }

  if (key == 'c' && jugable == false) {
    screen = 3;
  }
}


void keyPressed() {
  if (jugable == true) {
    switch(keyCode) {
    case UP:
      rana.mover(0, -1);
      break;
    case DOWN:
      rana.mover(0, 1);
      break;
    case LEFT:
      rana.mover(-1, 0);
      break;
    case RIGHT:
      rana.mover(1, 0);
      break;
    }
  }
}

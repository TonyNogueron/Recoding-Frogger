void skin() {
  fill(0);
  rect(0,0,width, height);
  fill(#C5A2FF);
  textSize(100);
  text("SKINS",400, 100);
  
  PImage frog1, frog2, frog3;
  frog1 = loadImage("frog.png");
  frog2 = loadImage("frog2.png");
  frog3 = loadImage("frog3.png");
  textSize(30);      
  text("Presiona la tecla para seleccionar tu skin", 250, 140);
  textSize(20);      
  text("Presiona M para volver al menú", 380, 180);
  
  image(frog1, 100, 250, 100,100);
  image(frog2, width/2-50, 250, 100,100);
  image(frog3, width -200, 250, 100,100);

  
  if (key == 'a' && screen == 0){
  textSize(50); 
  fill(#F574FF);
  text("A", 140, 450); 
  skin = 0;
  } else {
  textSize(50); 
  fill(#F7F7F7);
  text("A", 140, 450); 
  }
  if (key == 'b' && screen == 0){
  textSize(50); 
  fill(#F574FF);
  text("B",  width/2-10, 450); 
  skin = 1;
  } else {
  textSize(50); 
  fill(#F7F7F7);
  text("B",  width/2-10, 450); 
  }
  if (key == 'c' && screen == 0){
  textSize(50); 
  fill(#F574FF);
  text("C", 880, 450); 
  skin = 2;
  } else {
  textSize(50); 
  fill(#F7F7F7);
  text("C", 880, 450); 
  }
  if (key == 'm'){
   screen = 2;
  }
}

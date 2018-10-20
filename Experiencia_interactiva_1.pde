
PImage fondo1, fondo2, forma1, forma2, forma3, forma4;


void setup () {
  size (1366, 2000);

  fondo1 = loadImage ("fondo 1.jpg");
  fondo2 = loadImage ("fondo gris.jpg");


  image (fondo2, 0, 0, width, 500);   
  image (fondo1, 0, 500, width, 1000);
  image (fondo1, 0, 1500, width, 1000);
  
  forma1 = loadImage ("capa_0002.png");
  forma2 = loadImage ("capa_0003.png");
  forma3 = loadImage ("capa_0004.png");
  forma4 = loadImage ("capa_0006.png");
  
  
  rectMode(CENTER);
  
}


void draw () {
}

void keyPressed () {
  
  if (key == ' '){
  
  image (fondo2, 0, 0, width, 500);   
  image (fondo1, 0, 500, width, 1000);
  image (fondo1, 0, 1500, width, 1000);
  
  }

//    PARTE GRIS

if (frameCount < 1600) {
  if (mouseY<500-50) {
    if (keyPressed) { 
      pushMatrix();
      stroke(0);
      fill (100);
      rect (mouseX, mouseY, 100, 100);
      popMatrix();
    }
  }
} else if (frameCount > 1600 && frameCount < 4000) {
  if (mouseY<500-50) {
    if (keyPressed) { 
      pushMatrix();
      stroke(0);
      fill (255,0,0);
      rect (mouseX, mouseY, 100, 100);
      popMatrix();
    }
  }
}



//     VARIEDAD 1
  if (mouseY>=500 && mouseY<=1000) {

    if (key == 'a') {
      fill (0);
      rect (mouseX, mouseY, random (5, 100), random (5, 100));
    }
    if (key == 's') {
      pushMatrix();
      noStroke();
      fill (255);    
      rect (mouseX, mouseY, random (5, 100), random (5, 100));
      popMatrix();
    }
    if (key == 'd') {
      pushMatrix();
      stroke(0);
      fill (255);
      rect (mouseX, mouseY, random (5, 100), random (5, 100));
      popMatrix();
    }
    if (key == 'f') {
      image (forma1, mouseX, mouseY, random (5, 100), random (5, 100));      
    }
    if (key == 'g') {
      image (forma2, mouseX, mouseY, random (5, 100), random (5, 100));      
    }
    if (key == 'h') {
      image (forma3, mouseX, mouseY, random (5, 100), random (5, 100));      
    }
    if (key == 'j') {
      image (forma4, mouseX, mouseY, random (5, 100), random (5, 100));      
    }
  }
  
  //     VARIEDAD 2
  if (mouseY>1000 && mouseY<=1500) {
  
      if (key == 'a') {
      fill (0,106,48);
      ellipse (mouseX, mouseY, random (5, 100), random (5, 100));
    }
    if (key == 's') {
      pushMatrix();
      noStroke();
      fill (52,121,147);    
      ellipse (mouseX, mouseY, random (5, 100), random (5, 100));
      popMatrix();
    }
    if (key == 'd') {

      pushMatrix();
      stroke(0);
      fill (92, 141, 160);
      ellipse (mouseX, mouseY, random (5, 100), random (5, 100));
      popMatrix();
    }
  }
  
    //     VARIEDAD 3
  if (mouseY>1500 && mouseY<=2000) {
  
      if (key == 'a') {
      fill (178,93,153);
      ellipse (mouseX, mouseY, random (5, 100), random (5, 100));
    }
    if (key == 's') {
      pushMatrix();
      noStroke();
      fill (191,27,27);    
      ellipse (mouseX, mouseY, random (5, 100), random (5, 100));
      popMatrix();
    }
    if (key == 'd') {

      pushMatrix();
      stroke(0);
      fill (27, 106, 165);
      ellipse (mouseX, mouseY, random (5, 100), random (5, 100));
      popMatrix();
    }
  }
  
 
  
  
  
}

class Snowball {
  int y = 0;
  int x = int(random(200));
  void render() {
    fill (255);
    ellipse (x, y, 20, 20);
  }
  void fall() {
    y++;
    if (y >= height) {
      background (0, 0, 0);
      fill (255, 0, 0);
      textAlign(CENTER);
      textSize(20);
      text ("YOU LOST", 100, 100);
    }
  }
  void reset() {
    if (touch) {
      y = 0;
      x = int(random(200));
    }  
  }
}


class Catcher {
  int x;
  int y;
  int breite;
  int groesse;
  Catcher(int xc, int yc, int breitec, int groessec) {
    x = xc;
    y = yc;
    breite = breitec;
    groesse = groessec;
  }
  
  void render() {
    fill(150);
    rect(x, y, breite, groesse);
  }
  
  void touches(Snowball a) {
    if (this.x <= a.x && a.x <= this.x + breite && this.y <= a.y && a.y <= this.y + groesse) {
       touch = true;
       punkte++;
    } else{
      touch = false;
    }  
  }
}

int punkte;
int singleplayerX = 20;
int singleplayerY = 40;
int singleplayerBreite = singleplayerX + 160;
int singleplayerHoehe = singleplayerY + 30;
boolean singleplayerIf = false;
boolean touch = false;
Catcher v1 = new Catcher(20, 175, 75, 20);
Snowball ver1 = new Snowball();


void setup() {
  size (200, 200);
  rectMode (CORNER);
  textAlign(CENTER);
  textSize (20);
  punkte = 0;
  
}
void draw() {

  background (0, 180, 100);
  fill( 255, 0, 0);
  text("SNOWBALLCATCHER", 100, 20);
  fill(255);
  rect(singleplayerX, singleplayerY, 160, 30);
  textSize(10);
  fill(0);
  text("Singleplayer", 100, 60);
  
  
  
  if (singleplayerIf) {
    background (0, 255, 0);
    strokeWeight(1);
    fill (255);
    textSize(15);
    text(punkte, 10, 10);
    text("points", 40, 10);
    v1.render();
    ver1.render();
    v1.touches(ver1);
    ver1.fall();
    ver1.reset();  
  }
}
void keyPressed() {
  if (keyCode == RIGHT) {
    v1.x++;
  } 
  if (keyCode == LEFT) {
    v1.x--;
  }
 
}

void mousePressed() {
     if (mousePressed) {
    if (singleplayerX <= mouseX && mouseX <= singleplayerBreite && singleplayerY <= mouseY && mouseY <= singleplayerHoehe) {
      singleplayerIf = true;
    }
   }
}

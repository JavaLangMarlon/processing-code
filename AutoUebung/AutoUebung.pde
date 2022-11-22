int[] colour = {200, 100, 100};
Besitzer b1 = new Besitzer("Jilda", 14, "Herne");
Auto fiat1 = new Auto(100, 100, "fiat", colour , b1, "WANJK88");

void setup() {
  size(200, 200);
  colorMode(HSB);
  background(0);
  print(fiat1);
}

void draw() {
  background(0);
  fiat1.autodraw();
  if(fiat1.xpos - fiat1.laenge / 2 > width) {
    fiat1.xpos -= width + fiat1.laenge;
  }
  if(fiat1.xpos + fiat1.laenge / 2 < 0) {
    fiat1.xpos += width + fiat1.laenge;
  }
}

 void keyPressed() {  
  if(key == CODED) {
    if(keyCode == RIGHT) {
      fiat1.drive();               
    } else if(keyCode == LEFT) {
      fiat1.driveback();
    } else if(keyCode == DOWN) {
      fiat1.farbeaender();
    }
  }
} 


class Besitzer {
  String name;
  int alter;
  String herkunft;
  Besitzer(String nm, int alt, String her) {
    nm = name;
    alt = alter;
    her = herkunft;
  }
}

class Auto {
  int xpos;
  int ypos;
  String marke;
  int[] farbe = {};
  Besitzer besitzer1;
  String kfzZeichen;
  int laenge = 100;
  int hoehe = laenge / 2;
  int reifenposx1 = xpos - laenge / 4;
  int reifenposx2 = xpos + laenge / 4;
  int reifenposy = ypos + hoehe / 2;
  int reifendurchmesser = 20; 
  Auto(int xp, int yp, String mk, int[] fb, Besitzer bs, String kfz) {
    xpos = xp;
    ypos = yp;
    marke = mk;
    farbe = fb;
    besitzer1 = bs;
    kfzZeichen = kfz; 
  }
  void autodraw() {
    int laenge = 100;
    int hoehe = laenge / 2;
    int reifenposx1 = xpos - laenge / 4;
    int reifenposx2 = xpos + laenge / 4;
    int reifenposy = ypos + hoehe / 2;
    int reifendurchmesser = 20; 
    fill(farbe[0], farbe[1], farbe[2]);
    rectMode(CENTER);
    rect(xpos, ypos, laenge, hoehe);
    fill(255);
    ellipse(reifenposx1, reifenposy, reifendurchmesser, reifendurchmesser);
    ellipse(reifenposx2, reifenposy, reifendurchmesser, reifendurchmesser);
    fill(0); 
  }
  void drive() {
    xpos++;
  }
  void driveback() {
    xpos--;
  }
  void farbeaender() {
    farbe[0] = int(random(360)); 
  } 
} 

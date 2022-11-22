Robot person1 = new Robot ("Marlon");
String[] wetter = {"Das Wetter wird gut.", "Bald gibt es Regen...", "Ich kann schon Wolken sehen."};
float wetterzahl = wetter.length;
int randomizer = int(random(wetterzahl));
Tropfen wasser = new Tropfen(50, 1);
Tropfen eis = new Tropfen(); 

void setup() {
  size(200, 200);
  wasser.rot = 100;
  wasser.gruen = 100;
  wasser.blau = 100;
  eis.rot = 100;
  eis.gruen = 100;
  eis.blau = 100
  ;
  wasser.zeichne();
  eis.zeichne();
  person1.stellDichVor();
  person1.sagWetter();
  person1.tschues();
}
void draw() {
  background(1);
  wasser.zeichne();
  wasser.bewege();
  eis.zeichne();
  eis.bewege();  
}

void keyPressed() {
  wasser.neueFarbe();
  eis.neueFarbe();
}





class Robot {
  String name;
  Robot (String n) {
    name = n;
  }
  void stellDichVor() {
    println("Hallo, ich heiße " + name);
  }
  void sagWetter() {
    println(wetter[randomizer]);
  }
  void tschues() {
    println(name + " sagt auf Wiedersehen!");
  }
}

class Tropfen {
  int x;
  int y;
  float rot;
  float gruen;
  float blau;
  Tropfen(int xp, int yp) {
    x = xp;
    y = yp;
    println("construktor_1_opened");
  }
  Tropfen() {
    x = int(random(0, 200));
    y = 1;
    println("construktor_2_opened");
  }
  void zeichne() {
    fill(rot, gruen, blau);
    ellipse(x, y, 20, 20);
  }
  void bewege() {
      y++;
      if(y > height) {
        y = 1;
      }
  }
  void neueFarbe() {
    rot = (random(255));
    gruen = (random(255));
    blau = (random(255));
  }
}
  

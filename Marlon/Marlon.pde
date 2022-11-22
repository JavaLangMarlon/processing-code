Robot person1 = new Robot ("Marlon");
String[] wetter = {"Das Wetter wird gut.", "Bald gibt es Regen...", "Ich kann schon Wolken sehen."};
float wetterzahl = wetter.length;
int randomizer = int(random(wetterzahl));

void setup() {
  person1.stellDichVor();
  person1.sagWetter();
  person1.tschues();
}
void draw() {
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

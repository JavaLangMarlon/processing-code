class StartScreen {
  int sSy;
  String sSENG;
  String sSGER;
// und jetzt mein Konstruktor
  StartScreen (int sy, String se, String sg) {
    sy = sSy;
    se = sSENG;
    sg = sSGER;
  }
}

StartScreen bla = new StartScreen(6, "ds", "asd");

print(bla.sSy + " " + bla.sSENG + " " + bla.sSGER);

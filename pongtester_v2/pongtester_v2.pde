class StartScreen {
  int sSwidth = 1000;
  int sSheight = 100;
  int sSx = width;
  int sSWindowStroke = 0;
  int sSy;
  String sSENG;
  String sSGER;
  String sprache = sSENG;
  StartScreen (int sy, String se, String sg) {
    sy = sSy;
    se = sSENG;
    sg = sSGER;
  }  
}

boolean startScreen = false;
StartScreen single = new StartScreen(900, "Singleplayer", "Einzelspieler");
StartScreen multi = new StartScreen(single.sSy + single.sSheight + 25, "Multiplayer", "Mehrspieler");
StartScreen trainer = new StartScreen(multi.sSy + multi.sSheight + 25, "Trainer", "Üben");
StartScreen settings = new StartScreen(trainer.sSy + trainer.sSheight + 25, "Settings", "Einstellungen");
PFont PingPong;
PImage Title; 

void setup() {
  size(1920, 1280);
  colorMode(HSB);
  backgroundColor(1, 400);
  strokeWeight(1);
  startScreen = true;
  Title = loadImage("pingpong_title.png");
  print(single.sSy);
  print(single.sSENG);
}

void draw() {
  if (startScreen) {
    startScreenFunktion();
  }  
}

void backgroundColor(int backgroundY, float backgroundLight) {
  for(int time = 1; time < height; time++) {
    strokeWeight(0);
    fill(130, 99, backgroundLight);
    rect(1, backgroundY, width, 1);
    backgroundY++;
    backgroundLight = backgroundLight - 0.5;
  }
}  

void startScreenFunktion() {
  strokeWeight(4);
  imageMode(CENTER);
  image(Title, width / 2, height / 2 - 150); 
}

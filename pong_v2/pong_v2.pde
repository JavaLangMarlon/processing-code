class StartScreen {
  int sSwidth = 1000;
  int sSheight = 100;
  int x = 960;
  int windowStroke = 0;
  int y;
  String eng;
  String ger;
  String lang;
  StartScreen (int sy, String se, String sg) {
    y = sy;
    eng = se;
    ger = sg;
    lang = eng;
  } 
  void render() {
    rectMode(CENTER);
    strokeWeight(4);
    stroke(100, windowStroke, 400);
    fill(#030202);
    rect(x, y, sSwidth, sSheight);
    textAlign(CENTER);
    textSize(50);
    colorMode(HSB);
    fill(100, windowStroke, 400);
    text(lang, width / 2, y + 25);
    if(x - sSwidth / 2 < mouseX && mouseX < x - sSwidth / 2 + sSwidth && y < mouseY && mouseY < y + sSheight) {
      windowStroke = 1000;
    }  else {
      windowStroke = 0;
    }
    noFill();
  }
}

class StartScreenBackgrounder {
  

boolean startScreen;
StartScreen single = new StartScreen(300, "Singleplayer", "Einzelspieler");
StartScreen multi = new StartScreen(single.y + single.sSheight + 25, "Multiplayer", "Mehrspieler");
StartScreen trainer = new StartScreen(multi.y + multi.sSheight + 25, "Trainer", "Üben");
StartScreen settings = new StartScreen(trainer.y + trainer.sSheight + 25, "Settings", "Einstellungen"); 
PFont PingPong;
PImage Title; 


void setup() {
  print(width / 2);
  size(1920, 1280);
  colorMode(HSB);
  backgroundColor(1, 400);
  strokeWeight(1);
  startScreen = true;
  Title = loadImage("pingpong_title.png");
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
  startScreenBackgrounder();
  strokeWeight(4);
  imageMode(CENTER);
  image(Title, width / 2, single.y - 150); 
  single.render();
  multi.render();
  trainer.render();
  settings.render();
}

void startScreenBackgrounder() {
  
}

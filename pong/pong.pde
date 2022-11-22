boolean startScreen;
int startScreenSingleX;
int startScreenSingleWidth;
int startScreenSingleY;
int startScreenSingleHeight;
int startScreenSingleWindowStroke = 0;
int startScreenMultiX;
int startScreenMultiWidth;
int startScreenMultiY;
int startScreenMultiHeight;
int startScreenMultiWindowStroke = 0;
int startScreenTrainX;
int startScreenTrainWidth;
int startScreenTrainY;
int startScreenTrainHeight;
int startScreenTrainWindowStroke = 0;
int startScreenSettX;
int startScreenSettWidth;
int startScreenSettY;
int startScreenSettHeight;
int startScreenSettWindowStroke = 0;
String singlePlayerENG = new String("Singleplayer");
String multiPlayerENG = new String("Multiplayer");
String trainerENG = new String("Trainer");
String settingsENG = new String("Settings");
PFont PingPong;
PImage Title; 


void setup() {
  size(1920, 1280);
  colorMode(HSB);
  backgroundColor(1, 400);
  strokeWeight(1);
  startScreen = true;
  startScreenSingleWidth = 1000;
  startScreenSingleX = width / 2 - startScreenSingleWidth / 2;
  startScreenSingleY = 300;
  startScreenSingleHeight = 100;
  startScreenMultiX = startScreenSingleX;
  startScreenMultiWidth = startScreenSingleWidth;
  startScreenMultiY = startScreenSingleY + startScreenSingleHeight + 25;
  startScreenMultiHeight = startScreenSingleHeight;
  startScreenTrainX = startScreenSingleX;
  startScreenTrainWidth = startScreenSingleWidth;
  startScreenTrainY = startScreenMultiY + startScreenMultiHeight + 25;
  startScreenTrainHeight = startScreenSingleHeight;
  startScreenSettX = startScreenSingleX;
  startScreenSettWidth = startScreenSingleWidth;
  startScreenSettY = startScreenTrainY + startScreenTrainHeight + 25;
  startScreenSettHeight = startScreenSingleHeight;
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
  startScreenPlaying();
  strokeWeight(4);
  imageMode(CENTER);
  image(Title, width / 2, startScreenSingleY - 150);
  stroke(100, startScreenSingleWindowStroke, 400);
  rect(startScreenSingleX, startScreenSingleY, startScreenSingleWidth, startScreenSingleHeight);
  stroke(100, startScreenMultiWindowStroke, 400);
  rect(startScreenMultiX, startScreenMultiY, startScreenMultiWidth, startScreenMultiHeight);
  stroke(100, startScreenTrainWindowStroke, 400);
  rect(startScreenTrainX, startScreenTrainY, startScreenTrainWidth, startScreenTrainHeight);
  stroke(100, startScreenSettWindowStroke, 400);
  rect(startScreenSettX, startScreenSettY, startScreenSettWidth, startScreenSettHeight);
  textAlign(CENTER);
  textSize(50);
  fill(100, startScreenSingleWindowStroke, 400);
  text(singlePlayerENG, width / 2, startScreenSingleY + startScreenSingleHeight / 2 + 25);
  if(startScreenSingleX < mouseX && mouseX < startScreenSingleX + startScreenSingleWidth && startScreenSingleY < mouseY && mouseY < startScreenSingleY + startScreenSingleHeight) {
    startScreenSingleWindowStroke = 1000;
  }  else {
    startScreenSingleWindowStroke = 0;
  }  
  fill(100, startScreenMultiWindowStroke, 400);
  text(multiPlayerENG, width / 2, startScreenMultiY + startScreenMultiHeight / 2 + 25);
  if(startScreenMultiX < mouseX && mouseX < startScreenMultiX + startScreenMultiWidth && startScreenMultiY < mouseY && mouseY < startScreenMultiY + startScreenMultiHeight) {
    startScreenMultiWindowStroke = 1000;
  }  else {
    startScreenMultiWindowStroke = 0;
  }  
  fill(100, startScreenTrainWindowStroke, 400);
  text(trainerENG, width / 2, startScreenTrainY + startScreenTrainHeight / 2 + 25);
  if(startScreenTrainX < mouseX && mouseX < startScreenTrainX + startScreenTrainWidth && startScreenTrainY < mouseY && mouseY < startScreenTrainY + startScreenTrainHeight) {
    startScreenTrainWindowStroke = 1000;
  }  else {
    startScreenTrainWindowStroke = 0;
  }  
  fill(100, startScreenSettWindowStroke, 400);
  text(settingsENG, width / 2, startScreenSettY + startScreenSettHeight / 2 + 25);
  if(startScreenSettX < mouseX && mouseX < startScreenSettX + startScreenSettWidth && startScreenSettY < mouseY && mouseY < startScreenSettY + startScreenSettHeight) {
    startScreenSettWindowStroke = 1000;
  }  else {
    startScreenSettWindowStroke = 0;
  }  
  noFill();
  
}

void startScreenPlaying() {
  
}


/*
class Pongerstart() {
  int xpospongerstart;
  int ypospongerstart;
  int heightpongerstart;
  int widthpongerstart;
  Pongerstart() {
    xpospongerstart = 2;
    ypospongerstart = 2;
    heightpongerstart = 2;
    widthpongerstart = 2;
  }  
}
  */
 

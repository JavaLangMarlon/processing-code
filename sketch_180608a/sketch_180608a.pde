int bewegung;
int speed;
char w;
int hochrunter;
char s;



void setup() {
  size (200, 200);
  bewegung = 0;
  speed = 1;
  hochrunter = 100;
  println ("system starts");
  textAlign(CENTER);
  rectMode(CENTER);
}
void draw() {
  background (50, 50, 100);
  text("Explore the border", 100, 30);
  text("Try out W and S", 100, 170);
  rect (bewegung, hochrunter, 20, 20);
  bewegung += speed;
  fill (0, 255, 255);
  if (hochrunter >= 159 || hochrunter <= 48) {
    background (0);
    fill (255, 0, 0);
    text ("YOU LOST!", 100, 100);
  }
  if (bewegung == 200) {
    speed = -1;
  }
  if (bewegung == -1) {
    speed = +1;
  }
  if (hochrunter >= 200 && key == 's') {
    hochrunter -= 1;
  }
  if (hochrunter <= 0 && key == 'w') {
    hochrunter += 1;
  }
  
}
void keyPressed() {
   if (key == 'w') {
      hochrunter -= 1;
      
    }
    if (key == 's') {
      hochrunter += 1;
    }
}

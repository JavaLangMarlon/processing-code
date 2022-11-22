/* Auf jeden Fall
  noch das mit den Bewegungen und den Bools machen
  und die Rotation
  */



class Pacman {
  float x = -20;
  float y = -20;
  int diameter = rectangels;
  float zaehler = 0.0;
  float augex = koords.x;
  float augey = koords.y;
  float[] mund = {30, 330, x + diameter / 2};
  
  void render() {
    zaehler += 1.0 / frameRate;
    stroke(0);
    strokeWeight(2);
    fill(#FFE624);
    if (zaehler > 1.0) {
      zaehler = 0.0;
    } else if (zaehler > 0.5) {
      arc (x, y, diameter, diameter, radians(mund[0]), radians(mund[1]));
    } else {
      ellipse (x, y, diameter, diameter);
      line (x, y, mund[2], y);
    }
    fill (255);
    ellipse (x, y - 10, 10, 10);
  }
}


int rectangels = 40;
PVector koords = new PVector(rectangels * int(random(20)) + 2.5, rectangels * int(random(20)) + 2.5);
PImage hintergrund = new PImage();
Pacman v1 = new Pacman();
boolean[] bewegungen = { false, false, false, false}; //oben, unten, rechts, links


void setup() {
  hintergrund = loadImage ("hintergrund2.png");
  size (800, 800);
}

void draw() {
  background (100);
  noFill ();
  strokeWeight(5);
  for (int i = 0; i < width; i += rectangels) {
    for (int j = 0; j < height; j+= rectangels) {
      rect (i, j, rectangels, rectangels);
      image (hintergrund, i + 2.5, j + 2.5);
    }
  }
  noStroke();
  translate(koords.x, koords.y);
  v1.render();  
}

void keyPressed() {
  if(keyCode == LEFT) {
    if (!bewegungen[3]) {
      bewegungen[3] = true;
      bewegungen[0] = false;
      bewegungen[1] = false;
      bewegungen[2] = false;
      for (int i = 0; i < v1.mund.length - 1; i++) {
        v1.mund[i] -= 180;
      }
      v1.mund[2] = v1.x - v1.diameter / 2; 
    }
  } 
  if(keyCode == RIGHT) {
    if (v1.mund[0] == -150) 
      for (int i = 0; i < v1.mund.length - 1; i++) {
        v1.mund[i] += 180;
      }
      v1.mund[2] = v1.x + v1.diameter; 
  }  
}

  

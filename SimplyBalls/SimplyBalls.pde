class Mainball {
  int diameter = 40;
  int x = width;
  int y = height;
  
  void render() {
    fill(0);
    ellipseMode(CENTER);
    ellipse(x, y, diameter, diameter);
  }
  
  Enemyball[] touches(Enemyball[] a) {
    for (int i = 0; i < a.length; i++) {
      if (a[i].x < this.x + diameter / 2 && a[i].x > this.x - diameter / 2 && a[i].y < this.y + diameter / 2 && a[i].y > this.y - diameter / 2) {
        a[i].touch = true;
      }
    }
    return a;
  }
}



class Enemyball {
  boolean touch = false;
  int diameter = 10;
  int x = 0;
  int y = 0;
  String art;
  float xspeed;
  float yspeed;
  Enemyball (String a) {
    this.art = a;
    this.xspeed = random(-5.0, 5.0);
    this.yspeed = random(-5.0, 5.0);
  }
  
  void render() {
    x = x + int(xspeed);
    y = y + int(yspeed);
    switch (this.art) {
      case "rot":
        fill(255, 0, 0);
      break;
      case "gruen":
        fill(0, 255, 0);
      break;
      case "blau":
        fill(0, 0, 255);
      break;
   }
   ellipse(x, y, diameter, diameter);
   if (x > width || x < 0) {
     xspeed = -xspeed;
   }
   if ( y > height || y < 0) {
     yspeed = -yspeed;
   }
  }
  
  void isTouched (Mainball mainball) {
    if (touch) {
      switch (art) {
        case "rot":
          end = true;
        break;
        case "blau":
          mainball.diameter += 2;
        break;
        case "gruen":
          if (mainball.diameter > 10) {
            mainball.diameter -= 2;
          }
        break;
      }
    }
    touch = false;
  }
}

boolean start = false;
boolean end = false;
Mainball mainball = new Mainball();
Enemyball[] enemyballs = {new Enemyball("gruen"), new Enemyball("blau"), new Enemyball("rot"), new Enemyball("rot"), new Enemyball("rot"), new Enemyball("rot"), new Enemyball("rot")};

void setup() {
  size(400, 400);
}

void draw() {
  if (start == false) {
    background(255);
    textAlign(CENTER);
    fill(0);
    text("SimpleBalls (Press any key to start)", width / 2, height / 2);
  } else if (end) {
    background(0);
    textAlign(CENTER);
    fill(255, 0, 0);
    text("You lost. (Press any key to restart)", width / 2, height / 2);
  } else {
    background(255);
    mainball.x = mouseX;
    mainball.y = mouseY;
    mainball.render();
    enemyballs = mainball.touches(enemyballs);
    for (int i = 0; i < enemyballs.length; i++) {
      enemyballs[i].render();
      enemyballs[i].isTouched(mainball);
    }
  }
}
    
void keyPressed() {
  if (start == false || end == true) {
    start = true;
    end = false;
  }
}

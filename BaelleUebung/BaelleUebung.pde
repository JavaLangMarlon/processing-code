class Ball {
  PVector pos;
  PVector speed;
  Ball() {
    pos = new PVector (random(200), random(200));
    speed = new PVector(random(-2, 2), random(-2, 2));
  }
  
  void render() {
    fill(random(255), random(255), random(255));
    stroke(random(255), random(255), random(255));
    ellipse(pos.x, pos.y, 20, 20);
  }
  
  void update() {
    pos.add(speed);
    if(pos.x > width || pos.x < 0) {
      speed.x = -speed.x;
    } else if(pos.y > height || pos.y < 0) {
      speed.y = -speed.y;
    }
  }
}

Ball b1 = new Ball();
Ball b2 = new Ball();
Ball b3 = new Ball();

void setup() {
  size(200, 200);
  background(0);
}

void draw() {
  background(0);
  b1.render();
  b2.render();
  b3.render();
  
  b1.update();
  b2.update();
  b3.update();
  if(b1.pos.x > b2.pos.x + 20 && b1.pos.x > b2.pos.x - 20 && b1.pos.y > b2.pos.y + 20 && b1.pos.y > b2.pos.y - 20) {
    b1.speed.x = -b1.speed.x;
    b1.speed.y = -b1.speed.y;
    b2.speed.x = -b2.speed.x;
    b2.speed.y = -b2.speed.y;
  } else if (b1.pos.x > b3.pos.x + 20 && b1.pos.x > b3.pos.x - 20 && b1.pos.y > b3.pos.y + 20 && b1.pos.y > b3.pos.y - 20) {
    b1.speed.x = -b1.speed.x;
    b1.speed.y = -b1.speed.y;
    b3.speed.x = -b3.speed.x;
    b3.speed.y = -b3.speed.y;
  } else if (b2.pos.x > b3.pos.x + 20 && b2.pos.x > b3.pos.x - 20 && b2.pos.y > b3.pos.y + 20 && b2.pos.y > b3.pos.y - 20) {    
    b2.speed.x = -b2.speed.x;
    b2.speed.y = -b2.speed.y;
    b3.speed.x = -b3.speed.x;
    b3.speed.y = -b3.speed.y;
  }
}

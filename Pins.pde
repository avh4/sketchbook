void setup() {
  size(screen.width, screen.height);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 80);
}

void draw() {
  noStroke();
  fill(0,0,5+random(5), 70);
  
  sz = min(width/2, height/2);
  
  x = random(sz) + width/2 - sz/2;
  y = random(sz) + height/2 - sz/2;
  translate(x, y);
  if (abs(x-width/2) < 30 && abs(y-height/2) < 30) {
    angle = random(2*PI);
  } else if (random(1000) > 500) {
    return;
  } else if (random(1000) > 10) {
    angle = atan2((y-height/2), (x-width/2)) + random(PI) + PI/2;
  } else {
    angle = random(2*PI);
  }
  rotate(angle);
  triangle(-70, -2, 40, 0, -70, 2);
  triangle(-72, -4, -65, 0, -72, 4);
}

void resizeSketch(int w, int h) {
  size(w, h);
}
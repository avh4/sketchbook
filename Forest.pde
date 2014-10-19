void setup() {
  size(screen.width, screen.height);
  colorMode(HSB, 360, 100, 100, 100);
  background(126, 62, 41);
}
 
void draw() {
  noStroke();
  fill(126, 62, random(40), 20);
   
  if (random(1000) < 1) {
    fill(26, 100, 70, 100);
  }
   
  translate(random(width), random(height));
  rotate(random(1)/2+0.3);
  ellipse(0,0,2,2);
  triangle(-18, 25, 0, -30, 18, 25);
}

void resizeSketch(int w, int h) {
  size(w, h);
}
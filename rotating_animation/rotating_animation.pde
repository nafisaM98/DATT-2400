float angle = 0;

void setup() {
  size(400, 400);
  noFill();
  stroke(255);  
  strokeWeight(2);
  background(0);  
}

void draw() {
  translate(width/2, height/2);
  rotate(angle);
  for (int i = 0; i < 10; i++) {
    arc(0, 0, 200 - i * 20, 200 - i * 20, 0, HALF_PI);
  }
  angle += 0.01;
}

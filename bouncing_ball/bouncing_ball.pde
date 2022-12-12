int rectWidth = 200;
int rectHeight = 100;

float x = 0;
float y = 0;
float xSpeed = 5;
float ySpeed = 5;

void setup() {
  size(400, 300);

  x = width/2;
  y = height/2;
}
void draw() {
  background(0);
 rect(width/2 - rectWidth/2, height/2 - rectHeight/2, rectWidth, rectHeight);
 ellipse(x, y, 20, 20);
 x += xSpeed;
  y += ySpeed;
if (x > width/2 + rectWidth/2 - 10 || x < width/2 - rectWidth/2 + 10) {
    xSpeed *= -1;
  }
  if (y > height/2 + rectHeight/2 - 10 || y < height/2 - rectHeight/2 + 10) {
    ySpeed *= -1;
  }
}

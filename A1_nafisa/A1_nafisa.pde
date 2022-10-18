//assignment 1
void setup() {
  size(700, 700);
}

void draw() {
  background(#5DADE2);
  fill(#FAE5D3);
  noStroke();
  noLoop();
  saveFrame("###_A1.jpg");

  float rows = 30;
  float cols = rows;

  float stepx = width / rows;
  float stepy = height / cols;

  for (int x = 0; x < rows; x++) {
    for (int y = 0; y < cols; y++) {

      float xp = stepx * x;
      float yp = stepy * y;

      float distance = cos(radians(frameCount + x * 100 + y * 100));
      float mapWave = map(distance, -1, 1, 0, 5);

      int rand_select = int(mapWave);

      pushMatrix();
      translate(xp, yp);
      if (rand_select == 0) {
        arc(0, 0, stepx*2, stepy*2, radians(0), radians(90));
      }
      if (rand_select == 1) {
        arc(stepx, 0, stepx*2, stepy*2, radians(90), radians(180));
      }
      if (rand_select == 2) {
        arc(stepx, stepy, stepx*2, stepy*2, radians(180), radians(270));
      }
      if (rand_select == 3) {
        arc(0, stepy, stepx*2, stepy*2, radians(270), radians(360));
      }

      popMatrix();
    }
  }
}

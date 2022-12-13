import processing.sound.*;
SoundFile song;
PImage galaxy; 
float playerX;
float playerY;
float[] obstacleX = {100, 200, 300, 400};
float[] obstacleY = {0, 0, 0, 0};

void setup() {
  galaxy = loadImage("galaxy.jpg");
 song=new SoundFile(this,"song.wav");
 song.play();
 
  size(600, 400);
  playerX = width/2;
  playerY = height;

  for (int i = 0; i < obstacleX.length; i++) {
    obstacleY[i] = random(0, height/2);
  }
}

void draw() {
  background(galaxy);

   fill(255, 0, 0);
  for (int i = 0; i < obstacleX.length; i++) {
    rect(obstacleX[i], obstacleY[i], 20, 20);
  }

  fill(255, 255, 0);
  ellipse(playerX, playerY, 30, 30);

  if (keyPressed) {
    if (keyCode == LEFT) {
      playerX -= 5;
    } else if (keyCode == RIGHT) {
      playerX += 5;
    }
    if (keyCode == UP) {
      playerY -= 10;
    }
  }

  if (playerY <= 0) {
    fill(0, 255, 0);
    textSize(32);
    text("You win!", width/2, height/2);
  }

  for (int i = 0; i < obstacleX.length; i++) {
    if (dist(playerX, playerY, obstacleX[i], obstacleY[i]) < 25) {
      fill(255, 0, 0);
      textSize(32);
      text("Game Over!", width/2, height/2);
    }
  }

  for (int i = 0; i < obstacleX.length; i++) {
    obstacleY[i] += 5;
    if (obstacleY[i] > height) {
      obstacleY[i] = 0;
      obstacleX[i] = random(0, width);
    }
  }
}

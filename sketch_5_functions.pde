void setup() {
  noStroke();
  fullScreen();
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
}

int mCounter = 0;
int xPos = 0;

void draw() {
  figura(mouseX, mouseY);
}

void figura(int x, int y) {

  background(30, 20, 100);
  int cor = 0;
  int cor2 = 0;

  if (x < width/7) {
    cor = 0;
    cor2 = 180;
  } else if (x < (width/7)*2) {
    cor = 51;
    cor2 = 231;
  } else if (x < (width/7)*3) {
    cor = 102;
    cor2 = 282;
  } else if (x < (width/7)*4) {
    cor = 153;
    cor2 = 333;
  } else if (x < (width/7)*5) {
    cor = 204;
    cor2 = 24;
  } else if (x < (width/7)*6) {
    cor = 255;
    cor2 = 85;
  } else if (x < width) {
    cor = 306;
    cor2 = 226;
  }

  if (mCounter % 4 == 0) {
    fill(cor, 70, 100);
    rectMode(CENTER);
    rect(width/2, height/2, x, x);
    fill(cor2, 70, 100);
    rectMode(CORNER);
    rect(width/2, height/2, -x /2, -x /2);
    rect(width/2, height/2, x /2, x /2);
  } else if (mCounter % 4 == 1) {
    fill(cor, 70, 100);
    rectMode(CENTER);
    rect(x, y, xPos, xPos);
    fill(cor2, 70, 100);
    rectMode(CORNER);
    rect(x, y, -xPos/2, -xPos/2);
    rect(x, y, xPos/2, xPos/2);
  } else if (mCounter % 4 == 2) {
    fill(cor, 70, 100);
    circle(width/2, height/2, x);
    fill(cor2, 70, 100);
    arc(width/2, height/2, x, x, radians(x), radians(x+180));
  } else if (mCounter % 4 == 3) {
    fill(cor, 70, 100);
    circle(x, y, xPos);
    fill(cor2, 70, 100);
    arc(x, y, xPos, xPos, radians(x), radians(x+180));
  }
}

void mousePressed() {
  mCounter++;
  xPos = mouseX;
}

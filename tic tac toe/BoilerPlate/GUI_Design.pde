int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2;
color white = 255;

float buttonPaddingX;
float buttonPaddingY;
int numberOfButtons = 5;
float menuX;
float menuY;
float menuWidth;
float menuHeight;

void GUI_Setup() {
  buttonPaddingX = width*1/100;
  menuX = width*0;
  menuY = height*0;
  menuWidth = width-1;
  menuHeight = height*1/10;
  b1 = color(#E522F0);
  b2 = color(#44E8D1);

  backgroundColor();

  fill(white);
  //The size of the Tic Tac Toe Board and Any of the extra boxes
  //rect(147, 97, 407, 407);
  fill(lightMode2);
  rect(147, 510, 125, 50);
  rect(287, 510, 125, 50);
  rect(430, 510, 125, 50);
  rect(200, 570, 300, 35);
  rect(270, 610, 165, 35, 50);
  rect(415, 650, 35, 35);
  rect(255, 650, 35, 35);
  fill(0);
  //The area where the X's & O's Are Located
  fill(lightMode2);
  rect(147, 97, 130, 130);
  rect(277, 97, 150, 130);
  rect(427, 97, 127, 130);
  rect(147, 225, 130, 150);
  rect(277, 225, 150, 150);
  rect(427, 225, 127, 150);
  rect(147, 375, 130, 130);
  rect(277, 375, 150, 130);
  rect(427, 375, 127, 130);
  fill(0);
  noStroke();
  //dark mode
  rect(width*16/20, height*0, width*3/20, height*1/20);

  // lines for the Tic Tac Toe Board
  strokeWeight(5);
  line(275, 100, 275, 500);
  line(425, 100, 425, 500);
  line(150, 225, 550, 225);
  line(150, 375, 550, 375);
  noStroke();
}
void backgroundColor() {
  setGradient(0, 0, 800, height, b2, b1, X_AXIS);
}

void setGradient(int x, int y, float w, float h, color b1, color b2, int axis) {

  noFill();

  if (axis == Y_AXIS) {
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(b1, b2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  } else if (axis == X_AXIS) {
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(b1, b2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
void prinln() {
}

int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2;
color white = 255;

void GUI_Setup() {
  b1 = color(#E522F0);
  b2 = color(#44E8D1);
  
  backgroundColor();
  
  fill(white);
  
  rect(147, 97, 407, 407);
  rect(147, 510, 125, 50);
  rect(287, 510, 125, 50);
  rect(430, 510, 125, 50);
  rect(200, 570, 300, 35);
  rect(270, 610, 165, 35, 50);
  rect(415, 650, 35, 35);
  rect(255, 650, 35, 35);


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

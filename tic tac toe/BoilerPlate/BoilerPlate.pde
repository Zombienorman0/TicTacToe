//GlobalSetup

void setup() {
  size(750, 750);
  GUI_Setup();
  quitButtonSetup();
}

void draw() {
  quitButtonDraw();


  textDraw();
}
void mouseClicked () {
  quitButtonMouseClicked();
}

//GlobalSetup
int lightMode1 = 0;
int lightMode2 = 255; 
void setup() {
  size(750, 750);
  GUI_Setup();
  quitButtonSetup();
}

void draw() {
  loop();
  GUI_Setup();
  quitButtonDraw();
  darkModeHover();
  darkModeColorChange();


  textDraw();
}
void mouseClicked () {
  quitButtonMouseClicked();
  darkModePressed();
}

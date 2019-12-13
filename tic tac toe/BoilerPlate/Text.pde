PFont titleFont;
String title = "easy";
String Title = "medium";
String TItle = "impossible";
String TITle = "Player V.S. Player";
String TITLe = "Choose: ";
String X = "X ";
String O = "O ";
String quit;
color darkerd = #C407EA;
String darkMode = "Dark Mode";

void textSetup() {
}

void textDraw() {
  titleFont = createFont ("Harrington", 55);
  fill(darkerd);

  textAlign(CENTER, CENTER);
  textFont(titleFont, 30);
  text(title, 147, 505, 125, 50);

  textAlign(CENTER, CENTER);
  textFont(titleFont, 30);
  text(Title, 287, 510, 125, 50);

  textAlign(CENTER, CENTER);
  textFont(titleFont, 25);
  text(TItle, 430, 510, 125, 50);

  textAlign(CENTER, CENTER);
  textFont(titleFont, 25);
  text(TITle, 200, 570, 300, 35);

  textAlign(CENTER, CENTER);
  textFont(titleFont, 25);
  text(TITLe, 270, 610, 165, 35);

  textAlign(CENTER, CENTER);
  textFont(titleFont, 25);
  text(X, 255, 650, 40, 35);

  textAlign(CENTER, CENTER);
  textFont(titleFont, 25);
  text(O, 415, 650, 40, 35);
  
  textAlign(CENTER, CENTER);
  textFont(titleFont, 20);
  text(darkMode, width*3.8/numberOfButtons+buttonPaddingX, menuY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight/2);
}

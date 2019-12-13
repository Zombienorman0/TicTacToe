color lighterGray = #868282;
color gray = #312F31;
boolean filldarkMode = false;


void darkModeHover() {
  if (mouseX > width*3.8/numberOfButtons+buttonPaddingX && mouseX < width*4.7/numberOfButtons+buttonPaddingX && mouseY > menuY && mouseY < menuHeight/2 ) {
    filldarkMode = true;
  } else {
    filldarkMode = false;
  }
}

void darkModeColorChange() {
  if ( filldarkMode == true ) {
    fill(lighterGray);
    rect(width*3.8/numberOfButtons+buttonPaddingX, menuY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight/2);
  } else {
    fill(gray);
    rect(width*3.8/numberOfButtons+buttonPaddingX, menuY, menuWidth*1/numberOfButtons-2*buttonPaddingX, menuHeight/2);
  }
  
}
void darkModePressed() {
  if (mouseX > width*4/numberOfButtons+buttonPaddingX && mouseX < width*5/numberOfButtons-buttonPaddingX && mouseY > menuY && mouseY < menuHeight/2 ) {
    if (filldarkMode == false) {
      filldarkMode = true;
      lightMode2 = 255;
      lightMode1 = 0;
    } else {
    filldarkMode = false;
    lightMode2 = 0;
    lightMode1 = 255;
    }
  }
}

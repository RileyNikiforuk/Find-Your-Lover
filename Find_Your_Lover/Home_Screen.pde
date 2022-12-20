float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed= 64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
/* Home screen expectations
  - background image using tint()
  - 9 evenly spaced rectangles, assighnment #3
  - quit button and reset button (splash screen start button)
  - in each: image, text, 2d shape, button
  - narrative through the 9 rectangles
  - see case study
  - note: must have one image with aspect ratio
  */
void homeScreen() {
  //println("Arrived at Home Screen"); //testing for splash screen start button
  //
}//End homeScreen
//
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  strokeWeight(1); //reset: 1 pixel
  fill(white); //reset: white
}//End backgroundWhiteScreen
//
void backgroundImage() {
  backgroundWhiteScreen();
  if (nightMode==false) tint(tintDayMode, tintDayModeOpacity); //day mode, see ternary operator
  if (nightMode==true) tint(tintRed= 64, tintGreen=64, tintBlue=40, tintNightModeOpacity); //night mode, see ternary operator
  image(backgroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
}//End backgroundImage
//
//End home Screen subprogram

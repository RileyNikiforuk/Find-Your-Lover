//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false, splashScreenStart=false, nightMode=false, startNow=false, reset=false, goodForYou=false;
color purple=#FF00FF, resetDefaultInk=#000000, white=#FFFFFF;
float lineX1, lineY1, lineWidth1, lineHeight1;
float lineX2, lineY2, lineWidth2, lineHeight2;
float lineX3, lineY3, lineWidth3, lineHeight3;
float lineX4, lineY4, lineWidth4, lineHeight4;
float startX2, startY2, startWidth2, startHeight2;
float restartX, restartY, restartWidth, restartHeight;
float quitX, quitY, quitWidth, quitHeight;
color resetButtonColor, grey = #898989;
color startButtonColor;
color quitButtonColor;
//
void setup() {
  size(1200, 900);
  //
  appWidth = width;
  appHeight = height;
  //Assignment: display algorithm from hello world
  display();
  //display algorithm will populate smaller and larger dimensions
  population();
  textSetup();
  imagePopulation();
}//End setup
//
void draw() {
  //assignment #2: OS level mouse click and splash screen
  if ( OS_on == true && splashScreenStart == false) splashScreen(); //OS level mouse click
  if ( splashScreenStart ) {
    homeScreen();
    gridDraw();
  }
  if (startNow==true) {
    gridDraw2();
  }
  if ( reset==true ) {
    reset();
    reset=false;
  }
  if (goodForYou==true) {
    goodForYou();
  }
}//End draw
//
void keyPressed() {
  if ( OS_on==true && key==' ' ) {
    splashScreenStart = true;
    backgroundWhiteScreen();
    backgroundImage();
  }//End splash Screen Space Bar
  //
  //keyboard short cuts
  if (key=='N' || key=='n') { 
    if (nightMode==true) { 
      nightMode=false;
      backgroundImage();
    } else { 
      nightMode=true;
      backgroundImage();
    }
  }
}//End keyPressed
//
void mousePressed() {
  //OS level mouse click
  if ( OS_on==false ) OS_on=true;//End OS level mouse click
  if ( splashScreenStart == true && mouseX > quitX && mouseX < quitX+quitWidth && mouseY > quitY && mouseY < quitY+quitHeight ) exit();
  if ( splashScreenStart == true && mouseX > startX2 && mouseX < startX2+startWidth2 && mouseY > startY2 && mouseY < startY2+startHeight2 ) startNow=true;
  if ( startNow == true && mouseX > restartX && mouseX < restartX+restartWidth && mouseY > restartY && mouseY < restartY+restartHeight ) reset=true;
  if ( startNow == true && mouseX > yesX1 && mouseX < yesX1+yesWidth1 && mouseY > yesY1 && mouseY < yesY1+yesHeight1 ) goodForYou=true;
  if ( startNow == true && mouseX > yesX2 && mouseX < yesX2+yesWidth2 && mouseY > yesY2 && mouseY < yesY2+yesHeight2 ) goodForYou=true;
  if ( startNow == true && mouseX > noX1 && mouseX < noX1+noWidth1 && mouseY > noY1 && mouseY < noY1+noHeight1 ) girl1C2=true;
  if ( girl1C2 == true && mouseX > noX2 && mouseX < noX2+noWidth2 && mouseY > noY2 && mouseY < noY2+noHeight2 ) boy2C3=true;
}//End mousePressed
//
//End main program

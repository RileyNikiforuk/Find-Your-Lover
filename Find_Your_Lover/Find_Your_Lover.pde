//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false, splashScreenStart=false;
color purple=#FF00FF, resetDefaultInk=#000000, white=#FFFFFF;
//
void setup() {
  size(1200,900);
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
  if ( splashScreenStart ) homeScreen();
}//End draw
//
void keyPressed() {
  if ( OS_on==true && key==' ' ) {
    splashScreenStart = true;
    backgroundWhiteScreen();
    backgroundImage();
  }//End splash Screen Space Bar
}//End keyPressed
//
void mousePressed() {
  //OS level mouse click
  if ( OS_on==false ) OS_on=true;//End OS level mouse click
}//End mousePressed
//
//End main program

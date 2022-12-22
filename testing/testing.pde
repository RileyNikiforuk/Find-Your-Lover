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
  if (startNow==true && reset==true) {
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
  if ( startNow == true && mouseX > noX1 && mouseX < noX1+noWidth1 && mouseY > noY1 && mouseY < noY1+noHeight1 ) girl1C2=true;
}//End mousePressed
//
//End main program
//
//
//
//
void display() {
  if (appWidth>=appHeight) {
    largerDimension = appWidth;
    smallerDimension = appHeight;
  } else {
    largerDimension = appHeight;
    smallerDimension = appWidth;
  }
  //purpose: CANVAS fits in monitor and dimension size is known
  //Output #1: console confirms CANVAS will fit in the monitor
  //Output #2: console confirms display orientation (landscape-square or portrait)
  //Output #3: console confirms dimension sizes (smaller and larger)
  //Output #4: if error with any of above, program will exit or be broken
  //           Hint: "bruh, turn yout phu."
  println("CANVAS:", "Width:"+width, "Height="+height);
  println("Display Monitor:", "Width:"+displayWidth, "Height:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight ) ? ls : p ;
  println(DO, orientation);
  if (orientation == p ) println(instruct);
  //
  if ( appWidth < appHeight ) { //Declaring Landscape & square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
    }
  }
  println("Smaller Dimension:", smallerDimension);
  println("Larger Dimension:", largerDimension);
}//End display
//
//End display and Orientation Subprogram
//
//
//
//
void gridDraw() {
  strokeWeight(6);
  stroke(0);
  line(lineX1, lineY1, lineWidth1, lineHeight1);
  line(lineX2, lineY2, lineWidth2, lineHeight2);
  line(lineX3, lineY3, lineWidth3, lineHeight3);
  line(lineX4, lineY4, lineWidth4, lineHeight4);
  fill(startButtonColor);
  rect(startX2, startY2, startWidth2, startHeight2);
  if ( mouseX > startX2 && mouseX < startX2+startWidth2 && mouseY > startY2 && mouseY < startY2+startHeight2 ) {
    startButtonColor = grey; //remember nightmode
  } else {
    startButtonColor = white; //remember night mode
  } //End Hover Over
  fill(0);
  text("START", startX2, startY2, startWidth2, startHeight2);
  fill(resetButtonColor);
  fill(quitButtonColor);
  rect(quitX, quitY, quitWidth, quitHeight);
  if ( mouseX > quitX && mouseX < quitX+quitWidth && mouseY > quitY && mouseY < quitY+quitHeight ) {
    quitButtonColor = grey; //remember nightmode
  } else {
    quitButtonColor = white; //remember night mode
  } //End Hover Over
  fill(0);
  text("QUIT", quitX, quitY, quitWidth, quitHeight);
}//End gridDraw
//
//
//
//
float columX1, columY1, columWidth1, columHeight1;
float columX2, columY2, columWidth2, columHeight2;
float columX3, columY3, columWidth3, columHeight3;
float columX4, columY4, columWidth4, columHeight4;
float columX5, columY5, columWidth5, columHeight5;
float columX6, columY6, columWidth6, columHeight6;
float columX7, columY7, columWidth7, columHeight7;
float columX8, columY8, columWidth8, columHeight8;
float columX9, columY9, columWidth9, columHeight9;
float yesX1, yesY1, yesWidth1, yesHeight1, noX1, noY1, noWidth1, noHeight1;
Boolean boy1C1=true, girl1C2=false;
//
void gridDraw2() {
  background(255);
  strokeWeight(6);
  stroke(0);
  line(lineX1, lineY1, lineWidth1, lineHeight1);
  line(lineX2, lineY2, lineWidth2, lineHeight2);
  line(lineX3, lineY3, lineWidth3, lineHeight3);
  line(lineX4, lineY4, lineWidth4, lineHeight4);
  fill(255, 128, 0);
  rect(columX1, columY1, columWidth1, columHeight1);
  rect(columX2, columY2, columWidth2, columHeight2);
  rect(columX3, columY3, columWidth3, columHeight3);
  rect(columX4, columY4, columWidth4, columHeight4);
  rect(columX5, columY5, columWidth5, columHeight5);
  rect(columX6, columY6, columWidth6, columHeight6);
  rect(columX7, columY7, columWidth7, columHeight7);
  rect(columX8, columY8, columWidth8, columHeight8);
  rect(columX9, columY9, columWidth9, columHeight9);
  noTint();
  fill(255);
  rect(restartX, restartY, restartWidth, restartHeight);
  image(restart, restartX, restartY, restartWidth, restartHeight);
  if (boy1C1==true) {
    image(boy1, columX1, columY1, columWidth1, columHeight1);
    fill(0, 255, 0);
    rect(yesX1, yesY1, yesWidth1, yesHeight1);
    fill(255, 0, 0);
    rect(noX1, noY1, noWidth1, noHeight1);
  }
  if (girl1C2==true) {
    image(girl1, columX2, columY2, columWidth2, columHeight2);
  }
}//End gridDraw2
//
//
//
//
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
  println("Arrived at Home Screen"); //testing for splash screen start button
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
//
//
//
//
PImage backgroundImage, restart, boy1, congrats, girl1;
//
void imagePopulation() {
  backgroundImage = loadImage ("../Images/maxresdefault.jpg");
  restart = loadImage ("../Images/restart.png");
  boy1 = loadImage ("../Images/boy1.jpg");
  congrats = loadImage ("../Images/congratulation.gif");
  girl1 = loadImage ("../Images/girl1.jpg");
}//End imagePopulation
//
//End imagePopulation subprogram
//
//
//
//
PFont Harrington;
//
void textSetup() {
  //minimum expectation = 1 font
  //
  //Fonts from OS (Operating System)
  // String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  Harrington = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
}//End textSetup
//
void spaceBarText() {
  //rect(startX, startY, startWidth, startHeight);
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 38;
  textFont(Harrington, size); 
  String spaceBar = "Press the SPACE BAR to continue";
  text(spaceBar, startX, startY, startWidth, startHeight);
  fill(resetDefaultInk);
}//End spaceBarText
//
//End text subprogram
//
//
//
//
float congratsX, congratsY, congratsWidth, congratsHeight;
float yayX, yayY, yayWidth, yayHeight;
//
void goodForYou() {
  background(255, 126, 195); 
  rect(congratsX, congratsY, congratsWidth, congratsHeight);
  image(congrats, congratsX, congratsY, congratsWidth, congratsHeight);
  //rect(yayX, yayY, yayWidth, yayHeight);
  fill(255, 0, 0);
  textSize(35);
  text("Congrats you found your LOVER!!!!!!!!!!!!", yayX, yayY, yayWidth, yayHeight);
}//End goodForYou
//
//
//
//
void population() {
  float centerX=appWidth*1/2, centerY=appHeight*1/2;
  startWidth = centerX;
  startHeight = appHeight*1/10;
  startX = centerX - startWidth*1/2;
  startY = centerY - startHeight*1/2;
  backgroundX = appWidth * 0;
  backgroundY = appHeight * 0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  lineX1 = appWidth/3;
  lineY1 = appHeight * 0;
  lineWidth1 = appWidth/3;
  lineHeight1 = appHeight;
  lineX2 = appWidth * 2/3;
  lineY2 = appHeight * 0;
  lineWidth2 = appWidth * 2/3;
  lineHeight2 = appHeight;
  lineX3 = appWidth * 0;
  lineY3 = appHeight/3;
  lineWidth3 = appWidth;
  lineHeight3 = appHeight/3;
  lineX4 = appWidth * 0;
  lineY4 = appHeight * 2/3;
  lineWidth4 = appWidth;
  lineHeight4 = appHeight * 2/3;
  startX2 = appWidth * 7.5/20;
  startY2 = appHeight * 8/20;
  startWidth2 = appWidth * 5/20;
  startHeight2 = appHeight * 1.8/20;
  quitX = appWidth * 7.5/20;
  quitY = appHeight * 10.5/20;
  quitWidth = appWidth * 5/20;
  quitHeight = appHeight * 1.8/20;
  columX1 = appWidth * 0/3;
  columY1 = appHeight * 0/3;
  columWidth1 = appWidth * 1/3;
  columHeight1 = appHeight * 1/3;
  columX2 = appWidth * 1/3;
  columY2 = appHeight * 0/3;
  columWidth2 = appWidth * 1/3;
  columHeight2 = appHeight * 1/3;
  columX3 = appWidth * 2/3;
  columY3 = appHeight * 0/3;
  columWidth3 = appWidth * 1/3;
  columHeight3 = appHeight * 1/3;
  columX4 = appWidth * 0/3;
  columY4 = appHeight * 1/3;
  columWidth4 = appWidth * 1/3;
  columHeight4 = appHeight * 1/3;
  columX5 = appWidth * 1/3;
  columY5 = appHeight * 1/3;
  columWidth5 = appWidth * 1/3;
  columHeight5 = appHeight * 1/3;
  columX6 = appWidth * 2/3;
  columY6 = appHeight * 1/3;
  columWidth6 = appWidth * 1/3;
  columHeight6 = appHeight * 1/3;
  columX7 = appWidth * 0/3;
  columY7 = appHeight * 2/3;
  columWidth7 = appWidth * 1/3;
  columHeight7 = appHeight * 1/3;
  columX8 = appWidth * 1/3;
  columY8 = appHeight * 2/3;
  columWidth8 = appWidth * 1/3;
  columHeight8 = appHeight * 1/3;
  columX9 = appWidth * 2/3;
  columY9 = appHeight * 2/3;
  columWidth9 = appWidth * 1/3;
  columHeight9 = appHeight * 1/3;
  restartX = appWidth * 12.3/20;
  restartY = appHeight * 6.7/20;
  restartWidth = appWidth * 1/20;
  restartHeight = appHeight * 1/20;
  yesX1 = appWidth * 0/3;
  yesY1 = appHeight * 0.35/3;
  yesWidth1 = appWidth * 1/20;
  yesHeight1 = appHeight * 2/20;
  noX1 = appWidth * 0.85/3;
  noY1 = appHeight * 0.35/3;
  noWidth1 = appWidth * 1/20;
  noHeight1 = appHeight * 2/20;
  congratsX = appWidth/4;
  congratsY = appHeight/8;
  congratsWidth = appWidth/2;
  congratsHeight = appHeight/2;
  yayX = appWidth/4;
  yayY = appHeight * 6.2/10;
  yayWidth = appWidth/2;
  yayHeight = appHeight/12;
  //
}//End population
//
//End population subprogram
//
//
//
//
void reset() {
  background(255);
  strokeWeight(6);
  stroke(0);
  line(lineX1, lineY1, lineWidth1, lineHeight1);
  line(lineX2, lineY2, lineWidth2, lineHeight2);
  line(lineX3, lineY3, lineWidth3, lineHeight3);
  line(lineX4, lineY4, lineWidth4, lineHeight4);
  fill(255, 128, 0);
  rect(columX1, columY1, columWidth1, columHeight1);
  rect(columX2, columY2, columWidth2, columHeight2);
  rect(columX3, columY3, columWidth3, columHeight3);
  rect(columX4, columY4, columWidth4, columHeight4);
  rect(columX5, columY5, columWidth5, columHeight5);
  rect(columX6, columY6, columWidth6, columHeight6);
  rect(columX7, columY7, columWidth7, columHeight7);
  rect(columX8, columY8, columWidth8, columHeight8);
  rect(columX9, columY9, columWidth9, columHeight9);
  noTint();
  fill(255);
  rect(restartX, restartY, restartWidth, restartHeight);
  image(restart, restartX, restartY, restartWidth, restartHeight);
  if (boy1C1==true) {
    image(boy1, columX1, columY1, columWidth1, columHeight1);
    fill(0, 255, 0);
    rect(yesX1, yesY1, yesWidth1, yesHeight1);
    fill(255, 0, 0);
    rect(noX1, noY1, noWidth1, noHeight1);
  }
}//End reset
//
//
//
//
float startX, startY, startWidth, startHeight;
//
void splashScreen() {
  /* Note: any visually-based code running is setup() controlled by mouse click
  - background image
  */
  //
  /* any other code for splash screen goes below
  - start button
  - any other instructions
  - splashscreen details
  */
  //background(255);//testing only, not nightmode friendly, ful blue
  backgroundWhiteScreen();
  spaceBarText();
}//End splashScreen
//
//End splashScreen subprogram
//
//
//
//

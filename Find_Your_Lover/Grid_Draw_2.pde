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
float yesX2, yesY2, yesWidth2, yesHeight2, noX2, noY2, noWidth2, noHeight2;
float yesX3, yesY3, yesWidth3, yesHeight3, noX3, noY3, noWidth3, noHeight3;
float yesX4, yesY4, yesWidth4, yesHeight4, noX4, noY4, noWidth4, noHeight4;
float yesX5, yesY5, yesWidth5, yesHeight5, noX5, noY5, noWidth5, noHeight5;
float yesX6, yesY6, yesWidth6, yesHeight6, noX6, noY6, noWidth6, noHeight6;
float yesX7, yesY7, yesWidth7, yesHeight7, noX7, noY7, noWidth7, noHeight7;
Boolean boy1C1=true, girl1C2=false, boy2C3=false, girl2C4=false, boy3C5=false, girl3C6=false, boy4C7=false, girl4C8=false;
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
  if (boy1C1==true) {
    image(boy1, columX1, columY1, columWidth1, columHeight1);
    fill(0, 255, 0);
    rect(yesX1, yesY1, yesWidth1, yesHeight1);
    fill(255, 0, 0);
    rect(noX1, noY1, noWidth1, noHeight1);
  }
  if (girl1C2==true) {
    image(girl1, columX2, columY2, columWidth2, columHeight2);
    fill(0, 255, 0);
    rect(yesX2, yesY2, yesWidth2, yesHeight2);
    fill(255, 0, 0);
    rect(noX2, noY2, noWidth2, noHeight2);
  }
  if (boy2C3==true) {
    image(boy2, columX3, columY3, columWidth3, columHeight3);
    fill(0, 255, 0);
    rect(yesX3, yesY3, yesWidth3, yesHeight3);
    fill(255, 0, 0);
    rect(noX3, noY3, noWidth3, noHeight3);
  }
  if (girl2C4==true) {
    image(girl2, columX4, columY4, columWidth4, columHeight4);
    fill(0, 255, 0);
    rect(yesX4, yesY4, yesWidth4, yesHeight4);
    fill(255, 0, 0);
    rect(noX4, noY4, noWidth4, noHeight4);
  }
  if (boy3C5==true) {
    image(boy3, columX5, columY5, columWidth5, columHeight5);
    fill(0, 255, 0);
    rect(yesX5, yesY5, yesWidth5, yesHeight5);
    fill(255, 0, 0);
    rect(noX5, noY5, noWidth5, noHeight5);
  }
  rect(restartX, restartY, restartWidth, restartHeight);
  image(restart, restartX, restartY, restartWidth, restartHeight);
  if (girl3C6==true) {
    image(girl3, columX6, columY6, columWidth6, columHeight6);
    fill(0, 255, 0);
    rect(yesX6, yesY6, yesWidth6, yesHeight6);
    fill(255, 0, 0);
    rect(noX6, noY6, noWidth6, noHeight6);
  }
  if (boy4C7==true) {
    image(boy4, columX7, columY7, columWidth7, columHeight7);
    fill(0, 255, 0);
    rect(yesX7, yesY7, yesWidth7, yesHeight7);
    fill(255, 0, 0);
    rect(noX7, noY7, noWidth7, noHeight7);
  }
}//End gridDraw2

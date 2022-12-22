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
  reset=false;
}//End reset

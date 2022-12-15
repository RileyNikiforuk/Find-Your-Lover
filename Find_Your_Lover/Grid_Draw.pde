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

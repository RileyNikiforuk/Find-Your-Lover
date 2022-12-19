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

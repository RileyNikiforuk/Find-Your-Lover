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

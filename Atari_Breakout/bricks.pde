class brick {                                                  //creating variables
  float brickX;
  float brickY;
  float brickW;
  float brickH;
  color brickColour = #FFFFFF;

  brick(float brx, float bry, float brw, float brh) {        //creates constructor
    brickX = brx;
    brickY = bry;
    brickW = brw;
    brickH = brh;
  }

  void display() {                                           //creating display function
      fill(brickColour);
      rectMode(CORNER);
      rect(brickX, brickY, brickW, brickH);
  }
}

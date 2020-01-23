class brick {
  float brickX;
  float brickY;
  float brickW;
  float brickH;
  color brickColour = #FFFFFF;

  brick(float brx, float bry, float brw, float brh) {
    brickX = brx;
    brickY = bry;
    brickW = brw;
    brickH = brh;
  }

  void display() {
      fill(brickColour);
      rectMode(CORNER);
      rect(brickX, brickY, brickW, brickH);
  }
}

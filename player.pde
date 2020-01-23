class player {
  float playerX;
  float playerY;
  float playerW;
  float playerH;
  color playerColour = #FFFFFF;
  float pm = mouseX;

  player(float py, float pw, float ph) {
    playerY = py;
    playerW = pw;
    playerH = ph;
  }


  void display() {
    fill(playerColour);
    rectMode(CENTER);
    playerX = mouseX;
    rect(playerX, playerY, playerW, playerH);
  }
}

class player {                                //creating variables
  float playerX;
  float playerY;
  float playerW;
  float playerH;
  color playerColour = #FFFFFF;
  float pm = mouseX;

  player(float py, float pw, float ph) {    //creating constructor
    playerY = py;
    playerW = pw;
    playerH = ph;
  }


  void display() {                         //creating display function
    fill(playerColour);
    rectMode(CENTER);
    playerX = mouseX;
    rect(playerX, playerY, playerW, playerH);
  }
}

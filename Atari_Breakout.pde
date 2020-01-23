void setup() {
  size(1600, 1000);                                                   //size of screen
  file = new SoundFile(this, "BING.mp3");                             //implements sound file from folder
  file.amp(0.1);                                                      //how loud is the file

  b1= new ball (ballX, ballY, ballR, speedX, speedY);                 //creates new ball
  
  brickGrid = new brick[brickC][brickR];                              //creates grid for the bricks using brick columns and brick rows
  
  for (int i = 0; i < brickC; i++) {                                  //for statement that creates how many rows and how many columns
    for (int j = 0; j < brickR; j++) {
      brickGrid[i][j] = new brick(160 * i, 40 * j, brickW, brickH);
    }
  }
}

void draw() {
  background(background);
  s1 = new scoreboard(score, width/2, height/2);
  s1.display();
  p = new player(playerY, playerW, playerH);
  b1.display();
  p.display();
  b1.bounce(p);

  for (int i = 0; i < brickC; i++) {
    for (int j = 0; j < brickR; j++) {
      brickGrid[i][j].display();
      b1.breaku(brickGrid[i][j]);
    }
  }
}

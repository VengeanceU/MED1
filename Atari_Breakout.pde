void setup() {
  size(1600, 1000);                                                   //size of screen
  file = new SoundFile(this, "BING.mp3");                             //implements sound file from folder
  file.amp(0.1);    //how loud is the file

  b1= new ball (ballX, ballY, ballR, speedX, speedY);                 //creates new ball

  brickGrid = new brick[brickC][brickR];                              //creates grid for the bricks using brick columns and brick rows

  for (int i = 0; i < brickC; i++) {                                  //for statement that creates how many rows and how many columns
    for (int j = 0; j < brickR; j++) {
      brickGrid[i][j] = new brick(gridW * i, gridH * j, brickW, brickH);
    }
  }
  heart = loadImage("heart.png");                                      //loads imagefile
}

void draw() {
  background(background);
  
  
  s1 = new scoreboard(score, scoreX, scoreY);                       //creates new scoreboard
  s1.display();
  
  h1 = new health(healthx,healthy);
  h1.display();
  h1.display2();
  h1.display3();
  
  p = new player(playerY, playerW, playerH);
  p.display();
  
  
  b1.display();
  b1.collision(p);

  for (int i = 0; i < brickC; i++) {
    for (int j = 0; j < brickR; j++) {
      brickGrid[i][j].display();
      b1.breaku(brickGrid[i][j]);
    }
  }
  if (oob>=3){
  text("GAME OVER",width/2-150,height/2);
  
  }
}

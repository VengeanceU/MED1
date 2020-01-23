class ball {                                                                 //creating variables
  float ballR;
  float ballX;
  float ballY;
  color ballColour = #FF00FF;

  float speedValue = 10;                                                      //speed value used for later
  float speedX;
  float speedY;


  ball(float bx, float by, float br, float bsx, float bsy) {                  //creates contructor
    ballR = br;
    ballX = bx;
    ballY = by;
    speedX = bsx;
    speedY = bsy;
  }

  void display() {                                                            //creates display function
    fill(ballColour);
    ellipse(ballX, ballY, ballR, ballR);
    move();                                                                   //nests move function created underneath
  }


  void move() {                                                               //creates move function from speed values
    ballX += speedX;
    ballY += speedY;
    boundries();                                                              //nests boundries
  }


  void boundries() {                                                         //boundry function created using width and height of screen calculated with the ballX+ ball radius
    if (ballX >= width-ballR || ballX <= 0 + ballR) {
      speedX *= -1;
    }
    if (ballY >= height-ballR || ballY <= 0+ballR) {
      speedY *= -1;
    }
    if (ballY >= height-ballR){                                              //gives value oob+1 every time ball hits bottom
    oob+=1;
    println(oob);
    }
  }

  void collision(player other) {                                             //creates collition for ball and player
    if (ballY + ballR > other.playerY-other.playerH/2 && ballX > other.playerX - other.playerW/2 && ballX  < other.playerX + other.playerW/2) {
      speedY *= -1;
      speedX = (ballX - (other.pm))/speedValue;
    }
  }

  void breaku(brick other) {                                                 //creates collition with ball and bricks
    if (ballY -ballR <= other.brickY+other.brickH && ballX > 
      other.brickX && ballX < other.brickX+other.brickW) {
      other.brickW = 0;
      other.brickH = 0;
      speedY *=-1;
      score+=100;
      file.play();                                                            //sound file played when hitting bricks with ball
      
    }
  }
}

class ball {
  float ballR;
  float ballX;
  float ballY;
  color ballColour = #FF00FF;

  float speedValue = 10;
  float speedX;
  float speedY;


  ball(float bx, float by, float br, float bsx, float bsy) { 
    ballR = br;
    ballX = bx;
    ballY = by;
    speedX = bsx;
    speedY = bsy;
  }

  void display() {
    fill(ballColour);
    ellipse(ballX, ballY, ballR, ballR);
    move();
  }


  void move() {
    ballX += speedX;
    ballY += speedY;
    boundries();
  }


  void boundries() { 
    if (ballX >= width-ballR || ballX <= 0 + ballR) {
      speedX *= -1;
    }
    if (ballY >= height-ballR || ballY <= 0+ballR) {
      speedY *= -1;
    }
  }

  void bounce(player other) {
    if (ballY + ballR > other.playerY-other.playerH/2 && ballX > other.playerX - other.playerW/2 && ballX  < other.playerX + other.playerW/2) {
      speedY *= -1;
      speedX = (ballX - (other.pm))/speedValue;
    }
  }

  void breaku(brick other) {
    if (ballY -ballR <= other.brickY+other.brickH && ballX > 
      other.brickX && ballX < other.brickX+other.brickW) {
      other.brickW = 0;
      other.brickH = 0;
      speedY *=-1;
      println(speedY);
      score+=100;
      file.play();
      
    }
  }
}

class scoreboard {

  scoreboard(int s, int sx, int sy) {        //creating constructor
    score = s;
    scoreX = sx;
    scoreY = sy;
  }
  void display() {                          //creates display function
    text(score, scoreX, scoreY);
    textSize(50);
    fill (255);
  }
}

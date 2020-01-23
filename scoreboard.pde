class scoreboard {

  scoreboard(int s, int sx, int sy) {
    score = s;
    scoreX = sx;
    scoreY = sy;
  }
  void display() {
    text(score, scoreX, scoreY);
    textSize(100);
    fill (255);
  }
}

class health {  

  health(int hx, int hy) {                //creating constructor
    healthx = hx;
    healthy=hy;
  }
  
  void display() {                        //repeated display functions called depending on oob value
    if (oob<=2) {
      heart.resize(hh, hw);
      image(heart, healthx, healthy);
    }
  }


  void display2() {
    if (oob<=1) {
      image(heart, healthx+50, healthy);
    }
  }


  void display3() {
    if (oob<=0) {
      image(heart, healthx+100, healthy);
    }
  }
}

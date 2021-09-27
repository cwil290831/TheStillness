//Regular platform setup
class Ground {
  float groundX, groundY;
  float groundW, groundH;


  Ground(float tempX, float tempY, float tempW) {
    groundX = tempX;
    groundY = tempY;
    groundW = tempW;
    groundH = 20;
  }
  
  void displayPlatform() {
    fill(41, 144, 10);
    noStroke();
    rectMode(CENTER);
    rect(groundX, groundY, groundW, groundH);
  }
}

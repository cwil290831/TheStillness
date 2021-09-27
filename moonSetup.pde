//Code to display, move and capture the moon

class Moon {
  float moonX, moonY;
  float moonW, moonH;
  float moonSpeedX, moonSpeedY;
  boolean hasMoon = false; //do we have the moon? No, set to false

  Moon(float mX, float mY, float mSpeedX, float mSpeedY) {
    moonX = mX;
    moonY = mY;
    moonSpeedX = mSpeedX;
    moonSpeedY = mSpeedY;
    moonW = width*.01;
    moonH = height*.02;
  }

  /*..................................................................................................................................*/

  void displayMoon() {
    noStroke();
    fill(255);
    ellipse(moonX, moonY, moonW, moonH);
  }

  /*..................................................................................................................................*/

  void moveMoon() {
    //allows moon to "bounce" around the world
    moonX += moonSpeedX;
    moonY += moonSpeedY;

    if ((moonX > width) || (moonX < 0)) {
      moonSpeedX *= - 1;
    }

    if ((moonY > height) || (moonY < 0)) {
      moonSpeedY *= - 1;
    }
  }

  /*..................................................................................................................................*/

  void caughtMoon() {
    //allows orogene to capture the moon and bring it to the final obelisk gate
    if ((moonX < Oro.oroX + Oro.oroW) && 
      (moonX > Oro.oroX - Oro.oroW) &&
      (moonY < Oro.oroY + Oro.oroH) &&
      (moonY > Oro.oroY - Oro.oroH)) {

      moonX = Oro.oroX;
      moonY = Oro.oroY;
      moonSpeedX = Oro.walkX;
      moonSpeedY = Oro.walkY;

      hasMoon = true; // do we have the moon? yes, set to true
    }
  }
}

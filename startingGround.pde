//creates the platform at the bottom of the sketch level that the player begins on

class StartingPlatform {

  float rectX, rectY;
  float rectW, rectH;

  StartingPlatform(float pX, float pY, float pW, float pH) {
    rectX = pX;
    rectY = pY;
    rectW = pW;
    rectH = pH;
  }

  void displayStart() {
    //starting platform 
    noStroke();
    fill(41, 144, 10);
    rectMode(CORNER);
    rect(rectX, rectY, rectW, rectH);
  }
  
 
}

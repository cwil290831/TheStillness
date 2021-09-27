//The Obelisk  Gate setup

class Gate {
  float gateX, gateY;
  float gateW, gateH;
  float theta;

  Gate(float gaX, float gaY, float gaW, float gaH) {
    gateX = gaX;
    gateY = gaY;
    gateW = gaW;
    gateH = gaH;
  }

  void displayGate() {
    noStroke();
    fill(200, 0, 0);
    rect(gateX, gateY, gateW, gateH);
  }
}

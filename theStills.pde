//creates the second hazard to the orogenes goal, the Stills

class Stills {
  float stillX1, stillY1;
  float stillX2, stillY2;
  float stillX3, stillY3;

  Stills(float sX1, float sY1, float sX2, float sY2, float sX3, float sY3) {
    stillX1 = sX1;
    stillX2 = sX2;
    stillX3 = sX3;
    stillY1 = sY1;
    stillY2 = sY2;
    stillY3 = sY3;
  }

  void displayStills() {
    noStroke();
    fill(150, 0, 0);
    triangle(stillX1, stillY1, stillX2, stillY2, stillX3, stillY3);
  }

  /*...................................................................................................................................*/

  //level one
  void StillsLevelOne() {
    //ensures code is applied to all stills
    for (int i = 0; i < stillsLevelOne.length; i++) { 

      stillsLevelOne[i].displayStills();

      //consequence of connecting code
      if ((stillsLevelOne[i].stillX1 <= Oro.oroX + Oro.oroW) &&
        (stillsLevelOne[i].stillX2 <= Oro.oroX + Oro.oroW) &&
        (stillsLevelOne[i].stillX3 <= Oro.oroX + Oro.oroW) &&
        (stillsLevelOne[i].stillY1 <= Oro.oroY + Oro.oroH) &&
        (stillsLevelOne[i].stillY2 <= Oro.oroY + Oro.oroH) &&
        (stillsLevelOne[i].stillY3 <= Oro.oroY + Oro.oroH) &&
        (stillsLevelOne[i].stillX1 >= Oro.oroX - Oro.oroW) &&
        (stillsLevelOne[i].stillX2 >= Oro.oroX - Oro.oroW) &&
        (stillsLevelOne[i].stillX3 >= Oro.oroX - Oro.oroW) &&
        (stillsLevelOne[i].stillY1 >= Oro.oroY - Oro.oroH) &&
        (stillsLevelOne[i].stillY2 >= Oro.oroY - Oro.oroH) &&
        (stillsLevelOne[i].stillY3 >= Oro.oroY - Oro.oroH)) {
        lostLevelOne = true; //ties consequence to lostLevelOne();
      }
    }
  }

  /*...................................................................................................................................*/

  //level two
  void StillsLevelTwo() {
    //ensures code is applied to all stills
    for (int i = 0; i < stillsLevelTwo.length; i++) { 
      stillsLevelTwo[i].displayStills();

      //consequence of connecting code
      if ((stillsLevelTwo[i].stillX1 <= Oro.oroX + Oro.oroW) &&
        (stillsLevelTwo[i].stillX2 <= Oro.oroX + Oro.oroW) &&
        (stillsLevelTwo[i].stillX3 <= Oro.oroX + Oro.oroW) &&
        (stillsLevelTwo[i].stillY1 <= Oro.oroY + Oro.oroH) &&
        (stillsLevelTwo[i].stillY2 <= Oro.oroY + Oro.oroH) &&
        (stillsLevelTwo[i].stillY3 <= Oro.oroY + Oro.oroH) &&
        (stillsLevelTwo[i].stillX1 >= Oro.oroX - Oro.oroW) &&
        (stillsLevelTwo[i].stillX2 >= Oro.oroX - Oro.oroW) &&
        (stillsLevelTwo[i].stillX3 >= Oro.oroX - Oro.oroW) &&
        (stillsLevelTwo[i].stillY1 >= Oro.oroY - Oro.oroH) &&
        (stillsLevelTwo[i].stillY2 >= Oro.oroY - Oro.oroH) &&
        (stillsLevelTwo[i].stillY3 >= Oro.oroY - Oro.oroH)) {
        lostLevelTwo = true;//ties consequence to lostLevelTwo();
      }
    }
  }

  /*...................................................................................................................................*/

  //level three
  void StillsLevelThree() {
    //ensures code is applied to all stills
    for (int i = 0; i < stillsLevelThree.length; i++) { 
      stillsLevelThree[i].displayStills();

      //consequence of connecting code
      if ((stillsLevelThree[i].stillX1 <= Oro.oroX + Oro.oroW) &&
        (stillsLevelThree[i].stillX2 <= Oro.oroX + Oro.oroW) &&
        (stillsLevelThree[i].stillX3 <= Oro.oroX + Oro.oroW) &&
        (stillsLevelThree[i].stillY1 <= Oro.oroY + Oro.oroH) &&
        (stillsLevelThree[i].stillY2 <= Oro.oroY + Oro.oroH) &&
        (stillsLevelThree[i].stillY3 <= Oro.oroY + Oro.oroH) &&
        (stillsLevelThree[i].stillX1 >= Oro.oroX - Oro.oroW) &&
        (stillsLevelThree[i].stillX2 >= Oro.oroX - Oro.oroW) &&
        (stillsLevelThree[i].stillX3 >= Oro.oroX - Oro.oroW) &&
        (stillsLevelThree[i].stillY1 >= Oro.oroY - Oro.oroH) &&
        (stillsLevelThree[i].stillY2 >= Oro.oroY - Oro.oroH) &&
        (stillsLevelThree[i].stillY3 >= Oro.oroY - Oro.oroH)) {
        lostLevelThree = true;//ties consequence to lostLevelThree();
      }
    }
  }
}

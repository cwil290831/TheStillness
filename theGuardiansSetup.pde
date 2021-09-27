//creates the first hazard to the orogenes goal, their guardians

class Guardians {
  float guardX, guardY;
  float guardSpeedX;
  int guardW, guardH;

  Guardians(float gX, float gY) {
    guardX = gX;
    guardY = gY;
    guardW = 10;
    guardH = 10;
    guardSpeedX = 1;
  }

  void displayGuardians() {
    fill(209, 248, 252);
    ellipse(guardX, guardY, guardW, guardH);
  }

/*...................................................................................................................................*/

  //level one consequences 
  
  //guardian one
  void guard0LevelOne() {
    //guard movements
    guardX +=  guardSpeedX;
    if ((guardsLevelOne[0].guardX < width/10) || 
    (guardsLevelOne[0].guardX > start1.rectW + width/10)) {
      guardsLevelOne[0].guardSpeedX *= -1;
    }
    
    //consequence of connecting code
    if ((guardsLevelOne[0].guardX<= Oro.oroX + Oro.oroW/2) &&
      (guardsLevelOne[0].guardX >= Oro.oroX - Oro.oroW/2) &&
      (guardsLevelOne[0].guardY <= Oro.oroY + Oro.oroH/2) &&
      (guardsLevelOne[0].guardY >= Oro.oroY - Oro.oroH/2)) {
      lostLevelOne = true; //ties consequence to lostLevelOne();
      livesLevelOne -= 1;
    }
  }

//guardian two
  void guard1LevelOne() {
    //guard movements
    guardX +=  guardSpeedX;
    if ((guardsLevelOne[1].guardX < groundLevelOne[1].groundX - width*.08) || 
      (guardsLevelOne[1].guardX > groundLevelOne[1].groundX + width*.08)) {
      guardsLevelOne[1].guardSpeedX *= -1;
    }

    //consequence of connecting code
    if ((guardsLevelOne[1].guardX<= Oro.oroX + Oro.oroW/2) &&
      (guardsLevelOne[1].guardX >= Oro.oroX - Oro.oroW/2) &&
      (guardsLevelOne[1].guardY <= Oro.oroY + Oro.oroH/2) &&
      (guardsLevelOne[1].guardY >= Oro.oroY - Oro.oroH/2)) {
      lostLevelOne = true;//ties consequence to lostLevelOne();
      livesLevelOne -= 1;
    }
  }

/*...................................................................................................................................*/

  //level two consequences 
  
  //guardian one
  void guard0LevelTwo() {
    //guard movements
    guardX +=  guardSpeedX;
    if ((guardsLevelTwo[0].guardX < groundLevelTwo[10].groundX - width*.08) || 
      (guardsLevelTwo[0].guardX > groundLevelTwo[10].groundX + width*.08)) {
      guardsLevelTwo[0].guardSpeedX *= -1; //bounce back and forth between the limits set
    } 
    
    //consequence of connecting code
    if ((guardsLevelTwo[0].guardX <= Oro.oroX + Oro.oroW/2) &&
      (guardsLevelTwo[0].guardX >= Oro.oroX - Oro.oroW/2) &&
      (guardsLevelTwo[0].guardY <= Oro.oroY + Oro.oroH/2) &&
      (guardsLevelTwo[0].guardY >= Oro.oroY - Oro.oroH/2)) {
      lostLevelTwo = true; //ties consequence to lostLevelTwo();
      livesLevelTwo -= 1;
    }
  }

//guardian two
  void guard1LevelTwo() {
    //guard movements
    guardX +=  guardSpeedX;
    if ((guardsLevelTwo[1].guardX < groundLevelTwo[4].groundX - width*.08) || 
      (guardsLevelTwo[1].guardX > groundLevelTwo[4].groundX + width*.08)) {
      guardsLevelTwo[1].guardSpeedX *= -1; //bounce back and forth between the limits set
    }
    
    //consequence of connecting code
    if ((guardsLevelTwo[1].guardX <= Oro.oroX + Oro.oroW/2) &&
      (guardsLevelTwo[1].guardX >= Oro.oroX - Oro.oroW/2) &&
      (guardsLevelTwo[1].guardY <= Oro.oroY + Oro.oroH/2) &&
      (guardsLevelTwo[1].guardY >= Oro.oroY - Oro.oroH/2)) {
      lostLevelTwo = true; //ties consequence to lostLevelTwo();
      livesLevelTwo -= 1;
    }
  }
  
/*...................................................................................................................................*/
  //level three consequences 
  
  //guardian one
  void guard0LevelThree() {
    //guard movements
    guardX +=  guardSpeedX;
    if ((guardsLevelThree[0].guardX < groundLevelThree[4].groundX - width*.08) || 
      (guardsLevelThree[0].guardX > groundLevelThree[4].groundX + width*.08)) {
      guardsLevelThree[0].guardSpeedX *= -1; //bounce back and forth between the limits set
    } 
    
    //consequence of connecting code
    if ((guardsLevelThree[0].guardX <= Oro.oroX + Oro.oroW/2) &&
      (guardsLevelThree[0].guardX >= Oro.oroX - Oro.oroW/2) &&
      (guardsLevelThree[0].guardY <= Oro.oroY + Oro.oroH/2) &&
      (guardsLevelThree[0].guardY >= Oro.oroY - Oro.oroH/2)) {
      lostLevelThree = true;//ties consequence to lostLevelThree();
      livesLevelThree -= 1;
    }
  }
  
  //guardian two
  void guard1LevelThree() {
    //guard movements
    guardX +=  guardSpeedX;
    if ((guardsLevelThree[1].guardX < groundLevelThree[9].groundX - width*.08) || 
      (guardsLevelThree[1].guardX > groundLevelThree[9].groundX + width*.08)) {
      guardsLevelThree[1].guardSpeedX *= -1; //bounce back and forth between the limits set
    } 
    
    //consequence of connecting code
    if ((guardsLevelThree[1].guardX <= Oro.oroX + Oro.oroW/2) &&
      (guardsLevelThree[1].guardX >= Oro.oroX - Oro.oroW/2) &&
      (guardsLevelThree[1].guardY <= Oro.oroY + Oro.oroH/2) &&
      (guardsLevelThree[1].guardY >= Oro.oroY - Oro.oroH/2)) {
      lostLevelThree = true; //ties consequence to lostLevelThree();
      livesLevelThree -= 1;
    }
  }
  
  
  //guardian three
   void guard2LevelThree() {
    //guard movements
    guardX +=  guardSpeedX;
    if ((guardsLevelThree[2].guardX < groundLevelThree[6].groundX - width*.08) || 
      (guardsLevelThree[2].guardX > groundLevelThree[6].groundX + width*.08)) {
      guardsLevelThree[2].guardSpeedX *= -1; //bounce back and forth between the limits set
    } 
    //consequence code
    if ((guardsLevelThree[2].guardX <= Oro.oroX + Oro.oroW/2) &&
      (guardsLevelThree[2].guardX >= Oro.oroX - Oro.oroW/2) &&
      (guardsLevelThree[2].guardY <= Oro.oroY + Oro.oroH/2) &&
      (guardsLevelThree[2].guardY >= Oro.oroY - Oro.oroH/2)) {
      lostLevelThree = true; //ties consequence to lostLevelThree();
      livesLevelThree -= 1;
    }
  }
}

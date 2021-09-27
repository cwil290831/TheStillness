//functions involving levels and game play are found below - switch, level functions, win and lose functions

//code for moving from level to level
void switchScene() {
  //starting screen to level one
  if (scene == 1) {
    if (keyCode == ENTER) { //enter = return button
      scene = 2;
    }
  }

  //level one to level two - if the player goes through gate1
  if (scene == 2) {
    if ((Oro.oroX > gate1.gateX - gate1.gateW) && (Oro.oroX < gate1.gateX + gate1.gateW ) &&
      (Oro.oroY > gate1.gateY - gate1.gateH) && (Oro.oroY < gate1.gateY + gate1.gateH)) {
      Oro.oroY = height - 30;
      Oro.oroX = width/2;
      scene = 3;
    }
  }

  //level two to level 3 - if the player goes through gate2
  if (scene == 3) {
    if ((Oro.oroX > gate2.gateX - gate2.gateW) && (Oro.oroX < gate2.gateX + gate2.gateW) &&
      (Oro.oroY > gate2.gateY - gate2.gateH) && (Oro.oroY < gate2.gateY + gate2.gateH)) {
      Oro.oroY = height - 30;
      Oro.oroX = width/2;
      scene = 4;
    }
  }
}

/*...................................................................................................................................*/


//conditions for starting screen - scene 1
void startScreen() {
  image(startScreen, 0, 0, width, height);

  //welcome to the world code 
  textSize(40);
  fill(229, 191, 65);
  text("WELCOME TO THE STILLNESS", width*.03, height*.2);

  //instructions code
  textSize(25);
  fill(229, 191, 65);
  text("Orogene Instructions: ", width*.03, height*.80);
  text("Keys: UP = Jump, LEFT,RIGHT = left, right", width*.03, height*.83);
  text("Goal: get through The Stillness", width*.03, height*.86);
  text("and bring the Moon to the Oblisk Gate", width*.03, height*.89);
  text("to bring life back to your world", width*.03, height*.92);

  textSize(40);
  fill(252, 210, 125);
  text("Hit RETURN/ENTER to start", width*.03, height*.5);
}

/*...................................................................................................................................*/

//conditions for level one - scene 2
void levelOne() {
  background(229, 191, 65);

  //player functions
  Oro.displayOrogene();
  Oro.moveOrogene();
  Oro.platformIntesectLevelOne();

  //obelisk gate 1 function
  gate1.displayGate();

  //starting platform 1
  start1.displayStart();

  //platforms functions
  for (int i = 0; i <  groundLevelOne.length; i++) {
    groundLevelOne[i].displayPlatform();
  }

  //guardian functions
  guardsLevelOne[0].displayGuardians();
  guardsLevelOne[0].guard0LevelOne();
  guardsLevelOne[1].displayGuardians();
  guardsLevelOne[1].guard1LevelOne();

  //stills functions
  for (int i =0; i < stillsLevelOne.length; i++) {
    stillsLevelOne[i].StillsLevelOne();
  }

  //function that dictate whether or not you have lost the level
  lostLevelOne();
}

/*...................................................................................................................................*/

//conditions for level two - scene 3
void levelTwo() {
  background(139, 110, 35);

  //player functions
  Oro.displayOrogene();
  Oro.moveOrogene();
  Oro.platformIntesectLevelTwo();

  //obelisk gate 2 function
  gate2.displayGate();

  //starting platform 2
  start2.displayStart();

  //platforms functions
  for (int i = 0; i <  groundLevelTwo.length; i++) {
    groundLevelTwo[i].displayPlatform();
  }

  //guardian functions
  guardsLevelTwo[0].displayGuardians();
  guardsLevelTwo[0].guard0LevelTwo();
  guardsLevelTwo[1].displayGuardians();
  guardsLevelTwo[1].guard1LevelTwo();

  //stills functions
  for (int i =0; i < stillsLevelTwo.length; i++) {
    stillsLevelTwo[i].StillsLevelTwo();
  }

  //function that dictate whether or not you have lost the level
  lostLevelTwo();
}

/*...................................................................................................................................*/

//conditions for level three - scene 4
void levelThree() {
  background(50);

  //player functions
  Oro.displayOrogene();
  Oro.moveOrogene();
  Oro.platformIntersectLevelThree();

  //obelisk gate 2 function
  gate3.displayGate();
  
  //starting platform 3
  start3.displayStart();

  //platform functions 
  for (int i = 0; i < groundLevelThree.length; i++) {
    groundLevelThree[i].displayPlatform();
  }

  //moon functions
  moon.displayMoon();
  moon.moveMoon();
  moon.caughtMoon();

  //guardian functions
  guardsLevelThree[0].displayGuardians();
  guardsLevelThree[0].guard0LevelThree();
  guardsLevelThree[1].displayGuardians();
  guardsLevelThree[1].guard1LevelThree();
  guardsLevelThree[2].displayGuardians();
  guardsLevelThree[2].guard2LevelThree();

  //stills functions
  for (int i =0; i < stillsLevelThree.length; i++) {
    stillsLevelThree[i].StillsLevelThree();
  }

  //function that dictate whether or not you have lost the level
  lostLevelThree();

  //winning the game can only occur in level 3 
  won();
}

/*...................................................................................................................................*/

//win, lose and reset code
void won() {
  //collect the moon and pass through the final gate (gate3)
  if ((Oro.oroX > gate3.gateX - gate3.gateW) && (Oro.oroX < gate3.gateX + gate3.gateW) &&
    (Oro.oroY > gate3.gateY - gate3.gateH) && (Oro.oroY < gate3.gateY + gate3.gateH)) {
    if (moon.hasMoon == true) {
      image(wonScreen, 0, 0, width, height);
      textSize(40);
      fill(69, 203, 16);
      text("The Earth Thanks You", width*.1, height/2);
      noLoop();
    }
  }
}

void lostGame() {
  //the restart of the game puts player back at start screen if they fall through the bottom
  if ((Oro.oroY + Oro.oroH >= height) && (Oro.oroY - Oro.oroH >= height)) {
    evilEarth -= 1;
    scene = 1;
    Oro.oroY = height - 30;
    Oro.oroX = width/2;
  }
}
void lostLevelOne() {
  //resets a level after connection with a hazard
  //level one back to start
  if (lostLevelOne == true) {
    lostLevelOne = false;
    scene = 1;
    Oro.oroY = height - 30;
    Oro.oroX = width/2;
  }
}

void lostLevelTwo() {
  //level two back to level one
  if (lostLevelTwo == true) {
    lostLevelTwo = false;
    scene = 2;
    Oro.oroY = height - 30;
    Oro.oroX = width/2;
  }
}

void lostLevelThree() { 
  //level three back to level two
  if (lostLevelThree == true) {
    lostLevelThree = false;
    scene = 3;
    Oro.oroY = height - 30;
    Oro.oroX = width/2;
  }
}

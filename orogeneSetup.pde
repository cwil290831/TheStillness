//code to display,and move orogene, as well as code that dictate the connection between the ground and the orogenes

class Orogenes {

  float oroX, oroY;
  float oroW, oroH;

  //player walking speeds
  float walkX, walkY;

  //height orogene can jump
  float distanceY; 

  //allows orogene to land on platforms
  boolean onLand;

  //inserts gravity into the world
  float gravity;
  boolean runGravity;

  //controls jump
  boolean canJump;


  Orogenes() {
    oroX = width/2; 
    oroY = height - 30;
    oroW = width*.03;
    oroH = width*.03;

    //jumping conditions
    distanceY = oroH*.75;
    walkX = 0;
    walkY = 0;

    //allows orogene to connect to the platform
    onLand = true;

    //control of gravity in the world
    gravity = 0.7;
    runGravity  = false;

    //says that player can jump up
    canJump = true;
  }

/*..................................................................................................................................*/

  void displayOrogene() {
    fill(85, 54, 8);
    noStroke();
    rect(oroX, oroY, oroW, oroH);
  }

/*..................................................................................................................................*/

  void moveOrogene() {
    //orogene movements
    oroX += walkX;
    oroY += walkY;


    //player key movements
    if (keyPressed) {
      if (keyCode == RIGHT) {
        oroX += 2;
      }
      if (keyCode == LEFT) {
        oroX -= 2;
      }

      //jump code
      if ((keyCode == UP) && (canJump == true)) {
        walkY = - distanceY;
        onLand = false;
        runGravity = true;
        canJump = false;
      }
    }

    if ((onLand == false) && (runGravity == true)) {
      //applies gravity to player
      walkY += gravity;
    }
    keyReleased();
  }

  //semi fixes the problem that one runs into when the key is pressed too much, and when the player falls from too heigh a height and dies
  void keyReleased() {
    if ((keyCode != RIGHT) && (keyCode != LEFT) && (keyCode != UP)) {
      walkX = 0;
      walkY = 0;
    }
  }

/*..................................................................................................................................*/

  //makes player land on platform
  void land() {
    onLand = true;
    runGravity = false;
    walkY = 0;
    oroY -= oroH/12;
  }

  //detects intersection with a platforms for each level, allows land(); to "connect" with something

/*..................................................................................................................................*/

  //level one
  void platformIntesectLevelOne() {

    //starting platform level one landing code
    if ((oroY < start1.rectY + start1.rectH/2) && 
      (oroY > start1.rectY - start1.rectH/2) &&
      (oroX + oroW/2  < start1.rectX + start1.rectW)
      && (oroX + oroW/2 > start1.rectX)) {
      land();
      canJump = true;
    } else {
      onLand = false;
      runGravity = true;
    }

    //general platforms level one landing code
    for (int i = 0; i <  groundLevelOne.length; i++) { 
      if ((oroY < groundLevelOne[i].groundY +  groundLevelOne[i].groundH) && 
        (oroY > groundLevelOne[i].groundY - groundLevelOne[i].groundH) &&
        (oroX + oroW < groundLevelOne[i].groundX + groundLevelOne[i].groundW*.8) &&
        (oroX + oroW > groundLevelOne[i].groundX - groundLevelOne[i].groundW*.45)) {
        land();
        canJump = true;
      } else {
        onLand = false;
        runGravity = true;
      }
    }
  }

/*..................................................................................................................................*/

  //level two
  void platformIntesectLevelTwo() {
    //starting platform level two landing code
    if ((oroY < start2.rectY + start2.rectH/2) && 
      (oroY > start2.rectY - start2.rectH/2) &&
      (oroX + oroW/2  < start2.rectX + start2.rectW)
      && (oroX + oroW/2 > start2.rectX)) {
      land();
      canJump = true;
    } else {
      onLand = false;
      runGravity = true;
    }

    //general platforms level one landing code
    for (int i = 0; i <  groundLevelTwo.length; i++) { 
      if ((oroY < groundLevelTwo[i].groundY +  groundLevelTwo[i].groundH) && 
        (oroY > groundLevelTwo[i].groundY - groundLevelTwo[i].groundH) &&
        (oroX + oroW < groundLevelTwo[i].groundX + groundLevelTwo[i].groundW*.8) &&
        (oroX + oroW > groundLevelTwo[i].groundX - groundLevelTwo[i].groundW*.45)) {
        land();
        canJump = true;
      } else {
        onLand = false;
        runGravity = true;
      }
    }
  }

/*..................................................................................................................................*/

  //level three
  void platformIntersectLevelThree() {
    //starting platform level three code
    if ((oroY < start3.rectY + start3.rectH/2) && 
      (oroY > start3.rectY - start3.rectH/2) &&
      (oroX + oroW/2  < start3.rectX + start3.rectW)
      && (oroX + oroW/2 > start3.rectX)) {
      land();
      canJump = true;
    } else {
      onLand = false;
      runGravity = true;
    }

    //general platforms level three code
    for (int i = 0; i < groundLevelThree.length; i++) { 
      if ((oroY < groundLevelThree[i].groundY +  groundLevelThree[i].groundH) && 
        (oroY > groundLevelThree[i].groundY - groundLevelThree[i].groundH) &&
        (oroX + oroW < groundLevelThree[i].groundX + groundLevelThree[i].groundW*.8) &&
        (oroX + oroW > groundLevelThree[i].groundX - groundLevelThree[i].groundW*.45)) {
        land();
        canJump = true;
      } else {
        onLand = false;
        runGravity = true;
      }
    }
  }
}

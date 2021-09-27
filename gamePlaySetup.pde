//void setup and void draw are found below

void setup() {
  //screens
  startScreen = loadImage("start3.jpg");
  wonScreen = loadImage("won.jpg");

  /*...................................................................................................................................*/

  //player
  Oro = new Orogenes();
  
  /*...................................................................................................................................*/

  //moon
  moon = new Moon(int(random(0, width)), int(random(0, height)), 2, 2);

  /*...................................................................................................................................*/

  //level one 
  
  //starting platform
  start1 = new StartingPlatform(width/10, height-20, width*.75, height*.03);
  
  //obelisk gate 1 goes to level two
  gate1 = new Gate(width*.965, height*.005, width*.03, height*.03);

  //guardians 
  guardsLevelOne[0] = new Guardians(width/10, height -25);//starting platform
  guardsLevelOne[1] = new Guardians(width*.57, height*.10);//on ground [1] - 2

  //this set of stills are on ground [9] - 9
  stillsLevelOne[0] = new Stills(width*.51, height*.815, width*.52, height*.8, width*.53, height*.815);
  stillsLevelOne[1] = new Stills(width*.53, height*.815, width*.54, height*.8, width*.55, height*.815);
  stillsLevelOne[2] = new Stills(width*.55, height*.815, width*.56, height*.8, width*.57, height*.815);

  //this set of stills are on ground [5] - 5
  stillsLevelOne[3] = new Stills(width*.25, height*.435, width*.26, height*.42, width*.27, height*.435);
  stillsLevelOne[4] = new Stills(width*.27, height*.435, width*.28, height*.42, width*.29, height*.435);
  stillsLevelOne[5] = new Stills(width*.29, height*.435, width*.30, height*.42, width*.31, height*.435);


  //platforms for level one
  groundLevelOne[0] = new Ground(width*.96, height*.055, width*.16);//1
  groundLevelOne[1] = new Ground(width*.57, height*.12, width*.16);//2
  groundLevelOne[2] = new Ground(width*.73, height*.12, width*.16);//2a - double platform
  groundLevelOne[3] = new Ground(width*.30, height*.20, width*.16);//3
  groundLevelOne[4] = new Ground(width*.48, height*.30, width*.16);//4
  groundLevelOne[5] = new Ground(width*.32, height*.45, width*.16);//5
  groundLevelOne[6] = new Ground(width*.55, height*.52, width*.16);//6
  groundLevelOne[7] = new Ground(width*.78, height*.60, width*.16);//7
  groundLevelOne[8] = new Ground(width*.58, height*.70, width*.16);//8
  groundLevelOne[9] = new Ground(width*.5, height*.83, width*.16);//9
  groundLevelOne[10] = new Ground(width*.25, height*.90, width*.16);//10

  /*...................................................................................................................................*/

  //level two
  
  //starting platform
  start2 = new StartingPlatform(width/3, height-20, width*.45, height*.03);
  
  //obelisk gate two goes to level 3
  gate2 = new Gate(width*.065, height*.005, width*.03, height*.03);

  //guardians
  guardsLevelTwo[0] = new Guardians(width*.88, height*.88); // on ground [10] - 11
  guardsLevelTwo[1] = new Guardians(width*.32, height*.33); // on ground [4] - 5
 

  //these stills are on ground [6] - 7
  stillsLevelTwo[0] = new Stills(width*.66, height*.485, width*.67, height*.47, width*.68, height*.485);
  stillsLevelTwo[1] = new Stills(width*.68, height*.485, width*.69, height*.47, width*.70, height*.485);

  //these stills are on ground [2] - 3
  stillsLevelTwo[2] = new Stills(width*.52, height*.135, width*.53, height*.12, width*.54, height*.135);
  stillsLevelTwo[3] = new Stills(width*.54, height*.135, width*.55, height*.12, width*.56, height*.135);

  //platforms 
  groundLevelTwo[0] = new Ground(width*.146, height*.05, width*.16);//1
  groundLevelTwo[1] = new Ground(width*.32, height*.10, width*.16);//2
  groundLevelTwo[2] = new Ground(width*.52, height*.15, width*.16);//3
  groundLevelTwo[3] = new Ground(width*.42, height*.25, width*.16);//4
  groundLevelTwo[4] = new Ground(width*.32, height*.35, width*.16);//5
  groundLevelTwo[5] = new Ground(width*.50, height*.45, width*.16);//6
  groundLevelTwo[6] = new Ground(width*.70, height*.5, width*.16);//7
  groundLevelTwo[7] = new Ground(width*.82, height*.62, width*.16);//8
  groundLevelTwo[8] = new Ground(width*.6, height*.73, width*.16);//9
  groundLevelTwo[9] = new Ground(width*.72, height*.85, width*.16);//10
  groundLevelTwo[10] = new Ground(width*.88, height*.90, width*.16);//11

  /*...................................................................................................................................*/

  //level three
  
  //starting platform
  start3 = new StartingPlatform(width*.3, height-20, width*.3, height*.03);
  
  //obelisk gate 3 goes to win the game
  gate3 = new Gate(width*.5, height*.005, width*.03, height*.03);

  //guards
  guardsLevelThree[0] = new Guardians(width*.5, height*.53); // on ground [4] - 5
  guardsLevelThree[1] = new Guardians(width*.14, height*.73); // on ground [9] - 10
  guardsLevelThree[2] = new Guardians(width*.88, height*.28); // on ground [6] - 7

  //stills
  //these stills are on ground[10] - 11
  stillsLevelThree[0] = new Stills(width*.3, height*.835, width*.31, height*.82, width*.32, height*.835);
  stillsLevelThree[1] = new Stills(width*.32, height*.835, width*.33, height*.82, width*.34, height*.835);

  //these stills are on ground[11] - 12
  stillsLevelThree[2] = new Stills(width*.65, height*.635, width*.66, height*.62, width*.67, height*.635);
  stillsLevelThree[3] = new Stills(width*.67, height*.635, width*.68, height*.62, width*.69, height*.635);

  //these stills are on ground[7] - 8
  stillsLevelThree[4] = new Stills(width*.70, height*.385, width*.71, height*.37, width*.72, height*.385);
  stillsLevelThree[5] = new Stills(width*.72, height*.385, width*.73, height*.37, width*.74, height*.385);

  //these stills are on ground[1] - 2
  stillsLevelThree[6] = new Stills(width*.25, height*.185, width*.26, height*.17, width*.27, height*.185);
  stillsLevelThree[7] = new Stills(width*.27, height*.185, width*.28, height*.17, width*.29, height*.185);


  //top
  groundLevelThree[0] = new Ground(width*.5, height*.10, width*.16);// 1
  
  //top left
  groundLevelThree[1] = new Ground(width*.3, height*.20, width*.16);//2
  groundLevelThree[2] = new Ground(width*.14, height*.30, width*.16);//3
  groundLevelThree[3] = new Ground(width*.3, height*.40, width*.16);//4
  
  //middle
  groundLevelThree[4] = new Ground(width*.5, height*.55, width*.16);//5 
  
  //top right
  groundLevelThree[5] = new Ground(width*.70, height*.40, width*.16);//6
  groundLevelThree[6] = new Ground(width*.88, height*.30, width*.16);//7
  groundLevelThree[7] = new Ground(width*.70, height*.20, width*.16);//8
  
  //bottom left
  groundLevelThree[8] = new Ground(width*.3, height*.65, width*.16);//9
  groundLevelThree[9] = new Ground(width*.14, height*.75, width*.16);//10
  groundLevelThree[10] = new Ground(width*.3, height*.85, width*.16);//11
  
  //bottom right
  groundLevelThree[11] = new Ground(width*.70, height*.65, width*.16);//12
  groundLevelThree[12] = new Ground(width*.88, height*.75, width*.16);//13
  groundLevelThree[13] = new Ground(width*.70, height*.85, width*.16);//14
}

void draw() {
  //scene controls
  switchScene(); // calls upon the starting screen and level functions when certain conditions are met

  switch (scene) {
  case 1:
    startScreen();
    break;
  case 2:
    levelOne();
    break;
  case 3:
    levelTwo();
    break;
  case 4: 
    levelThree();
    break;

   
  }
  
 /*..................................................................................................................................*/
  
//global game losing function
  lostGame();
  //level lost called under specific levels in gameSetup 
}

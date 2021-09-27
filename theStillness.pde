//global aspects - applies to every level
Orogenes Oro;
Moon moon;

/*..................................................................................................................................*/

//level specific aspects

//Level One
Guardians[] guardsLevelOne = new Guardians[2];
Stills[] stillsLevelOne = new Stills[6];

Ground[] groundLevelOne = new Ground[11];
StartingPlatform start1;
Gate gate1;

/*..................................................................................................................................*/

//Level Two
Guardians[] guardsLevelTwo = new Guardians[2];
Stills[] stillsLevelTwo = new Stills[4];
Ground[] groundLevelTwo = new Ground[11];
StartingPlatform start2;
Gate gate2;

/*..................................................................................................................................*/

//Level Three
Guardians[] guardsLevelThree = new Guardians[3];
Stills[] stillsLevelThree = new Stills[8];
Ground[] groundLevelThree = new Ground[14];
StartingPlatform start3;
Gate gate3;

/*..................................................................................................................................*/

//indicates which scene is which and helps allocate their movements
int scene = 1;

/*..................................................................................................................................*/

//level over variables
boolean lostLevelOne = false;
boolean lostLevelTwo = false;
boolean lostLevelThree = false;

int livesLevelOne = 3;
int livesLevelTwo = 3;
int livesLevelThree = 3;

/*...................................................................................................................................*/

//game over variables
int evilEarth = 1;

/*...................................................................................................................................*/

//screen images for start and ending screens
PImage startScreen;
PImage wonScreen;

/*..................................................................................................................................*/

void settings() {
  size(600, 800);
}

/* void setup(){} and void draw (){} are in the gamePlaySetup tab*/

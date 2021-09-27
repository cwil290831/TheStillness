/* 
 WELCOME TO THE STILLNESS
 
 Premise:
 
 For my midterm project, I set out to create a platform style game similar to that of WickyWoo, a game available on freearcade.com. I decided to base the theme off of my current favourite adult fantasy/sci-fi series, The Broken Earth Trilogy by N.K. Jemisin. The series is set in a post-apocalyptic land called the Stillness which is plagued by geo-disasters called Seasons. In the Stillness there are three kinds of peoples, the Orogenes humans who can control energy, the Guardians who are humanoid beings created specifically to control the Orogenes, and the Stills or normal humans. We start the series in the Fifth Season which is where the game is set. You play as an Orogene. During a Season, only certain areas of the ground are safe to walk on, and Orogenes are typically eradicated by the Guardians and Stills to eliminate them from the pool of resources. You must move along the safe ground while avoiding the Guardians and stills on your journey, and just like in the book, you are trying to bring balance back to the world by returning the Moon back into orbit as you are the only one who can. 
 
 Challenges:
 
 Many aspects of the platform style game we had already encountered in class or I had created previously, and it was a simple task to modify what we learned. However, it was not without its challenges. I originally wanted there to be five levels but had to settle for three, due to time constraints. I found implementing physics into the game to be quite a challenge, and a large portion of my time was devoted to developing and coding this concept. It was also frustrating when I was attempting to use arrays to streamline my code but found that a lot of the time this was not possible due to the specific nature of where aspects needed to occur. They were still useful but not as I would have liked. 
 Many of the problems were solved through hours of research on google, looking at examples on YouTube and openprocessing.org and then figuring out how to implement it in my own project. I found that a lot of these examples were in processing.js or javascript which meant translating, or the code simply didn’t work. There was a lot of trial and error, and stopping for a time and then returning to the code. 
 Another unexpected challenge, was getting the font color to be legible on an imported image, and honestly, I’m not sure I’ve completely resolved it. 
 I found it very useful to have a “bugs” tab in the sketch so that I could keep track of the problems in my sketch as I was creating it, and remove them when they were solved. 
 
 Links
 Open Processing : https://www.openprocessing.org/
 The Broken Earth Trilogy: https://www.goodreads.com/book/show/38496769-the-broken-earth-trilogy
 Wicky Woo: http://ww2.freearcade.com/Wickywoo.jav/Wickywoo.html
 
 
 */



/* 
 BUGS THAT ARE STILL IN THE GAME
 1. orogene "bounces" - semi fixed, it's almost imperceptable. I think the problem is the distance from the platform is enough that it's 
 caught between runGravity = true and runGravity = false.
 2. after a certain number of resets the keyCodes code death for the player after a fall from the top height 
 - semi fixed by installing a keyRealsed, however upon restart must hit UP in order for player to display...
 3. after a certain run time the keyCode believes it's always being pressed - semi fixed by installing a keyRealsed
 */

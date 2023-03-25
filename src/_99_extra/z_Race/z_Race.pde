//Graphics from pngtree.com https://pngtree.com/

	/***********  SOUND ***************
	 * Some computers are unable to play sounds. 
	 * If you cannot play sound on this computer, set canPlaySounds to false.
	 * If you are not sure, ask your teacher 
	 * *****************/
boolean canPlaySounds = true;

import processing.sound.*;
SoundFile meow;
SoundFile woof;
PImage cat;
PImage dog;
PImage space;

int racer1X = 00;
int racer1Y = 100;

int racer2X = 0;
int racer2Y = 300;


void setup() {
  size(1200, 500); 
  textSize(35);
  
//  SOUNDS AND IMAGES  
//  This code loads all the sounds and images so they are ready to use in the program
//  If you want to change the images and sounds, change the file names here, but you must
//  also drag and drop the new files onto the sketch before you run the program.  

  meow = new SoundFile(this, "meow.wav");
  woof = new SoundFile(this, "woof.wav");
  cat = loadImage("lion.png");
  dog = loadImage("dog.png");
  space = loadImage("space.png");
  space.resize(width, height); 
}


void draw() {
// 3. DRAW BACKGROUND    
//    Use the background() command to draw where the race is taking place.
//    You can use the image provided (space), or change it to something else.
  
  
// 4. DRAW the RACERS
//    You can use the cat and dog images for the racers or change them to something else.
//    Use the image() command to draw each of the two racers.

//    RACER 1
//    Put the first image (cat) at location racer1X, racer1Y
  
  
//    RACER 2
//    Draw the second image (dog) at location racer2X, racer2Y


// 3. WINNER  
//    Find the checkForWinner() method. The messages and sounds are set for a cat and dog.
//    If you have changed the racer images, change the method to match them
  checkForWinner();
  
// 4. TEST #1
//    Run the program. Do you see the images?   

// 5. RACE
//    The racers need to move when keys are pressed. The example below uses 'q' to move
//    racer1 and 'p' to move racer2. If you want to use different keys, change this code

  if (key == 'q'){
      moveRacer1();
  }
  if (key == 'p') {
      moveRacer2();
  }

// 6. TEST #2
//    Run the program. Do the images move when you press the keys?
//    Does the name of the winner appear when one racer reaches the end?
//    Does a sound play?

// 7. FAST ENOUGH?
//    See if you can figure out what code to change so the racers move faster/slower

}

void moveRacer1(){
  racer1X = racer1X + 5;
}

void moveRacer2(){
  racer2X = racer2X + 5;
}

void checkForWinner(){
  if (catX>width-60){
    text("CATS ARE THE BEST", 400, 50); 
    if (canPlaySounds) {
        meow = new SoundFile(this, "meow.wav");
	      meow.play();
	  }
    noLoop();
    	
  }
  
  if (dogX>width-60){
    text("DOGS RULE", 500, 50); 
    if (canPlaySounds) {
		   woof = new SoundFile(this, "woof.wav");
	     woof.play();
	  } 
    noLoop();
  }
}
 
    
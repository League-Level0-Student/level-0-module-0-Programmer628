// 1. Drag and drop an image with a rainbow onto this sketch
//    a. First find an image 
//           Either use google to search and find one
//           Or use the provided image and skip the next 3 steps.
//    b. Right click on the image and select 'Save image As'
//    c. Rename the image something short (e.g. rainbow.jpg)
//    d. Save the image to your computer's desktop
//    e. Drag and drop the image anywhere on this sketch


// These 2 lines of code create variables to hold your rainbow picture and a unicorn.
// You will use these later.
PImage rainbow;
PImage unicorn;

void setup() {
  // 2. The code below loads your rainbow picture into the program. 
//     Make sure the file name is correct for the rainbow image you saved earlier
rainbow = loadImage("rainbow.jpg");
  
// 3. Set the size of the sketch. Make it big enough to show the rainbow you chose.

// 4. Resize the rainbow so it is the same size as the sketch

// 5. Drag and drop an image with a unicorn onto this sketch. 
//    Try to find one with a transparent background. Use the same idea as in step 1.
//    Make sure the file name is correct for the unicorn image you saved.  
unicorn = loadImage("unicorn.png");

}

void draw() {
  
// 6. DRAW RAINBOW .    Use the background() command to make the rainbow the background of the sketch
//    Run the program to see if the rainbow is drawn. Get this working before you go on.
  

// 7. DRAW UNICORN. Use the image() command to draw the unicorn.  
//                  The image command looks like this:
image (unicorn, 200,200);
//    The numbers specify where to draw the unicorn. They represent the top left corner of the image
//    Run the program to see if the unicorn is drawn on the rainbow. Get this working before you go on.
//    If you need to resize the image, do it in the setup() method after you loaded the image.
  
// 8.  MOVE.  Change the DRAW UNICORN code to use      mouseX, mousY      in place of the numbers.
//     Run the program to see the unicorn move around when you move the mouse.


// OPTIONAL:
//     Add an if statement so the unicorn is only drawn when the mouse is clicked.
//     Add or subtract from mouseX and mouseY when you draw the unicorn,
//               so the unicorn center appears where the mouse pointer is
//     Draw a hat on the unicorn when the right mouse button is pressed. Use this code.
//               if (mouseButton == RIGHT)  {     }

}
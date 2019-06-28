///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu


////This sketch requires the opencv_processing and video Processing libraries


import gab.opencv.*;

OpenCV opencv;


int count  = 0;
int numFrames = 11;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
String imageName;


PImage img;


void setup() {
 
  size(568, 320);
  
  opencv = new OpenCV(this, 568, 320);
  
  for (int i = 1; i < numFrames; i++) {
        imageName = "Art_" + nf(i, 4) + ".png";
        images[i] = loadImage(imageName);

          println(imageName);
        //delay(1000);
       }
  
  img = new PImage(568,320);
  
  
}

void draw() {
  frameRate(3);
  
  
   count++;
       if(count == images.length) count = 1;
    img.copy(images[count], 0, 0, images[count].width, images[count].height, 
        0, 0, img.width, img.height);
  
  
  opencv.loadImage(img);
  opencv.findCannyEdges(200,75);
  image(opencv.getOutput(), 0, 0);
  

  
  
 saveFrame("output/Art_####.png");
  
}
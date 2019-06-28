int count  = 0;
int numFrames = 11;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
String imageName;


PImage img;


void setup() {
 
  size(568, 320);
  frameRate(3);
  
  for (int i = 1; i < numFrames; i++) {
        imageName = "Art_" + nf(i, 4) + ".png";
        images[i] = loadImage(imageName);

          println(imageName);
        //delay(1000);
       }
  
  img = new PImage(568,320);
  
}

void draw() {
  
  
  
   count++;
       if(count == images.length) count = 1;
    img.copy(images[count], 0, 0, images[count].width, images[count].height, 
        0, 0, img.width, img.height);
        
        //image(img,0,0);
        
        
     loadPixels();
     img.loadPixels();
     for (int x = 0; x < width; x++) {
       for (int y = 0; y < height; y++) {
         int loc = x+y*width;
         float b = brightness(img.pixels[loc]);
         if (b < 1) {
           pixels[loc] = color(255);
         } else {
           pixels[loc] = color(0);
         }
        
       }
        
     }
     updatePixels();
     
     saveFrame("output/Art_####.png");
}
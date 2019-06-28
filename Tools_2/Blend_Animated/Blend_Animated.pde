int count  = 0;
int numFrames = 11;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
String imageName;


int count2  = 0;
int numFrames2 = 11;  // The number of frames in the animation
int currentFrame2 = 0;
PImage[] images2 = new PImage[numFrames];
String imageName2;


PImage img;
PImage img2;



void setup() {
 
  size(1920, 1080);
  
   frameRate(3);
  
  for (int i = 1; i < numFrames; i++) {
        imageName = "Art_" + nf(i, 4) + ".png";
        images[i] = loadImage(imageName);

          println(imageName + "\t");
        //delay(1000);
       }
       
        for (int i = 1; i < numFrames2; i++) {
        imageName2 = "Art2_" + nf(i, 4) + ".png";
        images2[i] = loadImage(imageName2);

          println("\t" + imageName2);
        //delay(1000);
       }
       
       img = new PImage(1920,1080);
       img2 = new PImage(1920,1080);
       
}

void draw() {
  
  
  
  count++;
  if(count == images.length) count = 1;
    img.copy(images[count], 0, 0, images[count].width, images[count].height, 
        0, 0, img.width, img.height);
        
        count2++;     
  if(count2 == images2.length) count2 = 1;
    img2.copy(images2[count2], 0, 0, images2[count2].width, images2[count2].height, 
        0, 0, img2.width, img2.height);
        
        background(img2);
      
        image(img,0,0);
  
  blend(img2,0,0,img2.width,img.height,0,0,img.width,img.height,DARKEST);
  
  saveFrame("output/Art_####.png");

}
        
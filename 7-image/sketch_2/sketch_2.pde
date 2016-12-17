// Reference
// https://processing.org/reference/loadImage_.html
// https://processing.org/reference/Array.html

// Slideshow
PImage[] images = new PImage[2];

int index = 0;

void setup() {
  size(667, 667);

  // assign the array of PImage
  for (int p = 0; p < images.length; p ++) {
    images[p] = loadImage("img-"+p+".png");
  }
}

void draw() {
  // Slideshow
  image(images[index], 0, 0);
}

void mousePressed() {
  // suivante image
  index = index + 1;

  // si on arrive à la dernière image
  // on recommence à la première
  if (index > (images.length-1)) {
    index = 0;
  }
}
// Reference
// https://processing.org/reference/loadImage_.html

PImage img;

void setup() {
  size(667, 667);
  img = loadImage("img-1.png");
}

void draw() {
  image(img, 0, 0);
}
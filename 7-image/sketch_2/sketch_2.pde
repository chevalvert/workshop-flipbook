// Reference
// https://processing.org/reference/loadImage_.html
// https://processing.org/reference/Array.html

// Slideshow : tableau de 4 images
PImage[] images = new PImage[4];

// dans le tableau : index de l'image qui va être montrée sur l'écran
int index = 0;

void setup() {
  size(667, 667);

  // on désigne les 3 images du dossier pour les utiliser dans le sketch
  for (int p = 0; p < images.length; p ++) {
    images[p] = loadImage("img-"+p+".png");
  }
}

void draw() {
  background(0);
  // l'image du tableau qui est montrée sur l'écran
  image(images[index], 0, 0);
}

void mousePressed() {
  // au click de la souris on passe à la suivante image
  index = index + 1;

  // si on arrive à la dernière image du tableau
  // on recommence par la première
  if (index > (images.length-1)) {
    index = 0;
  }
}
// on définit deux variables "largeur" et "hauteur" de type int (nombre entier)
int largeur = 50;
int hauteur = 50;

// setup est executé une seule fois au lancement du programme
void setup() {
  size(800, 600); // la fenêtre fera 800px de largeur par 600px de hauteur
  frameRate(2);   // réduit la vitesse de l'animation
}

// le draw est executé en boucle plusieurs fois par seconde
void draw() {
  // on définit deux variables "x" et "y" de type float (nombre à virgule)
  float x = random(width);  // x prend une valeur comprise entre 0 et width (800)
  float y = random(height); // y prend une valeur comprise entre 0 et height (600)

  background(0);   // on remplit le fond en noir

  stroke(255);     // on remplit les contours en blanc
  fill(255, 255, 0); // on remplit les formes en jaune

  ellipse(x, y, largeur, hauteur); // on place une ellipse en (x,y), avec une largeur "largeur" et une hauteur "hauteur"
}


/*

quelques couleurs pour vos ellipses :

// rouge
fill(255, 0, 0);

// vert
fill(0, 255, 0);

// bleu
fill(0, 0, 255);

// un joli magenta
fill(225, 45, 110);

// une couleur surprise...
fill(random(255), random(255), random(255));

*/
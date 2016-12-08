// on définit deux variables "largeur" et "hauteur" de type int (nombre entier)
int largeur = 50;
int hauteur = 50;

// setup est executé une seule fois au lancement du programme
void setup() {
  size(800, 600); // la fenêtre fera 800px de largeur par 600px de hauteur
}

// le draw est executé en boucle plusieurs fois par seconde
void draw() {
  // on définit deux variables "x" et "y" de type float (nombre à virgule)
  float x = random(width);  // x prend une valeur comprise entre 0 et width (800)
  float y = random(height); // y prend une valeur comprise entre 0 et height (600)

  fill(0, 255 * 0.1);        // on remplit les formes en noir à 10% d'opacité
  noStroke();                // on désactive le contour des formes
  rect(0, 0, width, height); // on dessine un rectangle qui fait la taille de l'écran

  stroke(255);       // on remplit les contours en blanc
  fill(255, 255, 0); // on remplit les formes en jaune

  if (random(100) > 50) {            // si une valeur comprise entre 0 et 100 est supérieur à 50...
    ellipse(x, y, largeur, hauteur); // alors on place une ellipse en (x,y), avec une largeur "largeur" et une hauteur "hauteur"
  } else {                           // ...sinon...
    rect(x, y, largeur, hauteur);    // on place un rectange en (x,y), avec une largeur "largeur" et une hauteur "hauteur"
  }
}
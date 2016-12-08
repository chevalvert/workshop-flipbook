// on définit deux variables "largeur" et "hauteur" de type int (nombre entier)
int largeur = 50;
int hauteur = 50;

// valeur de départ de x, et y (type float, nombre à virgule)
float x = 0;
float y = 0;

// sens de déplacement de l'ellipse en x et en y
int directionX = 1;
int directionY = 1;

// setup est executé une seule fois au lancement du programme
void setup() {
  size(400, 300); // la fenêtre fera 400px de largeur par 300px de hauteur
}

// le draw est executé en boucle plusieurs fois par seconde
void draw() {
  x = x + directionX; // à chaque frame, on ajoute à x "directionX"
  y = y + directionY; // à chaque frame, on ajoute à y "directionY"

  // on fait rebondir l'ellipse dans la scène :
  if (x > width) {   // si x est supérieur à la largeur de la fenêtre...
    directionX = -1; // alors on inverse la direction sur l'axe des X
  }

  if (y > height) {  // si y est supérieur à la hauteur de la fenêtre...
    directionY = -1; // alors on inverse la direction sur l'axe des Y
  }

  if (x < 0) {       // si x est inférieur à 0...
    directionX = 1;  // alors on inverse la direction sur l'axe des X
  }

  if (y < 0) {       // si y est inférieur à 0...
    directionY = 1;  // alors on inverse la direction sur l'axe des Y
  }


  background(0); // on remplit le fond en noir

  fill(255, 255, 0); // on remplit les formes en jaune
  ellipse(x, y, largeur, hauteur); // on place une ellipse en (x,y), avec une largeur "largeur" et une hauteur "hauteur"
}
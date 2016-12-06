// on définit deux variables "largeur" et "hauteur" de type int (nombre entier)
int largeur = 50;
int hauteur = 50;

// valeur de départ de x, et y (type float, nombre à virgule)
float x = 0;
float y = 0;

// setup est executé une seul fois au lancement du programme
void setup() {
  size(800, 600); // la fenêtre fera 800px de largeur par 600px de hauteur
}

// le draw est executé en boucle plusieurs fois par seconde
void draw() {
  x = x + 1; // à chaque frame, on incrémente x de 1
  y = y + 1; // à chaque frame, on incrémente y de 1

  background(0); // on remplit le fond en noir

  fill(255, 255, 0); // on remplit les formes en jaune
  ellipse(x, y, largeur, hauteur); // on place une ellipse en (x,y), avec une largeur "largeur" et une hauteur "hauteur"
}
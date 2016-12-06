// on définit deux variables "largeur" et "hauteur" de type int (nombre entier)
int largeur = 10;
int hauteur = 10;

// on définit deux vairbales "espaceX" et "espaceY"
int espaceX = largeur + 10; // espaceX est égal à "largeur" + 10
int espaceY = hauteur + 10; // espaceY = est égal à "hauteur" + 10

// valeur de départ de x, et y (type float, nombre à virgule)
float x = 0;
float y = 0;

// setup est executé une seul fois au lancement du programme
void setup() {
  size(400, 300); // la fenêtre fera 400px de largeur par 300px de hauteur
  background(0);
}

// le draw est executé en boucle plusieurs fois par seconde
void draw() {
  x = x + espaceX; // à chaque frame, on ajoute à x "espaceX"

  if (x > width) {   // si x est supérieur à la largeur de l'écran...
    y = y + espaceY; // on ajoute à y "espaceY"...
    x = 0;           // et on remet x à 0
  }

  fill(255, 255, 0); // on remplit les formes en jaune
  ellipse(x, y, largeur, hauteur); // on place une ellipse en (x,y), avec une largeur "largeur" et une hauteur "hauteur"
}
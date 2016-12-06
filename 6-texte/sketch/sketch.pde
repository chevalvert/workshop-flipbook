// on définit une liste de mots
String[] mots = {"Bonjour", "tout", "le", "monde", "!"};

// on définit une variable "index" à 0
int index = 0;

// valeur de départ de x, et y (type float, nombre à virgule)
float x = 400;
float y = 300;

// setup est executé une seul fois au lancement du programme
void setup() {
  size(800, 600); // la fenêtre fera 800px de largeur par 600px de hauteur

  textSize(50);      // les textes feront 50px de hauteur
  textAlign(CENTER); // on aligne les textes au centre
}

// le draw est executé en boucle plusieurs fois par seconde
void draw() {
  background(0); // on remplit le fond en noir

  fill(255, 0, 255);       // on remplit les formes en magenta
  text(mots[index], x, y); // on affiche le mot de la liste numéro "index" en (x,y)

  index = index + 1; // on incrémente de 1 "index"

  if (index > mots.length - 1) { // si "index" est supérieur à la longueur de la liste de mots...
    index = 0;                   // alors on remet "index" à 0
  }
}
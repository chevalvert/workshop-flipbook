public class ex2 extends Flipbook {

  ex2(PApplet parent, char id, int x, int y) { 
    super(parent, id, x, y, parent.width, parent.height / 2);
  }
  ex2(PApplet parent, char id, int x, int y, int w, int h) { 
    super(parent, id, x, y, w, h);
  }

  // -------------------------------------------------------------------------

  // on définit deux variables "largeur" et "hauteur" de type int (nombre entier)
  int largeur = 50;
  int hauteur = 50;

  // valeur de départ de x, et y (type float, nombre à virgule)
  float x = super.x;
  float y = super.y;

  // setup est executé une seule fois au lancement du programme
  void setup() {
  }

  // le draw est executé en boucle plusieurs fois par seconde
  void draw() {
    x = x + 1; // à chaque frame, on incrémente x de 1
    y = y + 1; // à chaque frame, on incrémente y de 1

    super.background(0);

    fill(255, 255, 0); // on remplit les formes en jaune
    ellipse(x, y, largeur, hauteur); // on place une ellipse en (x,y), avec une largeur "largeur" et une hauteur "hauteur"
  }
}
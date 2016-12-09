public class ex4 extends Flipbook {

  ex4(PApplet parent, char id, int x, int y) { 
    super(parent, id, x, y, parent.width, parent.height / 2);
  }
  ex4(PApplet parent, char id, int x, int y, int w, int h) { 
    super(parent, id, x, y, w, h);
  }

  // -------------------------------------------------------------------------

  // on définit deux variables "largeur" et "hauteur" de type int (nombre entier)
  int largeur = 50;
  int hauteur = 50;

  // setup est executé une seule fois au lancement du programme
  void setup() {
  }

  // le draw est executé en boucle plusieurs fois par seconde
  void draw() {
    println(super.y + "," + super.height);
    // on définit deux variables "x" et "y" de type float (nombre à virgule)
    float x = random(super.x, super.x + super.width);  // x prend une valeur comprise entre 0 et width (800)
    float y = random(super.y, super.y + super.height); // y prend une valeur comprise entre 0 et height (600)

    fill(0, 255 * 0.1);        // on remplit les formes en noir à 10% d'opacité
    noStroke();                // on désactive le contour des formes
    rect(super.x, super.y, super.width, super.height); // on dessine un rectangle qui fait la taille de l'écran

    stroke(255);       // on remplit les contours en blanc
    fill(255, 255, 0); // on remplit les formes en jaune

    if (random(100) > 50) {            // si une valeur comprise entre 0 et 100 est supérieur à 50...
      ellipse(x, y, largeur, hauteur); // alors on place une ellipse en (x,y), avec une largeur "largeur" et une hauteur "hauteur"
    } else {                           // ...sinon...
      rect(x, y, largeur, hauteur);    // on place un rectange en (x,y), avec une largeur "largeur" et une hauteur "hauteur"
    }
  }
}
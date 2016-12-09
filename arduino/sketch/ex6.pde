public class ex6 extends Flipbook {

  ex6(PApplet parent, char id, int x, int y) { 
    super(parent, id, x, y, parent.width, parent.height / 2);
  }
  ex6(PApplet parent, char id, int x, int y, int w, int h) { 
    super(parent, id, x, y, w, h);
  }

  // -------------------------------------------------------------------------

  // on définit une liste de mots
  //String[] mots = {"Bonjour", "tout", "le", "monde", "!"};
  String[] mots = {"B", "o", "n", "j", "o", "u", "r", "t", "o", "u", "t", "l", "e", "m", "o", "n", "d", "e", "!"};

  // on définit une variable "index" à 0
  int index = 0;

  // valeur de départ de x, et y (type float, nombre à virgule)
  float x = super.x + super.width / 2;
  float y = super.y + super.height / 2;

  // setup est executé une seule fois au lancement du programme
  void setup() {
    textSize(100);      // les textes feront 50px de hauteur
    textAlign(CENTER); // on aligne les textes au centre
  }

  // le draw est executé en boucle plusieurs fois par seconde
  void draw() {
    super.background(0); // on remplit le fond en noir

    fill(255, 0, 255);       // on remplit les formes en magenta
    text(mots[index], x, y); // on affiche le mot de la liste numéro "index" en (x,y)

    index = index + 1; // on incrémente de 1 "index"

    if (index > mots.length - 1) { // si "index" est supérieur à la longueur de la liste de mots...
      index = 0;                   // alors on remet "index" à 0
    }
  }
}
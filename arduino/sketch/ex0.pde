public class ex0 extends Flipbook {

  ex0(PApplet parent, char id, int x, int y) { 
    super(parent, id, x, y, parent.width, parent.height / 2);
  }
  ex0(PApplet parent, char id, int x, int y, int w, int h) { 
    super(parent, id, x, y, w, h);
  }

  // -------------------------------------------------------------------------

  int x, y, width, height;

  void setup() {
    textSize(80);
    textAlign(CENTER, CENTER);
  }

  void draw() {
    super.background(0);

    fill(255, 255, 255);
    text(super.frameCount, super.width / 2, super.y + super.height / 2);
  }
  
}
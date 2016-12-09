import processing.serial.*;
import codeanticode.syphon.*;

Serial arduino;
SyphonServer syphon;
ArrayList<Flipbook> flipbooks;

void settings() {
  size(220, 170*2, P2D);
  PJOGL.profile = 1;
}

void setup() {
  // printArray(Serial.list());
  try {
    arduino = new Serial(this, Serial.list()[5], 9600);
  } 
  catch (ArrayIndexOutOfBoundsException e) {
    arduino = null;
  }

  flipbooks = new ArrayList<Flipbook>();

  /////// sketchs atelier ///////

  // flipbooks.add(new Top(this, 'A', 0, 0));
  // flipbooks.add(new Bottom(this, 'B', 0, height / 2, width, height / 2));
  
   flipbooks.add(new ex0(this, 'A', 0, 0));
  // flipbooks.add(new ex0(this, 'B', 0, height / 2, width, height / 2));

  // flipbooks.add(new ex1(this, 'A', 0, 0));
  // flipbooks.add(new ex2(this, 'B', 0, height / 2, width, height / 2));

  // flipbooks.add(new ex3(this, 'A', 0, 0));
  // flipbooks.add(new ex4(this, 'B', 0, height / 2, width, height / 2));

  // flipbooks.add(new ex5(this, 'A', 0, 0));
  // flipbooks.add(new ex6(this, 'B', 0, height / 2, width, height / 2));


  syphon = new SyphonServer(this, "flipbooks");

  background(0);
}

void draw() {
  if (arduino != null) {
    surface.setTitle(int(frameRate) + "fps");
    if (arduino.available() > 0) {
      String currentSerialMessage = arduino.readStringUntil('\n');
      for (Flipbook f : flipbooks) f.update(currentSerialMessage);
    }
  } else {
    surface.setTitle("(no arduino) " + int(frameRate) + "fps");
    // for (Flipbook f : flipbooks) {
    // f.frameCount++;
    // f.draw();
    // }
  }

  syphon.sendScreen();
}


void keyPressed() {
  if (key == 'r') {
    if (arduino != null) arduino.stop();
    if (syphon != null) syphon.dispose();
    setup();
  }

  if (arduino == null) {
    if (key == 'a') for (Flipbook f : flipbooks) f.update("A0");
    else if (key == 'z') for (Flipbook f : flipbooks) f.update("B0");
  }
}
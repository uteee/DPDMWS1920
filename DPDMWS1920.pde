slider slider1;
slider slider2;
slider slider3;
slider slider4;
tabButton tabButton1;
tabButton tabButton2;
toggleButton toggleButton1;
textField textField1;

PFont header;
PFont myFont;
PImage borsten;
PImage buerste;
PImage bubbles;
PImage sparkles;
PImage rectangles;
PImage marble;
PImage becher;
PImage boden;
PImage bubbles2;
PImage sparkles2;
PImage rectangles2;
PImage marble2;

void setup() {
  size(1024, 768);
  slider1 = new slider(839, 110, 160, 20);
  slider1.myValue = 0.5;
  slider2 = new slider (839, 230, 160, 20);
  slider2.myValue = 0.5;
  slider3 = new slider(25, 110, 160, 20);
  slider3.myValue = 0.5;
  slider4 = new slider (25, 230, 160, 20);
  slider4.myValue = 0.5;
  String[] tabLabels = {"Bubbles", "Sparkles", "Rectangles", "Marble"};
  tabButton1 = new tabButton(829, 280, 4, 180, 160, tabLabels);
  tabButton1.activeTab = 1;
  tabButton2 = new tabButton(15, 280, 4, 180, 160, tabLabels);
  tabButton2.activeTab=1;
  toggleButton1 = new toggleButton(920, 500);
  header = createFont("TruenoRound.otf", 32);
  myFont = createFont("TruenoRound.otf", 28);
  borsten = loadImage("Borsten.png");
  buerste = loadImage("Zahnbürste.png");
  bubbles = loadImage("Bubbles.png");
  sparkles = loadImage("Sparkles.png");
  rectangles = loadImage("Rectangles.png");
  marble = loadImage("Marble.png");
  becher = loadImage("Becher.png");
  boden = loadImage("Boden.png");
  bubbles2 = loadImage("Bubbles2.png");
  sparkles2 = loadImage("Sparkles2.png");
  rectangles2 = loadImage("Rectangles2.png");
  marble2 = loadImage("Marble2.png");
  textField1 = new textField(829, 540, 180, 40, "Name");
}

void draw() {
  colorMode(RGB, 255, 255, 255);
  background(255);
  noStroke();
  fill(220);
  rect(0, 0, 215, 768);
  rect(814, 0, 814, 768);
  stroke(0);
  line(55, 43, 170, 43);
  line(825, 43, 1010, 43);
  noTint();
  image(buerste, 205, 375);
  image(becher, 120, 30, 600, 600);
  colorMode(HSB, 360, 100, 100);
  tint(slider1.myValue * 360, 50, 90);
  image(borsten, 205, 375);
  tint(slider3.myValue * 360, 50, 90);
  image(boden, 120, 30, 600, 600);

  colorMode(RGB, 255, 255, 255);

  slider1.draw();
  slider2.draw();
  slider3.draw();
  slider4.draw();
  tabButton1.draw();
  tabButton2.draw();
  toggleButton1.draw();
  textFont(header);
  fill(0);
  textAlign(LEFT, BASELINE);
  text("Zahnbürste", 825, 40);
  text("Becher", 55, 40); 
  
  textFont(myFont);
  textAlign(LEFT, BASELINE);
  fill(0);
  text("Borsten", 825, 90);
  text("Becherboden", 15, 90);
  text("Muster", 825, 210);
  text("Muster", 15, 210);
  text("Label", 825, 521);

 
  colorMode(HSB, 360, 100, 100);
  fill(slider1.myValue * 360, 50, 100);

  colorMode(HSB, 360, 100, 100);
  fill(slider2.myValue * 360, 50, 100);
  
  colorMode(HSB, 360, 100, 100);
  fill(slider3.myValue * 360, 50, 100);
  
  colorMode(HSB, 360, 100, 100);
  fill(slider4.myValue * 360, 50, 100);

  tint(slider2.myValue * 360, 90, 90);
  
   if (tabButton1.activeTab == 0) {
      image(bubbles, 205, 375);
    } else if (tabButton1.activeTab == 1) {
      image(sparkles, 205, 375);
    } else if (tabButton1.activeTab == 2) {
      image(rectangles, 205, 375);
    } else if (tabButton1.activeTab == 3) {
      image(marble, 205, 375);
    }
 
   tint(slider4.myValue * 360, 90,90);
  
   if (tabButton2.activeTab == 0) {
      image(bubbles2, 120, 30, 600, 600);
    } else if (tabButton2.activeTab == 1) {
      image(sparkles2, 120, 30, 600, 600);
    } else if (tabButton2.activeTab == 2) {
      image(rectangles2, 120, 30, 600, 600);
    } else if (tabButton2.activeTab == 3) {
      image(marble2, 120, 30, 600, 600);
    } 
    
    
  if (toggleButton1.myStateActive == true) {
    drawText();
  }
  if (toggleButton1.myStateActive == true) {
    textField1.draw();
  }   
  
}

void mousePressed() {
  slider1.mousePressed();
  slider2.mousePressed();
  slider3.mousePressed();
  slider4.mousePressed();
  tabButton1.mousePressed();
  tabButton2.mousePressed();
  toggleButton1.mousePressed();
  if (toggleButton1.myStateActive == true) {
    textField1.mousePressed();
  }
}


void mouseDragged() {
  slider1.mouseDragged();
  slider2.mouseDragged();
  slider3.mouseDragged();
  slider4.mouseDragged();
}

void mouseReleased() {
  slider1.mouseReleased();
  slider2.mouseReleased();
  slider3.mouseReleased();
  slider4.mouseReleased();
}

void keyPressed() {
  if (toggleButton1.myStateActive == true) {
    textField1.keyPressed();
  }
}

boolean insideRect(int xPos, int yPos, int targetXPos, int targetYPos, int targetWidth, int targetHeight) {
  if (xPos > targetXPos && xPos < targetXPos + targetWidth && yPos > targetYPos && yPos < targetYPos + targetHeight) {
    return true;
  }
  return false;
}


void drawText() {
  textFont(myFont);
  colorMode(RGB, 255, 255, 255);
  fill(80);
  pushMatrix();
  translate(150, 385);
  rotate(-PI/10);
  textAlign(CENTER, CENTER);
  text(textField1.myText, 140, 100, 205, 375);
  popMatrix();
}

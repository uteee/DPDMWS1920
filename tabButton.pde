class tabButton {
  int xPos = 0;
  int yPos = 0;
  int myWidth;
  int myHeight;
  int numOfTabs;
  color backgroundColor = color(30, 30, 30);
  color inactiveColor = color(150, 150, 150);
  color forgroundColor = color(200, 200, 200);
  int activeTab = 0;
  String[] mytextLabels;


  tabButton(int xPos, int yPos, int numOfTabs, int myWidth, int myHeight, String[] mytextLabels) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.numOfTabs = numOfTabs;
    this.myWidth = myWidth;
    this.myHeight = myHeight;
    this.mytextLabels = mytextLabels;
  }

  void draw() {
    pushMatrix();
    translate(xPos, yPos);
    noStroke();
    fill(backgroundColor);
    rect(0, 0, myWidth, myHeight, 8);
    fill(forgroundColor);
    for (int i = 0; i < numOfTabs; i++) {
      if (i == activeTab) {
        fill(forgroundColor);
      } else {
        fill(inactiveColor);
      }
      if (i == 0) {
        rect(0+2, 0+2 + i * (myHeight-2)/numOfTabs, myWidth-4, (myHeight-4)/numOfTabs-2, 5, 0, 0, 5);
      } else if (i == numOfTabs-1) {
        rect(0+2, 0+2 + i * (myHeight-2)/numOfTabs, myWidth-4,  (myHeight-4)/numOfTabs-2, 0, 5, 5, 0);
      } else {
        rect(0+2, 0+2 + i * (myHeight-2)/numOfTabs,  myWidth-4, (myHeight-4)/numOfTabs-2);
      }
      textFont(myFont);
      textAlign(LEFT, BASELINE);
      fill(backgroundColor);
      text(mytextLabels[i], 7, 32 + i * (myHeight)/numOfTabs);
    }
    popMatrix();
    
  }


  void mousePressed() {
    for (int i = 0; i < numOfTabs; i++) {
      if (insideRect(mouseX, mouseY, xPos+2, yPos+2 + i * (myHeight-2)/numOfTabs, myWidth-4, (myHeight-4)/numOfTabs)) {
        activeTab = i;
      }
    }
  }
}

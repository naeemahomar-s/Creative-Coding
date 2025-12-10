int[] politicsCount = {
   3, 1, 0, 2, 6, 4, 0, 0, 1, 3,
    2, 4, 5, 1, 0, 3, 2, 1, 0, 4,
    5, 3, 1, 0, 2, 5, 4, 1, 0, 3,
    0, 2, 4, 1, 0, 6, 3, 2, 1, 0,
    4, 5, 3, 2, 0, 1, 0, 8, 4, 2,
    5, 1, 0, 2, 3, 5, 4, 0, 1, 2,
    0, 5, 3, 2, 4, 2, 0, 0, 5, 3,
    2, 1, 0, 4, 5, 2, 3, 1, 0, 6,
    4, 2, 0, 1, 3, 5, 0, 2, 4, 1,
    0, 3, 5, 2, 4, 0, 1, 3, 7, 5,
    10, 0, 0, 1, 2, 3, 5, 4, 1, 0,
    2, 5, 3, 4, 0, 1, 2, 5, 0, 3,
    4, 1, 0, 5, 2, 3, 4
};

void setup() {
  size(800, 400);
  background(255);
  
  stroke(0);
  strokeWeight(2);

  // draw axes
  line(50, 350, 50, 50); // Y axis
  line(50, 350, 750, 350); // X axis

  // labels
  fill(0);
  text("how many times i saw political news on social media (Oct 15 to Dec 1)", 200, 30);
  text("days", 360, 380);
  text("number of times seen", 5, 200);

  // Y axis tick marks every 2
  for (int v = 0; v <= 10; v += 2) {
    int yTick = int(map(v, 0, 10, 350, 50));
    line(45, yTick, 50, yTick);
    text(v, 20, yTick + 5);
  }

  // drawing line + points
  stroke(255, 182, 193); // baby pink line
  strokeWeight(3);
  fill(255, 182, 193);

  int xPos = 60;
  int prevY = int(map(politicsCount[0], 0, 10, 350, 50));

  ellipse(xPos, prevY, 6, 6);

  for (int i = 1; i < politicsCount.length; i++) {
    int y = int(map(politicsCount[i], 0, 10, 350, 50));
    xPos += 14;

    line(xPos - 14, prevY, xPos, y);
    ellipse(xPos, y, 6, 6);

    prevY = y;
  }
}

void draw() {
  // nothing happening here
}

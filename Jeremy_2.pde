//Laurel Parsley 10/21/16
int x = 0;
int y = 0;

void setup() {
  size(480, 480);
  fill(#8993A0);
  stroke(0);
  strokeWeight(6);
}

void draw() { 
  if (keyPressed && key == CODED) {
    if (keyCode == LEFT) {  
      x -= 15;
    } else if (keyCode == RIGHT) {
      x += 15;
    } else if (keyCode == UP) {
      y -= 15;
    } else if (keyCode == DOWN) {
      y += 15;
    }
    background (240);
    //body
    ellipse(x + 240, y + 310, 290, 290);

    //legs
    rect(x + 95, y + 320, 70, 160);
    stroke(#8993A0);
    rect(x + 101, y + 318, 58, 5);
    stroke(0);
    rect(x + 315, y + 320, 70, 160);
    stroke(#8993A0);
    rect(x + 321, y + 318, 58, 5);
    //ears
    stroke(0);
    ellipse(x + 120, y + 165, 180, 220);
    ellipse(x + 360, y + 165, 180, 220);
    //head
    ellipse(x + 240, y + 180, 220, 220);
    //eyes
    fill(250);
    ellipse(x + 200, y + 140, 50, 50);
    ellipse(x + 280, y + 140, 50, 50);
    fill(0);
    ellipse(x + 200, y + 140, 10, 10);
    ellipse(x + 280, y + 140, 10, 10);
    //trunk
    fill(#8993A0);
    stroke(0);
    strokeJoin(ROUND);
    beginShape();
    vertex(x + 190, y + 195);
    vertex(x + 205, y + 240);
    vertex(x + 215, y + 300);
    vertex(x + 220, y + 360);
    vertex(x + 220, y + 400);
    vertex(x + 260, y + 400);
    vertex(x + 260, y + 360);
    vertex(x + 265, y + 300);
    vertex(x + 275, y + 240);
    vertex(x + 290, y + 195);
    endShape();
  }
}
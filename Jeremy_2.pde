//Laurel Parsley 11/7/16
int x = 0;
int y = 0;
int body = #8993A0;
float mx;
float my;
float easing = 0.05;

void setup() {
  size(480, 480);
  fill(body);
  stroke(0);
  strokeWeight(6);
  background (240);
  //body
  ellipse(x + 240, y + 310, 290, 290);

  //legs
  rect(x + 95, y + 320, 70, 160);
  stroke(body);
  rect(x + 101, y + 318, 58, 5);
  stroke(0);
  rect(x + 315, y + 320, 70, 160);
  stroke(body);
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
  stroke(0);
  ellipse(x + 200, y + 140, 10, 10);
  ellipse(x + 280, y + 140, 10, 10);
  //trunk
  fill(body);
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

void draw() { 
  float mx1 = constrain(mx, 190, 210); // eye 1
  float my1 = constrain(my, 127, 155);  // eye 1
  float mx2 = constrain(mx, 270, 290 ); // eye 2
  float my2 = constrain(my, 127, 155);  // eye 2
  if (keyPressed) {
    if (keyCode == LEFT) {  
      x -= 15;
    } else if (keyCode == RIGHT) {
      x += 15;
    } else if (keyCode == UP) {
      y -= 15;
    } else if (keyCode == DOWN) {
      y += 15;
    } else if (keyCode == SHIFT) {
      body = #00BC40;
    } else if (keyCode == CONTROL) {
      body = #A203FA;
    } else if (keyCode == ALT) {
      body = #8993A0;
    }
  }
  background (240);
  stroke (0);
  fill(body);
  //body
  ellipse(x + 240, y + 310, 290, 290);

  //legs
  rect(x + 95, y + 320, 70, 160);
  stroke(body);
  rect(x + 101, y + 318, 58, 5);
  stroke(0);
  rect(x + 315, y + 320, 70, 160);
  stroke(body);
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

  //trunk
  fill(body);
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
  fill(0);
  stroke(0);
  if (abs(mouseX-mx) > 0.1) {
    mx = mx +(mouseX - mx - x) * easing;
  } 
  if (abs(mouseY-my) > 0.1) {
    my = my +(mouseY - my - y) * easing;
  }
  ellipse(x+mx1, y+ my1, 15, 15);
  ellipse(x+mx2, y+ my2, 15, 15);
}
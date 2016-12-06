class JitterBug {
 float x;
 float y;
 int diameter;
 int shape;
 float jbColor;
 float speed = 2.5;
 int tSide; //side of triangle
 float tHeight; //height of triangle
 int red;
 int green;
 int blue;
 JitterBug(float tempX, float tempY, int tempDiameter, int tempShape, int tempR, int tempG, int tempB) {
 x = tempX;
 y = tempY;
 diameter = tempDiameter;
 shape = tempShape;
 red = tempR;
 green = tempG;
 blue = tempB;
 }
  void setColor() {
   fill(red, green, blue);
 }
 void move() {
 x += random(-speed, speed);
 y += random(-speed, speed);
 }

 void setSize() {
   tSide = diameter;
   tHeight = .5*tSide*1.73;
 }
 void display() {
   if(shape == 1) { 
   ellipse(x, y, diameter, diameter);
 } else if (shape == 2) {
   triangle(x-(tSide/2), y+(tHeight/2), x+(tSide/2), y+(tHeight/2), x, y-(tHeight/2));
 }
 }
}
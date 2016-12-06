//Laurel Parsley 12/6/16
JitterBug jit;
JitterBug bug;
JitterBug beetle;
void setup() {
 size(480, 120);
 smooth();
 jit = new JitterBug(width * 0.25, height/2, 50, 1, 255, 0, 0);
 bug = new JitterBug(width * 0.5, height/2, 10, 1, 255, 255, 0);
 beetle = new JitterBug(width * .75, height/2, 40, 2, 0, 0, 255);
}
void draw() {
 jit.move();
 jit.setColor();
 jit.setSize();
 jit.display();
 
 bug.move();
 bug.setColor();
 bug.setSize();
 bug.display();
 
 beetle.move();
 beetle.setColor();
 beetle.setSize();
 beetle.display();
} 
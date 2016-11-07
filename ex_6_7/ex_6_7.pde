  //  Laurel Parsley 11/7/16
String name = "Laurel Parsley";
PFont font1;
PFont font2;

void setup() {
  size(480,120);
  smooth();
  font1 = loadFont("GulimChe-48.vlw");
  font2 = loadFont("ShowcardGothic-Reg-48.vlw");
}
void draw() {
  textFont(font1);
  fill(#4702DE);
  text(name, 20,40);
  fill(#02DE03);
  textFont(font2);
  text(name, 20, 110);
 
}
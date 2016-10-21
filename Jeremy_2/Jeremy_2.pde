//Laurel Parsley 10/21/16
size(480, 480);
fill(#8993A0);
stroke(0);
strokeWeight(6);
//body
ellipse(240, 310, 290, 290);

//legs
beginShape();
vertex(95, 320);
vertex(95, 480);
vertex(165, 480);
vertex(165, 320);
endShape();
beginShape();
vertex(385, 320);
vertex(385, 480);
vertex(315, 480);
vertex(315, 320);
endShape();
//ears
ellipse(120, 165, 180, 220);
ellipse(360, 165, 180, 220);
//head
ellipse(240, 180, 220, 220);
//eyes
fill(250);
ellipse(200, 140, 50, 50);
ellipse(280, 140, 50, 50);
fill(0);
ellipse(200, 140, 10, 10);
ellipse(280, 140, 10, 10);
//trunk
fill(#8993A0);
stroke(0);
strokeJoin(ROUND);
beginShape();
vertex(190, 195);
vertex(205,240);
vertex(215, 300);
vertex(220, 360);
vertex(220, 400);
vertex(260, 400);
vertex(260, 360);
vertex(265, 300);
vertex(275,240);
vertex(290, 195);
endShape();
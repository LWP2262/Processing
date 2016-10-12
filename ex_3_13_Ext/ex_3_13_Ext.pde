//Laurel Parsley 10/12/16
size(560, 120);
smooth();
rectMode(CENTER);
strokeWeight(12);
strokeJoin(ROUND); // Round the stroke corners
rect(75,60,70,70);
strokeJoin(BEVEL); // Bevel the stroke corners
rect(175,60,70,70);
strokeCap(SQUARE); // Square the line endings
line(270, 25, 340, 95);
strokeCap(ROUND); // Round the line endings
line(350, 25, 420, 95);
ellipseMode(CORNER);
ellipse(465,25,70,70);
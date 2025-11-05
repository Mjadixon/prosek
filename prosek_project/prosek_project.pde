void setup() {
  size(1200, 600);
  background(0);
  stroke(255, 220, 150);
  strokeWeight(4);
  pushMatrix();
  translate(100, 450);   // move line’s origin
  rotate(radians(-20));  // tilt the line upward slightly
  line(0, 0, 1100, 0);   // horizontal line that cuts through fish
  popMatrix();
  
  noStroke();
  drawEclipse(170, 310, 180, 180,-6);
  drawEclipse(280, 340, 180, 180,-5.5);
  drawEclipse(380, 320, 180, 180,-5);
  drawEclipse(460, 290, 180, 180,-4.5);
  
}
void drawEclipse(float x, float y, float h, float z, float rot) {
  pushMatrix();
  fill(230, 211, 145);
  fill(255, 200, 100);
  translate(x/2, y/2);
  rotate(PI/rot);

  ellipse(x, y, h, z); 
  // big circle (moon)
  fill(0);                 // background color (to "cut out")
  ellipse(x+80, y, h, z);
    stroke(255, 220, 150);
  strokeWeight(4);
  
  translate(100, 450);   // move line’s origin
  rotate(radians(-20));  // tilt the line upward slightly
  line(0, 0, 1100, 0);   // horizontal line that cuts through fish
  popMatrix();
  
  noStroke();
  pop();
}

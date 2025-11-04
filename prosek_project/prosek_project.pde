void setup() {
  int application = 0;
  size(1200, 600);
  background(0);
  drawEclipse(170, 310, 180, 180,-6);
  drawEclipse(280, 270, 180, 180,-5.5);
  drawEclipse(380, 220, 180, 180,-5);
  drawEclipse(420, 200, 180, 180,-4.5);
}
void drawEclipse(float x, float y, float h, float z, float rot) {
  push();
  fill(230, 211, 145);
  fill(255, 200, 100);
  translate(x/2, y/2);
  rotate(PI/rot);

  ellipse(x, y, h, z);     // big circle (moon)
  fill(0);                 // background color (to "cut out")
  ellipse(x+80, y, h, z);
  pop();
}

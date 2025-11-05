void setup() {
  size(1200, 600);
  background(0);
  stroke(255, 220, 150);
  strokeWeight(4);
  noStroke();
  //fish 1
  drawEclipse(120-100, 310, 180, 180, -6);
  drawEclipse(120-120, 330, 180, 180, -3);
  drawEclipse(180-120, 310, 180, 180, -2.62);
  drawEclipse(290-120, 270, 300, 180, -2.3);
  //fish 2
  drawEclipse(120+100, 310, 180, 180, 2);
  drawEclipse(220+100, 330, 180, 180, -2);
  drawEclipse(350+100, 300, 180, 180, -2.5);
  drawEclipse(490+100, 200, 300, 180, -2.5);
}
void drawEclipse(float x, float y, float h, float z, float rot) {
  push();
  fill(230, 211, 145);
  fill(255, 200, 100);
  translate(x/2, y/2);//sets orgin
  rotate(PI/rot);//rotates the fish

  ellipse(x, y, h, z);   // big circle (moon)
  fill(0);               // background color (to "cut out")
  ellipse(x+80, y, h, z);
  pop();
}

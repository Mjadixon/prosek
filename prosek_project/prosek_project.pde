void setup() {
  size(1200, 600);
  background(0);
  stroke(255, 220, 150);
  strokeWeight(4);
  noStroke();

  // Fish 1
  drawEclipse(120-100, 310, 180, 180, -6);
  drawEclipse(120-120, 330, 180, 180, -3);
  drawEclipse(180-120, 310, 180, 180, -2.62);
  drawEclipse(290-120, 270, 300, 180, -2.3);
  drawPedestal(200, 500); // pedestal for fish 1


}

void drawEclipse(float x, float y, float h, float z, float rot) {
  push();
  fill(230, 211, 145);
  fill(255, 200, 100);
  translate(x/2, y/2); // sets origin
  rotate(PI/rot);      // rotates the fish

  ellipse(x, y, h, z);   // big circle (moon)
  fill(0);               // background color (to "cut out")
  ellipse(x+80, y, h, z);
  stroke(255, 200, 100);
  strokeWeight(6);
  line(x - h/2, y, x + h*0.3, y);
  pop();
}

void drawPedestal(float x, float y) {
  push();
  rectMode(CENTER);
  fill(150,75,0);       
  ellipse(x+100, y - 60, 10, 50); // top of cylinder
  fill(120);
  rect(x+100, y-10, 100, 90);  //Pedestal Base
             
  
  pop();
}

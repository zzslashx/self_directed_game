void drawGradientRect(float cx, float cy, float w, float h, color c1, color c2) {
  noStroke();
  float x = cx - w / 2.0;  //math !! to make center top left
  float y = cy - h / 2.0;
  for (int i = 0; i < h; i++) {
    float t = map(i, 0, h, 0, 1);
    color c = lerpColor(c1, c2, t);
    stroke(c);
    line(x, y + i, x + w, y + i);
  }
}


void tactileRect(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(255);
    fill(coolBlue);
  } else {
    fill(coolBlue);
    stroke(0);
  }

  strokeWeight(5);
  rect(x, y, w, h, 50);
}

//void drawWedge(float cx, float cy, float r1, float r2, float a, float sweep, color c) {
//  noStroke();
//  fill(c);
//  arc(cx, cy, r2*2, r2*2, a, a+sweep, PIE);
//  fill(#181A18);
//  arc(cx, cy, r1*2, r1*2, a, a+sweep, PIE);
//}
void drawWedge(float cx, float cy, float r1, float r2, float a, float sweep, color c) {
  noStroke();
  fill(c);
  beginShape();
  for (float t = a; t <= a + sweep; t += 0.02) {
    vertex(cx + cos(t) * r2, cy + sin(t) * r2);
  }
  for (float t = a + sweep; t >= a; t -= 0.02) {
    vertex(cx + cos(t) * r1, cy + sin(t) * r1);
  }
  endShape(CLOSE);
}

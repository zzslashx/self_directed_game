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

void drawWedge(float x, float y, float r1, float r2, float startAngle, float angleAdded, color colour) {
  stroke(255);
  strokeWeight(5);
  fill(colour);
  arc(x, y, r2*2, r2*2, startAngle, startAngle+angleAdded, PIE);
  fill(#181A18);
  arc(x, y, r1*2, r1*2, startAngle, startAngle+angleAdded, PIE);
}

void drawTriangle(int x, int y, int x2, int y2) {
  //just to make it faster to type(time saver)
  strokeWeight(5);
  triangle(x, y, x2, y2, width/2, height/3);
}

void resetForNextPlayer() {
  xSelected=false;
  ySelected=false;
  sX=width/2;
  sY=height/3;
  vx=5;
  vy=5;
}

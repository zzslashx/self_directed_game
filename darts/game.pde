void game() {

  //background
  drawGradientRect(width/2, height/2, width, height, #BA8C63, #9D6C3C);
  for (int i=50; i<width-50; i+=100) {
    for (int j=0; j<height+100; j+=150) {
      fill(#855E42, 25);
      noStroke();
      rect(i, j, 50, 200);
    }
  }

  //darts board
  fill(#181A18);
  circle(width/2, height/3, 600);
  for (int i = 0; i < 20; i++) {
    float a = (-HALF_PI - PI/20) + i * (TWO_PI/20);

    if (i % 2 == 0) fill(200, 16, 46);   // red
    else            fill(0, 132, 61);     // green
    color c;
    if (i % 2 == 0) {
      c = color(200, 16, 46);
    } else {
      c = color(0, 132, 61);
    }
    drawWedge(width/2, height/3, 240, 260, a, TWO_PI/20, c);
    drawWedge(width/2, height/3, 130, 150, a, TWO_PI/20, c);
  }
  stroke(255);
  strokeWeight(4);
  line(418, 575, width/2, height/3);
  line(337, 576, width/2, height/3);
  line(260, 550, width/2, height/3);
  line(190, 500, width/2, height/3);
  line(145, 438, width/2, height/3);
  line(120, 358, width/2, height/3);
  line(118, 279, width/2, height/3);
  line(143, 202, width/2, height/3);
  line(191, 136, width/2, height/3);
  line(255, 87, width/2, height/3);
  line(334, 64, width/2, height/3);
  line(414, 62, width/2, height/3);
  line(490, 87, width/2, height/3);
  line(557, 134, width/2, height/3);
  line(607, 200, width/2, height/3);
  line(632, 272, width/2, height/3);
  line(633, 356, width/2, height/3);
  line(607, 432, width/2, height/3);
  line(561, 497, width/2, height/3);
  line(494, 548, width/2, height/3);
  noFill();
  strokeWeight(6);
  circle(width/2, height/3, 520);
  //bullseye
  noStroke();
   fill(0, 132, 61);
  circle(width/2, height/3, 45);
   fill(200, 16, 46);
  circle(width/2, height/3, 20);
}

void gameClicks() {
}

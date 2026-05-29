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

  //dart board
  drawDartBoard();

  //score
  textSize(20);
  fill(cyan);
  text("Blue: " + blueScore, width/4*3, height-100);
  fill(brightRed);
  text("Red: " + redScore, width/4*3, height-80);

  //selector dot
  fill(0, 150);
  noStroke();
  circle(sX, sY, 25);
  if (xSelected == false) {
    sX += vx;
    if (sX + 12 > width/2 + 615/2 || sX - 12 < width/2 - 615/2) vx = -vx;
  } else if (ySelected == false) {
    sY += vy;
    if (sY + 12 > height/3 + 615/2 || sY - 12 < height/3 - 615/2) vy = -vy;
  }

  if (pauseFrame > 0 && frameCount >= pauseFrame) {
    pauseFrame = -1;
    resetForNextPlayer();
  }
}

void gameClicks() {
  if (xSelected == false) {
    xSelected = true;
    vx = 0;
    vy = 5;  // start Y moving immediately
  } else if (ySelected == false) {
    ySelected = true;
    vy = 0;
    pauseFrame = frameCount + 30;  // wait 30 frames (~0.5s) before reset
  }
}

void drawDartBoard() {

  //darts board
  fill(#181A18);
  circle(width/2, height/3, 615);

  for (int i = 0; i < 20; i++) {
    float a = (-HALF_PI - PI/20) + i * (TWO_PI/20);
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
  strokeWeight(5);
  fill(#BA8C63);

  line(418, 575, width/2, height/3);
  line(337, 576, width/2, height/3);
  drawTriangle(357, 187, 391, 187);

  line(260, 550, width/2, height/3);
  line(190, 500, width/2, height/3);
  drawTriangle(437, 202, 465, 222);

  line(145, 438, width/2, height/3);
  line(120, 358, width/2, height/3);
  drawTriangle(493, 262, 503, 291);

  line(118, 279, width/2, height/3);
  line(143, 202, width/2, height/3);
  drawTriangle(503, 340, 493, 371);

  line(191, 136, width/2, height/3);
  line(255, 87, width/2, height/3);
  drawTriangle(468, 410, 438, 431);

  line(334, 64, width/2, height/3);
  line(414, 62, width/2, height/3);
  drawTriangle(394, 445, 361, 446);

  line(490, 87, width/2, height/3);
  line(557, 134, width/2, height/3);
  drawTriangle(316, 431, 286, 409);

  line(607, 200, width/2, height/3);
  line(632, 272, width/2, height/3);
  drawTriangle(258, 374, 247, 341);

  line(633, 356, width/2, height/3);
  line(607, 432, width/2, height/3);
  drawTriangle(247, 295, 257, 261);

  line(561, 497, width/2, height/3);
  line(494, 548, width/2, height/3);
  drawTriangle(284, 222, 312, 203);

  quad(340, 76, 409, 76, 395, 167, 354, 168);
  quad(486, 103, 446, 183, 479, 207, 542, 144);
  quad(610, 272, 522, 288, 512, 253, 591, 213);
  quad(510, 380, 590, 420, 612, 356, 523, 342);
  quad(446, 448, 487, 528, 545, 486, 480, 423);
  quad(357, 465, 396, 465, 411, 553, 345, 553);
  quad(266, 530, 306, 449, 272, 425, 209, 489);
  quad(162, 425, 241, 384, 228, 345, 140, 360);
  quad(139, 279, 158, 214, 239, 254, 227, 291);
  quad(303, 186, 261, 105, 206, 146, 270, 209);

  textSize(32);
  fill(255);
  textAlign(CENTER, CENTER);
  text("20", 374, 30);
  text("1", 460, 45);
  text("5", 289, 47);
  text("12", 198, 86);
  text("9", 139, 155);
  text("14", 99, 233);
  text("11", 89, 318);
  text("8", 102, 405);
  text("16", 137, 479);
  text("7", 207, 546);
  text("19", 286, 586);
  text("3", 377, 602);
  text("17", 462, 586);
  text("2", 542, 546);
  text("15", 605, 483);
  text("10", 641, 400);
  text("6", 656, 314);
  text("13", 642, 231);
  text("4", 605, 152);
  text("18", 538, 80);
  noFill();
  strokeWeight(6.7);
  circle(width/2, height/3, 520);

  //bullseye
  fill(0, 132, 61);
  circle(width/2, height/3, 45);
  strokeWeight(1);
  fill(200, 16, 46);
  circle(width/2, height/3, 20);
}

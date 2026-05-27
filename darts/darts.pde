//darts - self directed game (final project)
//Programming 11
//Cheng Cheng

//import
import processing.javafx.*;

//MODE VARIABLES--------------------------------------------------------------------------------
int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;

//COLOR VARIABLES---------------------------------------------------------------------------------------
//Colors
//essential primaries
color warmYellow  = #FFDF00;
color coolYellow  = #F1FF5E;
color white       = #F9F6F0;
color cyan        = #00FFFF;
color warmBlue    = #180A8F;
color coolBlue    = #0055A4;
color pink        = #FF69B4;
//Earth Tones
color brightRed   = #FF0000;
color brightOrange= #FF5F1F;
color warmGreen   = #7BB661;
color coolGreen   = #00A86B;
//black
color black  = #000000;
void setup(){
size(750,950,FX2D);
textAlign(CENTER,CENTER);

}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
  println(mouseX,mouseY);
}

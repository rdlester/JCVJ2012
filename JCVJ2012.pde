/**
 * VanJam2012
 * Double Impact
 * Ryan Lester, Josh Raab, Chris Hernandez, Young Neil, Calvin Hu
 */

import hermes.*;
import hermes.hshape.*;
import hermes.animation.*;
import hermes.physics.*;
import hermes.postoffice.*;
import static hermes.HermesMath.*;
import static hermes.postoffice.POConstants.*;

///////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////
/**
 * Constants should go up here
 * Making more things constants makes them easier to adjust and play with!
 */
static final int WINDOW_WIDTH = 800;
static final int WINDOW_HEIGHT = 800;

World currentWorld;

///////////////////////////////////////////////////
// PAPPLET
///////////////////////////////////////////////////

void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
  Hermes.setPApplet(this);
  
  animSetup();

  currentWorld = new LevelPvPGoons();

  //Important: don't forget to add setup to TemplateWorld!

  currentWorld.start(); // this should be the last line in setup() method
}

void draw() {
  currentWorld.draw();
}



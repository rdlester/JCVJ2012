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
static final int WINDOW_WIDTH = 1280;
static final int WINDOW_HEIGHT = 960;

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

<<<<<<< HEAD
=======

>>>>>>> db58a4b5f9878ae35a35db114657cc09f64c9e20

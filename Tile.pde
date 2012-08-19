static class TileType {
  static final int BLANK = 0;
  static final int INDESTRUCTIBLE = 1;
  static final int BARREL = 2;
  static final int CRATE = 3;
  static final int ALEX = 4;
  static final int CHAD = 5;
  static final int GUN_GOON = 6;
  static final int KUNG_FU_GOON = 7;
  static final int VICTORY = 8;
}

static class Animations {
  static Animation GEN_DWN_Fwd = new Animation("data/images/GEN_DWN_Fwd", 1, 6, ".png", 150);
  static final int iGEN_DWN_Fwd = 1;
  static Animation GEN_DWN_Back = new Animation("data/images/GEN_DWN_Back", 1, 6, ".png", 150);
  static final int iGEN_DWN_Back = 2;
  static Animation GEN_DWN_Die = new Animation("data/images/GEN_DWN_Die", 1, 6, ".png", 150);
  static final int iGEN_DWN_Die = 3;
  static Animation GEN_DWN_Explode = new Animation("data/images/GEN_DWN_Explode", 1, 6, ".png", 150);
  static final int iGEN_DWN_Explode = 4;
  static Animation GEN_DWN_Melee = new Animation("data/images/GEN_DWN_Melee", 1, 6, ".png", 150);
  static final int iGEN_DWN_Melee = 5;
  static Animation GEN_DWN_Roundhouse = new Animation("data/images/GEN_DWN_Roundhouse", 1, 6, ".png", 150);
  static final int iGEN_DWN_Roundhouse = 6;
  static Animation GEN_DWN_StrafeRight = new Animation("data/images/GEN_DWN_StrafeLeft", 1, 6, ".png", 150);
  static final int iGEN_DWN_StrafeRight = 7;
  static Animation GEN_DWN_StrafeLeft = new Animation("data/images/GEN_DWN_StrafeRight", 1, 6, ".png", 150);
  static final int iGEN_DWN_StrafeLeft = 8;
  static Animation GEN_DWN_TurnLeft = new Animation("data/images/GEN_DWN_TurnLeft", 1, 6, ".png", 150);
  static final int iGEN_DWN_TurnLeft = 9;
  static Animation GEN_DWN_TurnRight = new Animation("data/images/GEN_DWN_TurnRight", 1, 6, ".png", 150);
  static final int iGEN_DWN_TurnRight = 10;

  static Animation ALEX_DWN_Fire = new Animation("data/images/ALEX_DOWN_Fire", 1, 2, ".png", 150);
  static final int iALEX_DWN_Fire = 11;
  static Animation ALEX_SIDE_Fire = new Animation("data/images/ALEX_SIDE_Fire", 1, 2, ".png", 150);
  static final int iALEX_SIDE_Fire = 12;
  static Animation ALEX_UP_Fire = new Animation("data/images/ALEX_UP_Fire", 1, 2, ".png", 150);
  static final int iALEX_UP_Fire = 13;


  static Animation CHAD_DWN_Fire = new Animation("data/images/CHAD_DOWN_Fire", 1, 2, ".png", 150);
  static final int iCHAD_DWN_Fire = 14;
  static Animation CHAD_SIDE_Fire = new Animation("data/images/CHAD_SIDE_Fire", 1, 2, ".png", 150);
  static final int iCHAD_SIDE_Fire = 15;
  static Animation CHAD_UP_Fire = new Animation("data/images/CHAD_UP_Fire", 1, 2, ".png", 150);
  static final int iCHAD_UP_Fire = 16;


  static Animation EMYGUN_DOWN_Fire = new Animation("data/images/EMYGUN_DOWN_Fire", 1, 2, ".png", 150);
  static final int iEMYGUN_DOWN_Fire = 17;
  static Animation EMYGUN_SIDE_Fire = new Animation("data/images/EMYGUN_SIDE_Fire", 1, 2, ".png", 150);
  static final int iEMYGUN_SIDE_Fire = 18;
  static Animation EMYGUN_UP_Fire = new Animation("data/images/EMYGUN_UP_Fire", 1, 2, ".png", 150);
  static final int iEMYGUN_UP_Fire = 19;


  static Animation EMY_DWN_Die = new Animation("data/images/EMY_DOWN_Die", 1, 6, ".png", 150);
  static final int iEMY_DWN_DIE = 20;

  static Animation CrateBreak = new Animation("data/images/CrateBreak", 1, 6, ".png", 150);
  static final int iCrateBreak = 21;

  static Animation BarrelExplode = new Animation("data/images/BarrelExplode", 1, 6, ".png", 150);
  static final int iBarrelExplode = 22;

  static Animation Crate = new Animation("data/images/Crate", 1, 1, ".png", 150);
  static final int iCrate = 23;

  static Animation Barrel = new Animation("data/images/Barrel", 1, 1, ".png", 150);
  static final int iBarrel = 24;
}

//The Gun animations repeat thrice.
void animSetup() {
  Animations.ALEX_DOWN_Fire.setNumberOfTimesToPlay(3);
  Animations.ALEX_SIDE_Fire.setNumberOfTimesToPlay(3);
  Animations.ALEX_UP_Fire.setNumberOfTimesToPlay(3);
  Animations.CHAD_DOWN_Fire.setNumberOfTimesToPlay(3);
  Animations.CHAD_SIDE_Fire.setNumberOfTimesToPlay(3);
  Animations.CHAD_UP_Fire.setNumberOfTimesToPlay(3);
  Animations.EMYGUN_DOWN_Fire.setNumberOfTimesToPlay(3);
  Animations.EMYGUN_SIDE_Fire.setNumberOfTimesToPlay(3);
  Animations.EMYGUN_UP_Fire.setNumberOfTimesToPlay(3);
}



/**
 * Tile on the board
 */
abstract class Tile {
  int _type;
  int _hp;
  boolean _animate = false;
  AnimatedSprite _sprite = new AnimatedSprite();

  Tile(int type) {
    _type = type;
    
  }

  int getType() {
    return _type;
  }

  void applyHit(int power) {
    _hp-=power;
  }

  void drawAnimation() {
    _sprite.animate();
    _animate = false;
  }

  abstract void draw();
}


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
  static Animation GEN_DWN_Back = new Animation("data/images/GEN_DWN_Back", 1, 5, ".png", 150);
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

  static Animation ALEX_DWN_Fire = new Animation("data/images/ALEX_DWN_Fire", 1, 2, ".png", 150);
  static final int iALEX_DWN_Fire = 11;
  static Animation ALEX_SIDE_Fire = new Animation("data/images/ALEX_SIDE_Fire", 1, 2, ".png", 150);
  static final int iALEX_SIDE_Fire = 12;
  static Animation ALEX_UP_Fire = new Animation("data/images/ALEX_UP_Fire", 1, 2, ".png", 150);
  static final int iALEX_UP_Fire = 13;


  static Animation CHAD_DWN_Fire = new Animation("data/images/CHAD_DWN_Fire", 1, 2, ".png", 150);
  static final int iCHAD_DWN_Fire = 14;
  static Animation CHAD_SIDE_Fire = new Animation("data/images/CHAD_SIDE_Fire", 1, 2, ".png", 150);
  static final int iCHAD_SIDE_Fire = 15;
  static Animation CHAD_UP_Fire = new Animation("data/images/CHAD_UP_Fire", 1, 2, ".png", 150);
  static final int iCHAD_UP_Fire = 16;


  static Animation EMYGUN_DWN_Fire = new Animation("data/images/EMYGUN_DWN_Fire", 1, 2, ".png", 150);
  static final int iEMYGUN_DWN_Fire = 17;
  static Animation EMYGUN_SIDE_Fire = new Animation("data/images/EMYGUN_SIDE_Fire", 1, 2, ".png", 150);
  static final int iEMYGUN_SIDE_Fire = 18;
  static Animation EMYGUN_UP_Fire = new Animation("data/images/EMYGUN_UP_Fire", 1, 2, ".png", 150);
  static final int iEMYGUN_UP_Fire = 19;


  static Animation EMY_DWN_Die = new Animation("data/images/EMY_DWN_Die", 1, 6, ".png", 150);
  static final int iEMY_DWN_DIE = 20;

  static Animation CrateBreak = new Animation("data/images/CrateBreak", 1, 6, ".png", 150);
  static final int iCrateBreak = 21;

  static Animation BarrelExplode = new Animation("data/images/BarrelExplode", 1, 6, ".png", 150);
  static final int iBarrelExplode = 22;

  static Animation Crate = new Animation("data/images/Crate", 1, 1, ".png", 150);
  static final int iCrate = 23;

  static Animation Barrel = new Animation("data/images/Barrel", 1, 1, ".png", 150);
  static final int iBarrel = 24;
  
  static Animation ALEX_LEFT_Fire = new Animation("data/images/L-", 1, 2, ".png", 150);
  static final int iALEX_LEFT_Fire = 25;
  static Animation CHAD_LEFT_Fire = new Animation("data/images/L-", 3, 4, ".png", 150);
  static final int iCHAD_LEFT_Fire = 26;
  static Animation EMYGUN_LEFT_Fire = new Animation("data/images/L-", 6, 7, ".png", 150);
  static final int iALEX_LEFT_Fire = 27;
  
  static Animation ALEX_LEFT_Idle = new Animation("data/images/L-", 0, 0, ".png", 150);
  static final int iALEX_LEFT_Idle = 28;
  static Animation ALEX_RIGHT_Idle = new Animation("data/images/ALEX_SIDE", 1, 1, ".png", 150);
  static final int iALEX_RIGHT_Idle = 29;
  static Animation ALEX_DOWN_Idle = new Animation("data/images/ALEX_DWN_Idle", 1, 1, ".png", 150);
  static final int iALEX_DOWN_Idle = 30;
  static Animation ALEX_UP_Idle = new Animation("data/images/ALEX_UP_Idle", 1, 1, ".png", 150);
  static final int iALEX_UP_Idle = 31;
  
  static Animation CHAD_LEFT_Idle = new Animation("data/images/L-", 5, 5, ".png", 150);
  static final int iCHAD_LEFT_Idle = 32;
  static Animation CHAD_RIGHT_Idle = new Animation("data/images/CHAD_SIDE_Idle", 1, 1, ".png", 150);
  static final int iCHAD_RIGHT_Idle = 33;
  static Animation CHAD_DOWN_Idle = new Animation("data/images/CHAD_DWN_Idle", 1, 1, ".png", 150);
  static final int iCHAD_DOWN_Idle = 34;
  static Animation CHAD_UP_Idle = new Animation("data/images/CHAD_UP_Idle", 1, 1, ".png", 150);
  static final int iCHAD_UP_Idle = 35;
  
  static Animation EMYGUN_LEFT_Idle = new Animation("data/images/L-", 8, 8, ".png", 150);
  static final int iEMYGUN_LEFT_Idle = 36;
  static Animation EMYGUN_RIGHT_Idle = new Animation("data/images/EMYGUN_SIDE_Idle", 1, 1, ".png", 150);
  static final int iEMYGUN_RIGHT_Idle = 37;
  static Animation EMYGUN_DOWN_Idle = new Animation("data/images/EMYGUN_DWN_Idle", 1, 1, ".png", 150);
  static final int iEMYGUN_DOWN_Idle = 38;
  static Animation EMYGUN_UP_Idle = new Animation("data/images/EMYGUN_UP_Idle", 1, 1, ".png", 150);
  static final int iEMYGUN_UP_Idle = 39;
  
  static Animation EMYMEL_LEFT_Idle = new Animation("data/images/L-", 8, 8, ".png", 150);
  static final int iEMYMEL_LEFT_Idle = 40;
  static Animation EMYMEL_RIGHT_Idle = new Animation("data/images/EMYMEL_SIDE_Idle", 1, 1, ".png", 150);
  static final int iEMYMEL_RIGHT_Idle = 41;
  static Animation EMYMEL_DOWN_Idle = new Animation("data/images/EMYMEL_DWN_Idle", 1, 1, ".png", 150);
  static final int iEMYMEL_DOWN_Idle = 42;
  static Animation EMYMEL_UP_Idle = new Animation("data/images/EMYMEL_UP_Idle", 1, 1, ".png", 150);
  static final int iEMYMEL_UP_Idle = 43;
  
  static Animation GEN_UP_Fwd = new Animation("data/images/GEN_UP_Fwd", 1, 6, ".png", 150);
  static final int iGEN_UP_Fwd = 44;
  static Animation GEN_UP_Back = new Animation("data/images/GEN_UP_Back", 1, 5, ".png", 150);
  static final int iGEN_UP_Back = 45;
  static Animation GEN_UP_Die = new Animation("data/images/GEN_UP_Die", 1, 6, ".png", 150);
  static final int iGEN_UP_Die = 46;
  static Animation GEN_UP_Explode = new Animation("data/images/GEN_UP_Explode", 1, 6, ".png", 150);
  static final int iGEN_UP_Explode = 47;
  static Animation GEN_UP_Melee = new Animation("data/images/GEN_UP_Melee", 1, 6, ".png", 150);
  static final int iGEN_UP_Melee = 48;
  static Animation GEN_UP_Roundhouse = new Animation("data/images/GEN_UP_Roundhouse", 1, 6, ".png", 150);
  static final int iGEN_UP_Roundhouse = 49;
  static Animation GEN_UP_StrafeRight = new Animation("data/images/GEN_UP_StrafeLeft", 1, 6, ".png", 150);
  static final int iGEN_UP_StrafeRight = 50;
  static Animation GEN_UP_StrafeLeft = new Animation("data/images/GEN_UP_StrafeRight", 1, 6, ".png", 150);
  static final int iGEN_UP_StrafeLeft = 51;
  static Animation GEN_UP_TurnLeft = new Animation("data/images/GEN_UP_TurnLeft", 1, 6, ".png", 150);
  static final int iGEN_UP_TurnLeft = 52;
  static Animation GEN_UP_TurnRight = new Animation("data/images/GEN_UP_TurnRight", 1, 6, ".png", 150);
  static final int iGEN_UP_TurnRight = 53;
  
}

//The Gun animations repeat thrice.
void animSetup() {
  Animations.ALEX_DWN_Fire.setNumberOfTimesToPlay(3);
  Animations.ALEX_SIDE_Fire.setNumberOfTimesToPlay(3);
  Animations.ALEX_UP_Fire.setNumberOfTimesToPlay(3);
  Animations.ALEX_LEFT_Fire.setNumberOfTimesToPlay(3);
  Animations.CHAD_DWN_Fire.setNumberOfTimesToPlay(3);
  Animations.CHAD_SIDE_Fire.setNumberOfTimesToPlay(3);
  Animations.CHAD_UP_Fire.setNumberOfTimesToPlay(3);
  Animations.CHAD_LEFT_Fire.setNumberOfTimesToPlay(3);
  Animations.EMYGUN_DWN_Fire.setNumberOfTimesToPlay(3);
  Animations.EMYGUN_SIDE_Fire.setNumberOfTimesToPlay(3);
  Animations.EMYGUN_UP_Fire.setNumberOfTimesToPlay(3);
  Animations.EMYGUN_LEFT_Fire.setNumberOfTimesToPlay(3);
}



/**
 * Tile on the board
 */
abstract class Tile {
  int _type;
  int _hp;
  boolean _animate;
  AnimatedSprite _sprite;

  Tile(int type) {
    _type = type;
    _animate = false;
    _sprite = new AnimatedSprite();
    _sprite.addAnimation(Animations.GEN_DWN_Fwd);
    _sprite.addAnimation(Animations.GEN_DWN_Back);
    _sprite.addAnimation(Animations.GEN_DWN_Die);
    _sprite.addAnimation(Animations.GEN_DWN_Explode);
    _sprite.addAnimation(Animations.GEN_DWN_Melee);
    _sprite.addAnimation(Animations.GEN_DWN_Roundhouse);
    _sprite.addAnimation(Animations.GEN_DWN_StrafeRight);
    _sprite.addAnimation(Animations.GEN_DWN_StrafeLeft);
    _sprite.addAnimation(Animations.GEN_DWN_TurnLeft);
    _sprite.addAnimation(Animations.GEN_DWN_TurnRight);
    _sprite.addAnimation(Animations.ALEX_DWN_Fire);
    _sprite.addAnimation(Animations.ALEX_SIDE_Fire);
    _sprite.addAnimation(Animations.ALEX_UP_Fire);
    _sprite.addAnimation(Animations.CHAD_DWN_Fire);
    _sprite.addAnimation(Animations.CHAD_SIDE_Fire);
    _sprite.addAnimation(Animations.CHAD_UP_Fire);
    _sprite.addAnimation(Animations.EMYGUN_DWN_Fire);
    _sprite.addAnimation(Animations.EMYGUN_SIDE_Fire);
    _sprite.addAnimation(Animations.EMYGUN_UP_Fire);
    _sprite.addAnimation(Animations.EMY_DWN_Die);
    _sprite.addAnimation(Animations.CrateBreak);
    _sprite.addAnimation(Animations.BarrelExplode);
    _sprite.addAnimation(Animations.Crate);
    _sprite.addAnimation(Animations.Barrel);
    _sprite.addAnimation(Animations.ALEX_LEFT_Fire);
    _sprite.addAnimation(Animations.CHAD_LEFT_Fire);
    _sprite.addAnimation(Animations.EMYGUN_LEFT_Fire);
    _sprite.addAnimation(Animations.ALEX_LEFT_Idle);
    _sprite.addAnimation(Animations.ALEX_RIGHT_Idle);
    _sprite.addAnimation(Animations.ALEX_DOWN_Idle);
    _sprite.addAnimation(Animations.ALEX_UP_Idle);
    _sprite.addAnimation(Animations.CHAD_LEFT_Idle);
    _sprite.addAnimation(Animations.CHAD_RIGHT_Idle);
    _sprite.addAnimation(Animations.CHAD_DOWN_Idle);
    _sprite.addAnimation(Animations.CHAD_UP_Idle);
    _sprite.addAnimation(Animations.EMYGUN_LEFT_Idle);
    _sprite.addAnimation(Animations.EMYGUN_RIGHT_Idle);
    _sprite.addAnimation(Animations.EMYGUN_DOWN_Idle);
    _sprite.addAnimation(Animations.EMYGUN_UP_Idle);
    _sprite.addAnimation(Animations.GEN_UP_Fwd);
    _sprite.addAnimation(Animations.GEN_UP_Back);
    _sprite.addAnimation(Animations.GEN_UP_Die);
    _sprite.addAnimation(Animations.GEN_UP_Explode);
    _sprite.addAnimation(Animations.GEN_UP_Melee);
    _sprite.addAnimation(Animations.GEN_UP_Roundhouse);
    _sprite.addAnimation(Animations.GEN_UP_StrafeRight);
    _sprite.addAnimation(Animations.GEN_UP_StrafeLeft);
    _sprite.addAnimation(Animations.GEN_UP_TurnLeft);
    _sprite.addAnimation(Animations.GEN_UP_TurnRight);
    
  }

  boolean isAnim() {
    return _animate;
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

<<<<<<< HEAD
=======


<<<<<<< HEAD
>>>>>>> db58a4b5f9878ae35a35db114657cc09f64c9e20
=======





>>>>>>> Key handling fixed, panic mode

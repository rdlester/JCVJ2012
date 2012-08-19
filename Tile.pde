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
  static final Animation GEN_DWN_Fwd = new Animation("GEN_DWN_Fwd", 1, 6, "png", 150);
  static final int iGEN_DWN_Fwd = 1;
  static final Animation GEN_DWN_Back = new Animation("GEN_DWN_Back", 1, 6, "png", 150);
  static final int iGEN_DWN_Back = 2;
  static final Animation GEN_DWN_Die = new Animation("GEN_DWN_Die", 1, 6, "png", 150);
  static final int iGEN_DWN_Die = 3;
  static final Animation GEN_DWN_Explode = new Animation("GEN_DWN_Explode", 1, 6, "png", 150);
  static final int iGEN_DWN_Explode = 4;
  static final Animation GEN_DWN_Melee = new Animation("GEN_DWN_Melee", 1, 6, "png", 150);
  static final int iGEN_DWN_Melee = 5;
  static final Animation GEN_DWN_Roundhouse = new Animation("GEN_DWN_Roundhouse", 1, 6, "png", 150);
  static final int iGEN_DWN_Roundhouse = 6;
  static final Animation GEN_DWN_StrafeRight = new Animation("GEN_DWN_StrafeLeft", 1, 6, "png", 150);
  static final int iGEN_DWN_StrafeRight = 7;
  static final Animation GEN_DWN_StrafeLeft = new Animation("GEN_DWN_StrafeRight", 1, 6, "png", 150);
  static final int iGEN_DWN_StrafeLeft = 8;
  static final Animation GEN_DWN_TurnLeft = new Animation("GEN_DWN_TurnLeft", 1, 6, "png", 150);
  static final int iGEN_DWN_TurnLeft = 9;
  static final Animation GEN_DWN_TurnRight = new Animation("GEN_DWN_TurnRight", 1, 6, "png", 150);
  static final int iGEN_DWN_TurnRight = 10;
  
  static final Animation ALEX_DOWN_Fire = new Animation("ALEX_DOWN_Fire", 1, 2, "png", 150);
  static final int iALEX_DOWN_Fire = 11;
  static final Animation ALEX_SIDE_Fire = new Animation("ALEX_SIDE_Fire", 1, 2, "png", 150);
  static final int iALEX_SIDE_Fire = 12;
  static final Animation ALEX_UP_Fire = new Animation("ALEX_UP_Fire", 1, 2, "png", 150);
  static final int iALEX_UP_Fire = 13;
  
  static final Animation CHAD_DOWN_Fire = new Animation("CHAD_DOWN_Fire", 1, 2, "png", 150);
  static final int iCHAD_DOWN_Fire = 14;
  static final Animation CHAD_SIDE_Fire = new Animation("CHAD_SIDE_Fire", 1, 2, "png", 150);
  static final int iCHAD_SIDE_Fire = 15;
  static final Animation CHAD_UP_Fire = new Animation("CHAD_UP_Fire", 1, 2, "png", 150);
  static final int iCHAD_UP_Fire = 16;
  
  static final Animation EMYGUN_DOWN_Fire = new Animation("EMYGUN_DOWN_Fire", 1, 2, "png", 150);
  static final int iEMYGUN_DOWN_Fire = 17;
  static final Animation EMYGUN_SIDE_Fire = new Animation("EMYGUN_SIDE_Fire", 1, 2, "png", 150);
  static final int iEMYGUN_SIDE_Fire = 18;
  static final Animation EMYGUN_UP_Fire = new Animation("EMYGUN_UP_Fire", 1, 2, "png", 150);
  static final int iEMYGUN_UP_Fire = 19;
  
  static final Animation EMY_DOWN_Die = new Animation("EMY_DOWN_Die", 1, 6, "png", 150);
  static final int iEMY_DOWN_DIE = 20;
  
  static final Animation CrateBreak = new Animation("CrateBreak", 1, 6, "png", 150);
  static final int iCrateBreak = 21;
  
  static final Animation BarrelExplode = new Animation("BarrelExplode", 1, 6, "png", 150);
  static final int iBarrelExplode = 22;
  
  static final Animation Crate = new Animation("Crate", 1, 6, "png", 150);
  static final int iCrate = 23;
  
  static final Animation Barrel = new Animation("Barrel", 1, 1, "png", 150);
  static final int iBarrel = 24;
}
  

/**
 * Tile on the board
 */
abstract class Tile {
  int _type;
  int _hp;

  Tile(int type) {
    _type = type;
  }
  
  int getType() {
    return _type;
  }
  
  void applyHit(int power) {
    _hp-=power;
  }

  abstract void draw();
  
  void drawAnimation() {
    
  }
}





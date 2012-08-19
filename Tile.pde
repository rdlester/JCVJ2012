static class TileType {
  static final int BLANK = 0;
  static final int INDESTRUCTIBLE = 1;
  static final int BARREL = 2;
  static final int CRATE = 3;
  static final int ALEX = 4;
  static final int CHAD = 5;
  static final int GUN_GOON = 6;
  static final int KUNG_FU_GOON = 7;
}

/**
 * Tile on the board
 */
abstract class Tile {
  int _type;

  Tile(int type) {
    _type = type;
  }
  
  int getType() {
    return _type;
  }

  abstract void draw();
}



static class Orientation {
  static final int N = 0;
  static final int E = 1;
  static final int S = 2;
  static final int W = 3;
}

/**
 * A Human Character, friend or foe
 */
abstract class Character extends Tile {
  Board _board;
  int _x = -1;
  int _y = -1;
  int _orientation;
  
  
  Character(Board board) {
    _board = board;
    _orientation = Orientation.N;
  }
  
  void setPosition(int x, int y) {
    _x = x;
    _y = y;
  }
    
    void moveForward()
    {
      switch (month) {
            case Orientation.N:               
              break;
              
            default: print("ERROR: Not a valid Orientation.");
                     break;
        }
    }
    
    void moveBackward()
    {
    }
    
    void rotateLeft()
    {
    }
    
    void rotateRight()
    {
    }
    
    void rotateUTurn()
    {
    }
    
    void actionDodge()
    {
    }
    
    void actionMelee()
    {
    }
    
}

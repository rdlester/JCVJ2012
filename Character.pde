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
  int _hp;
  boolean _isDodge = false;
  
  Character(int type, Board board) {
    super(type);
    _board = board;
    _orientation = Orientation.N;
  }
  
  void setPosition(int x, int y) {
    _x = x;
    _y = y;
  }
  
  //Add all card functions to character. Throw exceptions for ones that aren't used by all.
    
    void moveForward()
    {
      switch (_orientation) {
            case Orientation.N:
              Tile next = _board.get(_x, _y-1);
              Tile last = _board.get(_x, _y-2);
              switch (next.getType()) {
                case TileType.BLANK:
                  board.set (_x,_y,next);
                  _y-=1;
                  board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    board.set (_x,_y,last);
                    _y-=1;
                    board.set (_x,_y,this);
                    _y-=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
            case Orientation.E:
              Tile next = _board.get(_x+1, _y);
              Tile last = _board.get(_x+2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  board.set (_x,_y,next);
                  _x+=1;
                  board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    board.set (_x,_y,last);
                    _x+=1;
                    board.set (_x,_y,this);
                    _x+=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
            case Orientation.S:
              Tile next = _board.get(_x, _y+1);
              Tile last = _board.get(_x, _y+2);
              switch (next.getType()) {
                case TileType.BLANK:
                  board.set (_x,_y,next);
                  _y+=1;
                  board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    board.set (_x,_y,last);
                    _y+=1;
                    board.set (_x,_y,this);
                    _y+=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
            case Orientation.W:
              Tile next = _board.get(_x-1, _y);
              Tile last = _board.get(_x-2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  board.set (_x,_y,next);
                  _x-=1;
                  board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    board.set (_x,_y,last);
                    _x-=1;
                    board.set (_x,_y,this);
                    _x-=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
        }
    }
    
    void moveBackward()
    {
      switch (_orientation) {
            case Orientation.N:
              Tile next = _board.get(_x, _y+1);
              Tile last = _board.get(_x, _y+2);
              switch (next.getType()) {
                case TileType.BLANK:
                  board.set (_x,_y,next);
                  _y+=1;
                  board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    board.set (_x,_y,last);
                    _y+=1;
                    board.set (_x,_y,this);
                    _y+=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
            case Orientation.E:
              Tile next = _board.get(_x-1, _y);
              Tile last = _board.get(_x-2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  board.set (_x,_y,next);
                  _x-=1;
                  board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    board.set (_x,_y,last);
                    _x-=1;
                    board.set (_x,_y,this);
                    _x-=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
            case Orientation.S:
              Tile next = _board.get(_x, _y-1);
              Tile last = _board.get(_x, _y-2);
              switch (next.getType()) {
                case TileType.BLANK:
                  board.set (_x,_y,next);
                  _y-=1;
                  board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    board.set (_x,_y,last);
                    _y-=1;
                    board.set (_x,_y,this);
                    _y-=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
            case Orientation.W:
              Tile next = _board.get(_x+1, _y);
              Tile last = _board.get(_x+2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  board.set (_x,_y,next);
                  _x+=1;
                  board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    board.set (_x,_y,last);
                    _x+=1;
                    board.set (_x,_y,this);
                    _x+=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
        }
    }
    
    void rotateLeft()
    {
      switch (_orientation) {
        
        case Orientation.N:
          _orientation = Orientation.W;
          break;
        case Orientation.E:
          _orientation = Orientation.N;
          break;
        case Orientation.S:
          _orientation = Orientation.E;
          break;
        case Orientation.W:
          _orientation = Orientation.S;
          break;
        default:
          print("Error: Not a valid orientation.")
          break;
      }
    }
    
    void rotateRight()
    {
      switch (_orientation) {
        
        case Orientation.N:
          _orientation = Orientation.E;
          break;
        case Orientation.E:
          _orientation = Orientation.S;
          break;
        case Orientation.S:
          _orientation = Orientation.W;
          break;
        case Orientation.W:
          _orientation = Orientation.N;
          break;
        default:
          print("Error: Not a valid orientation.")
          break;
      }
    }
    
    void rotateUTurn()
    {
      switch (_orientation) {
        
        case Orientation.N:
          _orientation = Orientation.S;
          break;
        case Orientation.E:
          _orientation = Orientation.W;
          break;
        case Orientation.S:
          _orientation = Orientation.N;
          break;
        case Orientation.W:
          _orientation = Orientation.E;
          break;
        default:
          print("Error: Not a valid orientation.")
          break;
      }
    }
    
    void actionDodge()
    {
      _isDodge = true;
    }
    
    void actionMelee()
    {
      switch (_orientation) {
            case Orientation.N:
              Tile next = _board.get(_x, _y-1);
              Tile last = _board.get(_x, _y-2);
              switch (next.getType()) {
                case TileType.BLANK:
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    _y-=1;
                    board.set (_x,_y,last);
                    _y-=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
            case Orientation.E:
              Tile next = _board.get(_x+1, _y);
              Tile last = _board.get(_x+2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    _x+=1;
                    board.set (_x,_y,last);
                    _x+=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
            case Orientation.S:
              Tile next = _board.get(_x, _y+1);
              Tile last = _board.get(_x, _y+2);
              switch (next.getType()) {
                case TileType.BLANK:
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    _y+=1;
                    board.set (_x,_y,last);
                    _y+=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
            case Orientation.W:
              Tile next = _board.get(_x-1, _y);
              Tile last = _board.get(_x-2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType == "BLANK"){
                    _x-=1;
                    board.set (_x,_y,last);
                    _x-=1;
                    board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                case default:
                  //"Stuck" animation goes here.
                  break;                
              }
      }
    }
    
    //Exception Functions: These are functions that are unique to cetain types, but not shared by all. They will throw exceptions.
    
    void moveForward2()
    {
      throw new Exception();
    }
    
    void moveStrafeRight()
    {
      throw new Exception();
    }
    
    void moveStrafeLeft()
    {
      throw new Exception();
    }
    
    void actionFire()
    {
      throw new Exception();
    }
    
    void actionRoundhouse()
    {
      throw new Exception();
    }
    
    void actionAttack()
    {
      throw new Exception();
    }
    
    void actionRollingPistolsRight()
    {
      throw new Exception();
    }
    
    void actionRollingPistolsLeft()
    {
      throw new Exception();
    }
    
    void actionFlyingKick()
    {
      throw new Exception();
    }
    
    void actionDivingShot()
    {
      throw new Exception();
    }
      
}


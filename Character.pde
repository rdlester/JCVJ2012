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
      Tile next, last;
      switch (_orientation) {
            case Orientation.N:
              next = _board.get(_x, _y-1);
              last = _board.get(_x, _y-2);
              switch (next.getType()) {
                case TileType.BLANK:
                  _board.set (_x,_y,next);
                  _y-=1;
                  _board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType() == TileType.BLANK){
                    _board.set (_x,_y,last);
                    _y-=1;
                    _board.set (_x,_y,this);
                    _y-=1;
                    _board.set (_x,_y,next);

                  } else{
                    
                  }
                  break;
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
            case Orientation.E:
              next = _board.get(_x+1, _y);
              last = _board.get(_x+2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  _board.set (_x,_y,next);
                  _x+=1;
                  _board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType() == TileType.BLANK){
                    _board.set (_x,_y,last);
                    _x+=1;
                    _board.set (_x,_y,this);
                    _x+=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
            case Orientation.S:
              next = _board.get(_x, _y+1);
              last = _board.get(_x, _y+2);
              switch (next.getType()) {
                case TileType.BLANK:
                  _board.set (_x,_y,next);
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iGEN_DWN_Fwd);
                  _y+=1;
                  _board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType() == TileType.BLANK){
                    _board.set (_x,_y,last);
                    _animate = true;
                    _sprite.setActiveAnimation(Animations.iGEN_DWN_Fwd);
                    _y+=1;
                    _board.set (_x,_y,this);
                    _y+=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
            case Orientation.W:
              next = _board.get(_x-1, _y);
              last = _board.get(_x-2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  _board.set (_x,_y,next);
                  _x-=1;
                  _board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType() == TileType.BLANK){
                    _board.set (_x,_y,last);
                    _x-=1;
                    _board.set (_x,_y,this);
                    _x-=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
                break;
        }
    }
    
    void moveBackward()
    {
      Tile next, last;
      switch (_orientation) {
            case Orientation.N:
              next = _board.get(_x, _y+1);
              last = _board.get(_x, _y+2);
              switch (next.getType()) {
                case TileType.BLANK:
                  _board.set (_x,_y,next);
                  _y+=1;
                  _board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType() == TileType.BLANK){
                    _board.set (_x,_y,last);
                    _y+=1;
                    _board.set (_x,_y,this);
                    _y+=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
            case Orientation.E:
              next = _board.get(_x-1, _y);
              last = _board.get(_x-2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  _board.set (_x,_y,next);
                  _x-=1;
                  _board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType() == TileType.BLANK){
                    _board.set (_x,_y,last);
                    _x-=1;
                    _board.set (_x,_y,this);
                    _x-=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
            case Orientation.S:
              next = _board.get(_x, _y-1);
              last = _board.get(_x, _y-2);
              switch (next.getType()) {
                case TileType.BLANK:
                  _board.set (_x,_y,next);
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iGEN_DWN_Back);
                  _y-=1;
                  _board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType() == TileType.BLANK){
                    _board.set (_x,_y,last);
                    _y-=1;
                    _animate = true;
                    _sprite.setActiveAnimation(Animations.iGEN_DWN_Back);
                    _board.set (_x,_y,this);
                    _y-=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
            case Orientation.W:
              next = _board.get(_x+1, _y);
              last = _board.get(_x+2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  _board.set (_x,_y,next);
                  _x+=1;
                  _board.set (_x,_y,this);
                  break;
                case TileType.BARREL:
                case TileType.CRATE:
                  if (last.getType() == TileType.BLANK){
                    _board.set (_x,_y,last);
                    _x+=1;
                    _board.set (_x,_y,this);
                    _x+=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
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
          print("Error: Not a valid orientation.");
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
          print("Error: Not a valid orientation.");
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
          print("Error: Not a valid orientation.");
          break;
      }
    }
    
    void actionDodge()
    {
      _isDodge = true;
    }
    
    void actionMelee()
    {
      Tile next, last;
      switch (_orientation) {
            case Orientation.N:
              next = _board.get(_x, _y-1);
              last = _board.get(_x, _y-2);
              switch (next.getType()) {
                case TileType.BLANK:
                  break;
                case TileType.BARREL:
                  if (last.getType() == TileType.BLANK){
                    _y-=1;
                    _board.set (_x,_y,last);
                    _y-=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                //Aplies one hp of damage to these objects.
                case TileType.CRATE:
                  next.applyHit(1);
                  break;
                case TileType.ALEX:
                case TileType.CHAD:
                case TileType.GUN_GOON:
                case TileType.KUNG_FU_GOON:
                  next.applyHit(1);
                  break;
                  
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
            case Orientation.E:
              next = _board.get(_x+1, _y);
              last = _board.get(_x+2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  break;
                case TileType.BARREL:
                  if (last.getType() == TileType.BLANK){
                    _x+=1;
                    _board.set (_x,_y,last);
                    _x+=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                //Aplies one hp of damage to these objects.
                case TileType.CRATE:
                  next.applyHit(1);
                  break;
                case TileType.ALEX:
                case TileType.CHAD:
                case TileType.GUN_GOON:
                case TileType.KUNG_FU_GOON:
                  next.applyHit(1);
                  break;
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
            case Orientation.S:
              next = _board.get(_x, _y+1);
              last = _board.get(_x, _y+2);
              switch (next.getType()) {
                case TileType.BLANK:
                  break;
                case TileType.BARREL:
                  if (last.getType() == TileType.BLANK){
                    _y+=1;
                    _board.set (_x,_y,last);
                    _y+=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                //Aplies one hp of damage to these objects.
                case TileType.CRATE:
                  next.applyHit(1);
                  break;
                case TileType.ALEX:
                case TileType.CHAD:
                case TileType.GUN_GOON:
                case TileType.KUNG_FU_GOON:
                  next.applyHit(1);
                  break;
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
            case Orientation.W:
              next = _board.get(_x-1, _y);
              last = _board.get(_x-2, _y);
              switch (next.getType()) {
                case TileType.BLANK:
                  break;
                case TileType.BARREL:
                  if (last.getType() == TileType.BLANK){
                    _x-=1;
                    _board.set (_x,_y,last);
                    _x-=1;
                    _board.set (_x,_y,next);
                  }
                  else{
                  }
                  break;
                //Aplies one hp of damage to these objects.
                case TileType.CRATE:
                  next.applyHit(1);
                  break;
                case TileType.ALEX:
                case TileType.CHAD:
                case TileType.GUN_GOON:
                case TileType.KUNG_FU_GOON:
                  next.applyHit(1);
                  break;
                  
                default:
                  //"Stuck" animation goes here.
                  break;                
              }
              break;
      }
    }
    
    //Exception Functions: These are functions that are unique to cetain types, but not shared by all. They will throw exceptions.
    
    void moveForward2()
    {
      throw new RuntimeException();
    }
    
    void moveStrafeRight()
    {
      throw new RuntimeException();
    }
    
    void moveStrafeLeft()
    {
      throw new RuntimeException();
    }
    
    void actionFire()
    {
      throw new RuntimeException();
    }
    
    void actionRoundhouse()
    {
      throw new RuntimeException();
    }
    
    void actionAttack()
    {
      throw new RuntimeException();
    }
    
    void actionRollingPistolsRight()
    {
      throw new RuntimeException();
    }
    
    void actionRollingPistolsLeft()
    {
      throw new RuntimeException();
    }
    
    void actionFlyingKick()
    {
      throw new RuntimeException();
    }
    
    void actionDivingShot()
    {
      throw new RuntimeException();
    }
      
}








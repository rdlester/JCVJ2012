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


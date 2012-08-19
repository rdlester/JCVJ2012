/**
 * Kung Fu Goon, has a Gun, can shoot
 */
class KungFuGoon extends Character {
  KungFuGoon(Board board) {
    super(TileType.GUN_GOON, board);
    _sprite.setActiveAnimation(Animations.iGEN_DWN_Fwd);
  }

  void moveForward2()
  {
    Tile next, last;
    switch (_orientation) {
          case Orientation.N:
            next = _board.get(_x, _y-2);
            last = _board.get(_x, _y-3);
            switch (next.getType()) {
              case TileType.BLANK:
                _board.set (_x,_y,next);
                _y-=2;
                _board.set (_x,_y,this);
                break;
              case TileType.BARREL:
              case TileType.CRATE:
                if (last.getType() == TileType.BLANK){
                  _board.set (_x,_y,last);
                  _y-=2;
                  _board.set (_x,_y,this);
                  _y-=2;
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
            next = _board.get(_x+2, _y);
            last = _board.get(_x+3, _y);
            switch (next.getType()) {
              case TileType.BLANK:
                _board.set (_x,_y,next);
                _x+=2;
                _board.set (_x,_y,this);
                break;
              case TileType.BARREL:
              case TileType.CRATE:
                if (last.getType() == TileType.BLANK){
                  _board.set (_x,_y,last);
                  _x+=2;
                  _board.set (_x,_y,this);
                  _x+=2;
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
            next = _board.get(_x, _y+2);
            last = _board.get(_x, _y+3);
            switch (next.getType()) {
              case TileType.BLANK:
                _board.set (_x,_y,next);
                _y+=2;
                _board.set (_x,_y,this);
                break;
              case TileType.BARREL:
              case TileType.CRATE:
                if (last.getType() == TileType.BLANK){
                  _board.set (_x,_y,last);
                  _y+=2;
                  _board.set (_x,_y,this);
                  _y+=2;
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
            next = _board.get(_x-2, _y);
            last = _board.get(_x-3, _y);
            switch (next.getType()) {
              case TileType.BLANK:
                _board.set (_x,_y,next);
                _x-=2;
                _board.set (_x,_y,this);
                break;
              case TileType.BARREL:
              case TileType.CRATE:
                if (last.getType() == TileType.BLANK){
                  _board.set (_x,_y,last);
                  _x-=2;
                  _board.set (_x,_y,this);
                  _x-=2;
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

  void draw() {
    
  }
  
  void drawAnimation() { 
    super.drawAnimation();
  }
}








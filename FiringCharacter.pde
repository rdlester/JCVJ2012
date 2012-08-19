abstract class FiringCharacter extends Character {
  FiringCharacter(int type, Board board) {
    super(type, board);
  }

  void actionFire()
  {
    Tile current, origin;
    boolean stopIt = false;
    switch (_orientation){
      
      case Orientation.N:
        _y-=1;
        for (int distance = BoardConsts.GRID_H - _y; distance > 0; distance--){
          origin = _board.get(_x,_y);
          current = origin;
          switch (current.getType()){
            
            case TileType.BLANK:
              break;
            case TileType.CRATE:
              stopIt = true;
              break;
            case TileType.BARREL: //Will remove 1 hp rigging it to explode. Explosion handled somewhere else?
            case TileType.ALEX:
            case TileType.CHAD:
            case TileType.GUN_GOON:
            case TileType.KUNG_FU_GOON:
              switch (origin.getType()){
                case TileType.ALEX:
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iALEX_UP_Fire);
                  break;
                case TileType.CHAD:
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iCHAD_UP_Fire);
                  break;
                case TileType.GUN_GOON:
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iEMYGUN_UP_Fire);
                  break;
                default:
                  print ("ERROR: Not a valid tile type.");
              } 
              current.applyHit(1);
              stopIt = true;
              break;
          }
          
          _y+=1;
          
          if (stopIt == true){
            stopIt = false;
            break;
          }
        }
      case Orientation.E:
        _x+=1;
        for (int distance = BoardConsts.GRID_W - _x; distance > 0; distance--){
          origin = _board.get(_x,_y);
          current = origin;
          switch (current.getType()){
            
            case TileType.BLANK:
              break;
            case TileType.CRATE:
              stopIt = true;
              break;
            case TileType.BARREL: //Will remove 1 hp rigging it to explode. Explosion handled somewhere else?
            case TileType.ALEX:
            case TileType.CHAD:
            case TileType.GUN_GOON:
            case TileType.KUNG_FU_GOON:
              switch (origin.getType()){
                case TileType.ALEX:
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iALEX_SIDE_Fire);
                  break;
                case TileType.CHAD:
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iCHAD_SIDE_Fire);
                  break;
                case TileType.GUN_GOON:
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iEMYGUN_SIDE_Fire);
                  break;
                default:
                  print ("ERROR: Not a valid tile type.");
              } 
              current.applyHit(1);
              stopIt = true;
              break;
          }
          
          _x+=1;
          
          if (stopIt == true){
            stopIt = false;
            break;
          }
        }
      case Orientation.S:
        _y+=1;
        for (int distance = BoardConsts.GRID_H - _y; distance > 0; distance--){
          origin = _board.get(_x,_y);
          current = origin;
          switch (current.getType()){
            
            case TileType.BLANK:
              break;
            case TileType.CRATE:
              stopIt = true;
              break;
            case TileType.BARREL: //Will remove 1 hp rigging it to explode. Explosion handled somewhere else?
            case TileType.ALEX:
            case TileType.CHAD:
            case TileType.GUN_GOON:
            case TileType.KUNG_FU_GOON:
              switch (origin.getType()){
                case TileType.ALEX:
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iALEX_DWN_Fire);
                  break;
                case TileType.CHAD:
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iCHAD_DWN_Fire);
                  break;
                case TileType.GUN_GOON:
                  _animate = true;
                  _sprite.setActiveAnimation(Animations.iEMYGUN_DWN_Fire);
                  break;
                default:
                  print ("ERROR: Not a valid tile type.");
              } 
              current.applyHit(1);
              stopIt = true;
              break;
          }
          
          _y+=1;
          
          if (stopIt == true){
            stopIt = false;
            break;
          }
        }
      case Orientation.W:
        _x-=1;
        for (int distance = BoardConsts.GRID_W - _x; distance > 0; distance--){
          origin = _board.get(_x,_y);
          current = origin;
          switch (current.getType()){
            
            case TileType.BLANK:
              break;
            case TileType.CRATE:
              stopIt = true;
              break;
            case TileType.BARREL: //Will remove 1 hp rigging it to explode. Explosion handled somewhere else?
            case TileType.ALEX:
            case TileType.CHAD:
            case TileType.GUN_GOON:
            case TileType.KUNG_FU_GOON:
              current.applyHit(1);
              stopIt = true;
              break;
          }
          
          _x-=1;
          
          if (stopIt == true){
            stopIt = false;
            break;
          }
        }
    }
  }

  void moveStrafeLeft()
  {
    Tile next, last;
    switch (_orientation) {
      
      case Orientation.N:
        next = _board.get(_x-1, _y);
        last = _board.get(_x-2, _y);
        switch (next.getType()) {
          case TileType.BLANK:
            _board.set (_x,_y,next);
            _x-=1;
            _board.set (_x,_y,this);
            break;
          default:
            //Do nothing, or stuck animation
            break;
        }
        break;
      case Orientation.E:
        next = _board.get(_x, _y-1);
        last = _board.get(_x, _y-2);
        switch (next.getType()) {
          case TileType.BLANK:
            _board.set (_x,_y,next);
            _y-=1;
            _board.set (_x,_y,this);
            break;
          default:
            //Do nothing, or stuck animation
            break;
        }
        break;
      case Orientation.S:
        next = _board.get(_x+1, _y);
        last = _board.get(_x+2, _y);
        switch (next.getType()) {
          case TileType.BLANK:
            _board.set (_x,_y,next);
            _x+=1;
            _board.set (_x,_y,this);
            break;
          default:
            //Do nothing, or stuck animation
            break;
        }
        break;
      case Orientation.W:
        next = _board.get(_x, _y+1);
        last = _board.get(_x, _y+2);
        switch (next.getType()) {
          case TileType.BLANK:
            _board.set (_x,_y,next);
            _y+=1;
            _board.set (_x,_y,this);
            break;
          default:
            //Do nothing, or stuck animation
            break;
        }
        break;
    }
  }

  void moveStrafeRight()
  {
    Tile next, last;
    switch (_orientation) {
      
      case Orientation.N:
        next = _board.get(_x+1, _y);
        last = _board.get(_x+2, _y);
        switch (next.getType()) {
          case TileType.BLANK:
            _board.set (_x,_y,next);
            _x+=1;
            _board.set (_x,_y,this);
            break;
          default:
            //Do nothing, or stuck animation
            break;
        }
        break;
      case Orientation.E:
        next = _board.get(_x, _y+1);
        last = _board.get(_x, _y+2);
        switch (next.getType()) {
          case TileType.BLANK:
            _board.set (_x,_y,next);
            _y+=1;
            _board.set (_x,_y,this);
            break;
          default:
            //Do nothing, or stuck animation
            break;
        }
        break;
      case Orientation.S:
        next = _board.get(_x-1, _y);
        last = _board.get(_x-2, _y);
        switch (next.getType()) {
          case TileType.BLANK:
            _board.set (_x,_y,next);
            _x-=1;
            _board.set (_x,_y,this);
            break;
          default:
            //Do nothing, or stuck animation
            break;
        }
        break;
      case Orientation.W:
        next = _board.get(_x, _y-1);
        last = _board.get(_x, _y-2);
        switch (next.getType()) {
          case TileType.BLANK:
            _board.set (_x,_y,next);
            _y-=1;
            _board.set (_x,_y,this);
            break;
          default:
            //Do nothing, or stuck animation
            break;
        }
        break;
    }
  }
}














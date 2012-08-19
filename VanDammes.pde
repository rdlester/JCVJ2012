abstract class VanDammes extends FiringCharacter {
  VanDammes(int type, Board board) {
    super(type, board);
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

  void actionRoundhouse()
  {
    // Here we'll scan each of the surrounding tiles, and have an action based on the type.
    Tile next, last;
    
    /* for (int count=0; count < 8; count++){
      switch (count){
        case 0:
          next = _board.get(_x, _y-1);
          last = _board.get(_x, _y-2);
          break;
        case 1:
          next = _board.get(_x+1, _y-1);
          last = _board.get(_x+, _y-2);
          break;
    */
    
    //NORTH Y-1
    next = _board.get(_x, _y-1);
    last = _board.get(_x, _y-2);
    switch (next.getType()) 
    {
      case TileType.BLANK:
        break;
      case TileType.BARREL:
        if (last.getType() == TileType.BLANK)
        {
          _y-=1;
          _board.set(_x,_y,last);
          _y-=1;
          _board.set(_x,_y,next);
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
    
    //NORTH-EAST x+1,y-1
    next = _board.get(_x+1, _y-1);
    last = _board.get(_x+2, _y-2);
    switch (next.getType()) 
    {
      case TileType.BLANK:
        break;
      case TileType.BARREL:
        if (last.getType() == TileType.BLANK)
        {
          _y-=1;
          _x+=1;
          _board.set(_x,_y,last);
          _y-=1;
          _x+=1;
          _board.set(_x,_y,next);
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
    
    //EAST x+1
    next = _board.get(_x+1, _y);
    last = _board.get(_x+2, _y);
    switch (next.getType()) 
    {
      case TileType.BLANK:
        break;
      case TileType.BARREL:
        if (last.getType() == TileType.BLANK)
        {
          _x+=1;
          _board.set(_x,_y,last);
          _x+=1;
          _board.set(_x,_y,next);
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
    
    //SOUTH-EAST x+1,y+1
    next = _board.get(_x+1, _y+1);
    last = _board.get(_x+2, _y+2);
    switch (next.getType()) 
    {
      case TileType.BLANK:
        break;
      case TileType.BARREL:
        if (last.getType() == TileType.BLANK)
        {
          _y+=1;
          _x+=1;
          _board.set(_x,_y,last);
          _y+=1;
          _x+=1;
          _board.set(_x,_y,next);
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
    
    //SOUTH Y-1
    next = _board.get(_x, _y+1);
    last = _board.get(_x, _y+2);
    switch (next.getType()) 
    {
      case TileType.BLANK:
        break;
      case TileType.BARREL:
        if (last.getType() == TileType.BLANK)
        {
          _y+=1;
          _board.set(_x,_y,last);
          _y+=1;
          _board.set(_x,_y,next);
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
    
    //SOUTH-WEST x-1,y+1
    next = _board.get(_x-1, _y+1);
    last = _board.get(_x-2, _y+2);
    switch (next.getType()) 
    {
      case TileType.BLANK:
        break;
      case TileType.BARREL:
        if (last.getType() == TileType.BLANK)
        {
          _y+=1;
          _x-=1;
          _board.set(_x,_y,last);
          _y+=1;
          _x-=1;
          _board.set(_x,_y,next);
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
    
    //WEST x-1
    next = _board.get(_x-1, _y);
    last = _board.get(_x-2, _y);
    switch (next.getType()) 
    {
      case TileType.BLANK:
        break;
      case TileType.BARREL:
        if (last.getType() == TileType.BLANK)
        {
          _x-=1;
          _board.set(_x,_y,last);
          _x-=1;
          _board.set(_x,_y,next);
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
    
    //NORTH-WEST x-1,y-1
    next = _board.get(_x-1, _y-1);
    last = _board.get(_x-2, _y-2);
    switch (next.getType()) 
    {
      case TileType.BLANK:
        break;
      case TileType.BARREL:
        if (last.getType() == TileType.BLANK)
        {
          _y-=1;
          _x-=1;
          _board.set(_x,_y,last);
          _y-=1;
          _x-=1;
          _board.set(_x,_y,next);
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
    
  }

  void actionRollingPistolsLeft()
  {
  }

  void actionRollingPistolsRight()
  {
  }
  
  void actionFlyingKick()
  {
  }
  
  void actionDivingShot()
  {
  }
}



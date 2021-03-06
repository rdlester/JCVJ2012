static class GoonsConsts {
  static final int KUNG_FU_NUM = 3;
  static final int GUN_NUM = 3;
  static final int NUM = KUNG_FU_NUM + GUN_NUM;
}

class GoonsBoard extends Board {
  Character[] _goons; // Only Goons
  Character _currentGoon;
  
  PImage _background = loadImage("images/Background.png");

  GoonsBoard() {
    super();
    _currentGoon = null;
  }

  void initBoard() {
    _grid = new Tile[BoardConsts.GRID_W+2][BoardConsts.GRID_H+2];
    _goons = new Character[GoonsConsts.NUM];
    for (int i = 0; i < GoonsConsts.KUNG_FU_NUM; i++) {
      _goons[i] = new KungFuGoon(this);
    }
    for (int i = GoonsConsts.KUNG_FU_NUM; i < GoonsConsts.NUM; i++) {
      _goons[i] = new GunGoon(this);
    }
    // First - set outer edge to indestructible
    
    
    for (int i = 0; i < BoardConsts.GRID_W+2; i++) {
      for (int j = 0; j < BoardConsts.GRID_H+2; j++) {
        if (i == 0 || j == 0 || i == BoardConsts.GRID_W+1 || j == BoardConsts.GRID_H+1) {
          _grid[i][j] = new IndestructibleTile(); // Fill outer ring with Indestructible tiles
        }
        else {
          _grid[i][j] = new BlankTile();
        }
      }
    }
    
    _grid[1][1] = new BarrelTile();
    _grid[3][1] = new VictoryTile();
    _grid[5][1] = new BarrelTile();
    _grid[6][1] = new VictoryTile();
    _grid[8][1] = new CrateTile();
    _grid[2][2] = _goons[0];
    _grid[5][2] = _goons[3];
    _grid[8][2] = new CrateTile();
    /*_grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]
    _grid[1][1]*/
  }
  
  boolean getReady() {
    for(int i = 1; i <= BoardConsts.GRID_W; i++) {
      for(int j = 1; j <= BoardConsts.GRID_H; j++) {
        if(_grid[i][j].isAnim()) {
          return false;
        }
      }
    }
    return true;
  }

  void playCard(Card c) {
    super.playCard(c);
    int player = c.getPlayer();
    if (player == Player.GOON) {
      if (_currentGoon.getType() == TileType.GUN_GOON) {
        _playedCard.execute((GunGoon)_currentGoon);
      }
      else if (_currentGoon.getType() == TileType.KUNG_FU_GOON) {
        _playedCard.execute((KungFuGoon)_currentGoon);
      }
    }
  }

  int pickGoon() {
    _currentGoon = null;
    while (_currentGoon == null) {
      int picked = floor(random(GoonsConsts.NUM));
      _currentGoon = _goons[picked];
    }
    return _currentGoon.getType();
  }
  
  void update() {
    
  }
  
  void draw() {
    image(_background, 0, 0);
    
    // Make sure to skip outer ring
    translate(BoardConsts.GRID_START_X, BoardConsts.GRID_START_Y);
    for (int i = 1; i <= BoardConsts.GRID_W; i++) { // row by row
      pushMatrix();

      for (int j = 1; j <= BoardConsts.GRID_H; j++) { // iterate down the columns
        pushStyle();
        get(i, j).draw();
        popStyle();
        translate(0, BoardConsts.TILE_H);
      }

      popMatrix();
      translate(BoardConsts.TILE_W, 0);
    }
    
    // Draw Animations
    getAlex().drawAnimation();
    getChad().drawAnimation();
    for (Character c : _goons) {
      c.drawAnimation();
    }
  }
}


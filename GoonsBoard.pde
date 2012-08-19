static class GoonsConsts {
  static final int KUNG_FU_NUM = 3;
  static final int GUN_NUM = 3;
  static final int NUM = KUNG_FU_NUM + GUN_NUM;
}

class GoonsBoard extends Board {
  Character[] _goons; // Only Goons
  Character _currentGoon;

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
      }
    }
  }

  void getGoon(int i) {
  }

  void playCard(int player) {
    super.playCard(player);
    if (player == Player.GOON) {
      if (_currentGoon.getType() == TileType.GUN_GOON) {
        _playedCard.execute((GunGoon)_currentGoon);
      } 
      else if (_currentGoon.getType() == TileType.KUNG_FU_GOON) {
        _playedCard.execute((KungFuGoon)_currentGoon);
      }
    }
  }

  Character pickGoon() {

    _currentGoon = null;
    while (_currentGoon == null) {
      int picked = floor(random(GoonsConsts.NUM));
      _currentGoon = _goons[picked];
    }
    return _currentGoon;
  }
  
  void update() {
    
  }
  
  void draw() {
    // Make sure to skip outer ring
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
  }
}


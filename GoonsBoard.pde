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
    _goons = new Character[GoonsConsts.NUM];
    for (int i = 0; i < GoonsConsts.KUNG_FU_NUM; i++) {
      _goons[i] = new KungFuGoon(this);
    }
    for (int i = GoonsConsts.KUNG_FU_NUM; i < GoonsConsts.NUM; i++) {
      _goons[i] = new GunGoon(this);
    }
    for (int i = 0; i < BoardConsts.GRID_W; i++) {
      for (int j = 0; j < BoardConsts.GRID_H; j++) {
        // Figure out what thing to place!
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
    
  }
}


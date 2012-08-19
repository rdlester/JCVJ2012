static class GoonsConsts {
  static final int KUNG_FU_NUM = 3;
  static final int GUN_NUM = 3;
}

class GoonsBoard extends Board {
  ArrayList<Character> _goons; // Only Goons
  
  GoonsBoard() {
    super();
  }
  
  void initBoard() {
    for(int i = 0; i < GoonsConsts.KUNG_FU_NUM; i++) {
      _goons.add(new KungFuGoon());
    }
    for(int i = 0; i < GoonsConsts.GUN_NUM; i++) {
      _goons.add(new GunGoon());
    }
    for (int i = 0; i < BoardConsts.GRID_W; i++) {
      for (int j = 0; j < BoardConsts.GRID_H; j++) {
        // Figure out what thing to place!
      }
    }
  }
}
